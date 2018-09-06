//var skyqueryUrl = 'http://scitest01.pha.jhu.edu/skyquery/';
var xAuth = "";
var selectedQueue = "long";
var sampleQueries = [
    "Select top 10 ra,dec from  SDSSDR7:PhotoObj",
"SELECT s.objid, s.ra, s.dec, g.objid, g.ra, g.dec, x.ra, x.dec \n" +
"INTO twowayxmatch  \n" +
"FROM XMATCH( \n" +
"     MUST EXIST IN SDSSDR7:PhotoObjAll AS s  \n" +
"          WITH(POINT(s.ra, s.dec), ERROR(0.1, 0.1, 0.1)),  \n" +
"     MUST EXIST IN GALEX:PhotoObjAll AS g  \n" +
"          WITH(POINT(g.ra, g.dec), ERROR(0.2, 0.2, 0.2)),  \n" +
"     LIMIT BAYESFACTOR TO 1e3 \n" +
") AS x \n" +
"WHERE s.ra BETWEEN 0 AND 5 AND s.dec BETWEEN 0 AND 5  \n" +
"AND g.ra BETWEEN 0 AND 5 AND g.dec BETWEEN 0 AND 5 " 
];

var crossMatchQuery = [];


function init() {

    readCookie("Keystone");
    if (xAuth != "") {
        callServices();
    }
    
}


function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    //console.log(ca);
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) {
            var temp = c.substring(nameEQ.length, c.length);
            if (temp.indexOf("token") > -1)
                xAuth = temp.replace("token=", "");
            //console.log(xAuth);
            return c.substring(nameEQ.length, c.length);
        }
    }
    return null;
}


function callServices() {


    var datasetsUrl = skyqueryUrl + "Api/V1/Schema.svc/datasets";
    var tablesUrl = "";

    //update database dropdown
    skyQueryConnect(datasetsUrl, xAuth, "GET", "datasets");    

    //update tables dropdown menu on selecting database
    $(document).on('click', '#ListDataSets a', function () {
        //console.log("Selected Option:" + $(this).text());
        $('#ListDataSets a').removeClass('active');
        $(this).addClass('active');
        tablesUrl = datasetsUrl + "/" + $(this).text() + "/tables";
        skyQueryConnect(tablesUrl, xAuth, "GET", "tablelist");
        var listColumns = $('#ListColumns');
        $('#ListColumns').empty();
    });

    //update columns dropdown menu on table select
    $(document).on('click', '#ListTables a', function () {
        //console.log("Selected table Option:" + $(this).text());
        $('#ListTables a').removeClass('active');
        $(this).addClass('active');
        var columnsurl = tablesUrl + "/" + $(this).text() + "/columns";
        skyQueryConnect(columnsurl, xAuth, "GET", "columnlist");
    });
    callJobs('long');
    callSubmit();

    $('#quickList').change(function () {
        if ($(this).is(":checked")) {
            selectedQueue = "quick";
            callJobs('quick');
        } else {
            selectedQueue = "long";
            callJobs('long');
        }
        //$('#quickList').val($(this).is(':checked'));
    });

    /// select sample queries
    $(document).on('click', '#samples a', function () {
        var index = $(this).attr("tabindex");
        //console.log("Selected sample Option:" + index);//$(this).find(":selected").index());
        $("textarea#query").val(sampleQueries[index]);
    });
}

function callJobs(whichqueue) {
    //load Jobs 
    var jobsurl = skyqueryUrl + "Api/V1/Jobs.svc/queues/" + whichqueue + "/jobs";
    var numberOfJobs = $("#numberOfJobs").val().trim();
    if (numberOfJobs != "")
        jobsurl += "?Max=" + numberOfJobs

    //console.log(jobsurl);
    skyQueryConnect(jobsurl, xAuth, "GET", "jobs");
}

function callSubmit() {
    
    
    //submitJob
    $(document).on('click', "#submit", function () {                
        submitJob("long");
    });

    //runquick query
    $(document).on('click', "#quick", function () {        
        submitJob("quick");
    });

    // to open more information about skyquery apis
    $(document).on('click', "#info", function () {
        window.location = skyqueryUrl + "Apps/Api/Default.aspx?" + xAuth;
    });

    // to open more information about skyquery apis
    $(document).on('click', "#refresh", function () {
        //console.log("Test");
        callJobs(selectedQueue);
    });
    
}


