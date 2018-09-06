function init() {
    callServices();
    //testFunction();
}

var baseURL = 'http://scitest01.pha.jhu.edu/skyquery/Api/V1/';
var xAuth = "f39933e625724d5eb184ef60a79cbebe";

function callServices() {

    var datasetsUrl = baseURL + "Schema.svc/datasets";
    var tablesUrl = "";

    //update database dropdown
    skyQueryConnect(datasetsUrl, xAuth, "GET", "datasets");

    //update tables dropdown menu on selecting database
    $(document).on('click', '#datasets li', function () {
        console.log("Selected Option:" + $(this).text());
        tablesUrl = datasetsUrl + "/" + $(this).text() + "/tables";
        skyQueryConnect(tablesUrl, xAuth, "GET", "tablelist");
    });

    //update columns dropdown menu on table select
    $(document).on('click', '#tablelist li', function () {
        console.log("Selected table Option:" + $(this).text());
        var columnsurl = tablesUrl + "/" + $(this).text() + "/columns";
        skyQueryConnect(columnsurl, xAuth, "GET", "columnlist");
    });


    //update tables dropdown menu on selecting database
    $(document).on('click', '#ListDataSets a', function () {
        console.log("Selected Option:" + $(this).text());
        tablesUrl = datasetsUrl + "/" + $(this).text() + "/tables";
        skyQueryConnect(tablesUrl, xAuth, "GET", "tablelist");
    });

    //update columns dropdown menu on table select
    $(document).on('click', '#ListTables a', function () {
        console.log("Selected table Option:" + $(this).text());
        var columnsurl = tablesUrl + "/" + $(this).text() + "/columns";
        skyQueryConnect(columnsurl, xAuth, "GET", "columnlist");
    });
    callJobs();
    callSubmit();
}

function callJobs() {
    //load Jobs 
    var jobsurl = baseURL + "Jobs.svc/queues/long/jobs";
    skyQueryConnect(jobsurl, xAuth, "GET", "jobs");
}

function callSubmit() {

    var jobsurl = baseURL + "Jobs.svc/queues/long/jobs";
    //submitJob
    $(document).on('click', "#submit", function () {

        var obj = new Object();
        obj.query = $("#query").val();

        var queryObj = new Object();
        queryObj.queryJob = obj;

        var jsonString = JSON.stringify(queryObj);

        skyQueryConnect(jobsurl, xAuth, "POST", "submitjob", jsonString);
    });
}

// Update datasets 
function updateDropDown(response) {

    var temp = $.parseJSON(JSON.stringify(response));
    var mySelect = $('#datasets');
    var mydbs = $('#ListDataSets');
    $.each(temp, function (val, text) {
        $.each(text, function (val1, text1) {
            mySelect.append($("<li><a tabindex=\"-1\" href=\"#\">" + text1.name + "</a></li>").val(val1));
            mydbs.append($("<a href=\"#\" class=\"list-group-item\">" + text1.name + "</a>").val(val1));
        });
    });
}

// update tables according to database selection
function updatetables(response) {
    //alert(JSON.stringify(response));
    var temp = $.parseJSON(JSON.stringify(response));
    var mySelect = $('#tablelist');
    var listTables = $('#ListTables');
    $.each(temp, function (val, text) {
        $.each(text, function (val1, text1) {
            mySelect.append($("<li><a tabindex=\"-1\" href=\"#\">" + text1.name + "</a></li>").val(val1));
            listTables.append($("<a href=\"#\" class=\"list-group-item\">" + text1.name + "</a>").val(val1));
        });
    });
}

function updateColumns(response) {
    //alert(JSON.stringify(response));
    var temp = $.parseJSON(JSON.stringify(response));
    var mySelect = $('#columnlist');
    var listColumns = $('#ListColumns');
    $.each(temp, function (val, text) {
        $.each(text, function (val1, text1) {
            mySelect.append($("<li><a tabindex=\"-1\" href=\"#\">" + text1.name + "</a></li>").val(val1));
            listColumns.append($("<a href=\"#\" class=\"list-group-item\">" + text1.name + "</a>").val(val1));
        });
    });
}

/// This is to populate jobslist
function updateJobs(response) {
    //alert(JSON.stringify(response));
    var temp = $.parseJSON(JSON.stringify(response));
    var mySelect = $('#bjobsList');
    $('#bjobsList').empty();
    var tablerow = "";
    $.each(temp, function (val, text) {
        $.each(text, function (val1, text1) {
            tablerow = "<tr>";
            $.each(text1, function (val2, text2) {
                $.each(text2, function (val3, text3) {
                    if (val3 != "query" && val3 != "name" && val3 != "comments" && val3 != "error") {
                        var cls = "label label-default";
                        if (val3 == "status") cls = getLabelCls(text3);
                        tablerow += "<td><span class=\"" + cls + "\">" + text3 + "</span></td>";
                        //console.log(cls);//(val2 + "::" + val3 + "::" + text3);
                    }
                });
                //tablerow += "<td><span class=\"label label-default\">" + text2.canCancel + "</span></td>";
                //tablerow += "<td><span class=\"label label-default\">" + text2.dateCreated + "</span></td>";
                //tablerow += "<td><span class=\"label label-default\">" + text2.dateStarted + "</span></td>";
                //tablerow += "<td><span class=\"label label-info\"><a tabindex=\"-1\" href=\"#\" onclick=\"updateJobDetails('" + text2.guid + "')\">" + text2.guid + "</a></span></td>";
                //tablerow += "<td><span class=\"label label-default\">" + text2.name + "</span></td>";
                //tablerow += "<td><span class=\"label label-default\">" + text2.queue + "</span></td>";
                //tablerow += "<td><span class=\"label label-default\">" + text2.status + "</span></td>";
                //if(text2.status != "completed") 
                //    tablerow += "<td><span class=\"label label-danger\"> Not Ready</span></td>";
                //else
                //    tablerow += "<td><span class=\"label label-success\">Ready</span></td>";
            });
            tablerow += "</tr>";
            mySelect.append(tablerow);
        });
    });
}
function getLabelCls(status) {
    var cls = "";
    switch (status) {
        case "completed": cls = "label label-success"; break;
        case "failed": cls = "label label-danger"; break;
        case "canceled": cls = "label label-warning"; break;
        case "waiting": cls = "label label-primary"; break;
        case "executing": cls = "label label-default"; break;
    }
    return cls;
}

function updateJobDetails(id) {
    alert(id);
}

function skyQueryConnect(url, authToken, method, caller, senddata) {

    $.ajax({
        url: url,
        dataType: "json",
        data: senddata,
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
            else if (caller == "submitjob") {
                callJobs();
            }
        },
        error: function (data, errorThrown) {
            alert(errorThrown);
        }
    });
}

function testFunction() {

    $.ajax({
        url: "http://scitest02.pha.jhu.edu/skyquery/Api/V1/Schema.svc/datasets",

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