function submitJob(whichqueue) {
   
    var jobsurl = skyqueryUrl + "Api/V1/Jobs.svc/queues/" + whichqueue + "/jobs";
    var obj = new Object();
    obj.query = $("#query").val();

    var queryObj = new Object();
    queryObj.queryJob = obj;

    var jsonString = JSON.stringify(queryObj);

    skyQueryConnect(jobsurl, xAuth, "POST",  whichqueue, jsonString);
}
// Update datasets 
function updateDropDown(response) {

    var temp = $.parseJSON(JSON.stringify(response));
    
    var mydbs = $('#ListDataSets');
    $('#ListDataSets').empty();
    $.each(temp, function (val, text) {
        $.each(text, function (val1, text1) {
            mydbs.append($("<a href=\"#\" class=\"list-group-item\">" + text1.name + "</a>").val(val1));
        });
    });
}

// update tables according to database selection
function updatetables(response) {
    //alert(JSON.stringify(response));
    var temp = $.parseJSON(JSON.stringify(response));
    
    var listTables = $('#ListTables');
    $('#ListTables').empty();
    $.each(temp, function (val, text) {
        $.each(text, function (val1, text1) {
            listTables.append($("<a href=\"#\" class=\"list-group-item\">" + text1.name + "</a>").val(val1));
        });
    });
}

function updateColumns(response) {
    //alert(JSON.stringify(response));
    var temp = $.parseJSON(JSON.stringify(response));    
    var listColumns = $('#ListColumns');
    $('#ListColumns').empty();
    $.each(temp, function (val, text) {
        $.each(text, function (val1, text1) {    
            listColumns.append($("<a href=\"#\" class=\"list-group-item\">" + text1.name + "</a>").val(val1));
        });
    });
}

/// This is to populate jobslist
function updateJobs(response) {
    //alert(JSON.stringify(response));
    var temp = $.parseJSON(JSON.stringify(response));
    //var mySelect = $('#bjobsList');
    //$('#bjobsList').empty();

    var rows = [];
    crossMatchQuery = [];

    $.each(temp, function (val, text) {       
        $.each(text, function (val1, text1) {            
            tablerow = "<tr>";
            $.each(text1, function (val2, text2) {
                var cls = "label label-default";
                var status = "<td><span class=\"" + getLabelCls(text2.status) + "\">" + text2.status + "</span></td>";
                var dbtb = "";
                if (typeof text2.output != 'undefined')
                     dbtb = text2.output.split(":");
                var link = skyqueryUrl + "Api/V1/Data.svc/" + dbtb[0] + "/" + dbtb[1] + "?token=" + xAuth;
                var dnlink = "";
                if (text2.output != undefined)
                    dnlink = "<a href=" + link + "  download><span> " + "save" + "</span></a>";

                dateCreated = getDateString(text2.dateCreated == undefined ? "" : text2.dateCreated, true, false);
                dateStarted = getDateString(text2.dateStarted == undefined ? "" : text2.dateStarted, true, false);
                dateFinished = getDateString(text2.dateFinished == undefined ? "" : text2.dateFinished, true, false);
                query = text2.query == undefined ? "" : text2.query
                queue = text2.queue == undefined ? "" : text2.queue


                rows.push({0: dateCreated, 1: dateStarted, 2: dateFinished, 3: queue, 4: status, 5: dnlink, 6: query});
                crossMatchQuery.push(query);

            });
            //mySelect.append(tablerow);


        });
    });


    if ($.fn.dataTable.isDataTable('#jobsTable')) {//trying to refresh the table
        var table = $("#jobsTable").DataTable();
        table.clear();
        table.rows.add(rows).draw(false);
    } else {

        var myTable = $("#jobsTable").DataTable(
            {
                "data": rows,
                "bFilter": true,// text search
                "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All "]],
                "stateSave": false,
                "oLanguage": {
                    "sLengthMenu": "_MENU_ rows per page"
                },
                "paging": true,
                "order": false, //[[0, 'desc']],//"order": [[1,'asc']],//sorts the columns "order": []
                "rowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                    // Row click
                    $(nRow).on('click', function () {
                        //console.log('Row Clicked. Look I have access to all params, thank You closures.', this, aData, iDisplayIndex, iDisplayIndexFull);
                        getSqlQuery(iDisplayIndexFull);
                    });
                }

            });
    }

    getSqlQuery(0);


}

function getSqlQuery(queryIndex) {

    var table = $("#jobsTable").DataTable();
    table.rows('').deselect();
    table.row(queryIndex).select();
    if (crossMatchQuery[queryIndex] != undefined)
        document.getElementById("crossMatchQuery").value = crossMatchQuery[queryIndex];
    else
        document.getElementById("crossMatchQuery").value = "";
}


function getLabelCls(status) {
    var cls = "";
    switch(status){
        case "completed": cls = "label label-success"; break;
        case "failed": cls = "label label-danger"; break;
        case "canceled": cls = "label label-warning"; break;
        case "waiting": cls = "label label-primary"; break;
        case "executing": cls = "label label-default"; break;
        case "timedout": cls = "label label-danger"; break;
        default:
            cls = ""; break;
    }
    return cls;
}

function updateJobDetails(id) {
    //alert(id);
}

function skyQueryConnect(url, authToken, method, caller, senddata) {

    $.ajax({
        url: url,
        dataType: "json",
        data : senddata,
        headers: { "Content-Type": "application/json", "Accept": "application/json", "X-Auth-Token": authToken },
        type: method,
        success: function (response) {
            
            if (caller == "datasets") {               
                updateDropDown(response);
            }
            else if (caller == "tablelist") {
                updatetables(response);
            }
            else if (caller == "columnlist") {
                updateColumns(response);
            }
            else if (caller == "jobs") {
                updateJobs(response);
            }
            else if (caller == "long" || caller == "quick") {               
                selectedQueue = caller;

                if (caller == "quick") { $('#quickList').prop('checked', true); callJobs(caller); }
                else
                    callJobs(caller);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //alert("Error when connecting with SkyQuery:\n\n" + errorThrown);
            console.log("Error when connecting with SkyQuery:\n" + errorThrown + "\n" + textStatus);
        }
    });
}

function testFunction() {

    $.ajax({
        url: skyqueryUrl + "Api/V1/Schema.svc/datasets",        
         
        dataType: "json",
       
        headers: { "Content-Type": "application/json", "Accept": "application/json", "X-Auth-Token": "61d7e192cc2e45c3aaa10541607b2e3c" },
        type: 'GET',
       
        success: function (response) {
            alert(JSON.stringify(response));
            //console.log(response);
        },
        error: function (data, errorThrown) {
            alert(errorThrown);
        }
    });
}

function getDateString(dateString, isForUSerDisplay, doAddTimeZone) {

    try {
        if (dateString != "" & dateString != null) {
            //dateString = dateString.replace("T", " ");
            date = new Date(dateString);

            var month = String(date.getMonth() + 1);
            if (month.length == 1)
                month = "0" + month;

            var day = String(date.getDate());
            if (day.length == 1)
                day = "0" + day;

            var hours = String(date.getHours());
            if (hours.length == 1)
                hours = "0" + hours;

            var minutes = String(date.getMinutes());
            if (minutes.length == 1)
                minutes = "0" + minutes;

            var seconds = String(date.getSeconds());
            if (seconds.length == 1)
                seconds = "0" + seconds;

            var milliseconds = String(date.getMilliseconds());
            milliseconds = ("000" + milliseconds).substr(-3, 3);

            var utcOffset = date.getTimezoneOffset();

            var utcOffsetHours = parseInt(utcOffset / 60.0);
            var utcOffsetMinutes = utcOffset - utcOffsetHours * 60;
            utcOffsetHours = String(utcOffsetHours)
            if (utcOffsetHours.length == 1)
                utcOffsetHours = "0" + utcOffsetHours;
            utcOffsetMinutes = String(utcOffsetMinutes)
            if (utcOffsetMinutes.length == 1)
                utcOffsetMinutes = "0" + utcOffsetMinutes;

            var timeZone = "";

            if (utcOffset > 0)
                timeZone += "+" + utcOffsetHours + "" + utcOffsetMinutes;
            else
                timeZone += "-" + utcOffsetHours + "" + utcOffsetMinutes;

            //var s = date.getUTCFullYear() + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds + "." + milliseconds + "" + timeZone;

            var s = "";

            if (isForUSerDisplay)
                s = date.getUTCFullYear() + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
            else
                s = date.getUTCFullYear() + "-" + month + "-" + day + "T" + hours + ":" + minutes + ":" + seconds

            if (doAddTimeZone)
                s = s + " " + timeZone;

            if (s.indexOf("NaN") >= 0)
                return "";
            else
                return s;

        } else {
            return "";
        }

    } catch (err) {
        return "";
    }

}


