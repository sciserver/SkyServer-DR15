var search = false;
function gotochart(ra, dec) {
    var s = "../chart/chart.aspx?ra=" + ra + "&dec=" + dec;
    var w = window.open(s, "_blank");
    w.focus();
}
function gotonavi(ra, dec) {
    var s = "../chart/navi.aspx?ra=" + ra + "&dec=" + dec;
    var w = window.open(s, "_top");
    w.focus();
}

function setSDSS(id) {
    var s = "setSDSS.aspx?id=" + id;
    var w = window.open(s, "POPUP", "width=240,height=220");
    w.focus();
}
function setEq(ra, dec) {
    var s = "setEq.aspx?ra=" + ra + "&dec=" + dec;
    var w = window.open(s, "POPUP", "width=240,height=220");
    w.focus();
}
function setSid(sid) {
    var s = "setSid.aspx?sid=" + sid;
    var w = window.open(s, "POPUP", "width=240,height=220");
    w.focus();
}
function setId(id) {
    var s = "setId.aspx?id=" + id;
    var w = window.open(s, "POPUP", "width=240,height=220");
    w.focus();
}
function setPlfib(sid) {
    var s = "setPlfib.aspx?sid=" + sid;
    var w = window.open(s, "POPUP", "width=240,height=220");
    w.focus();
}
function loadSummary(id) {
    parent._top.document.location = "summary.aspx?id=" + id;
}
function showNotes() {
    var s = "../chart/book.aspx";
    var w = window.open(s, "POPUP");
    w.focus();
}
function framePrint() {
    window.print();
    /*
    var pr = (window.print) ? 1 : 0;
    var da = (document.all) ? 1 : 0;
    var mac = (navigator.userAgent.indexOf("Mac") != -1);
    if (pr && da) {		// IE5
        parent._top.focus();
        window.print();
    } else if (pr) {	// NS4
        parent._top.print();
    } else {
        alert("Sorry, your browser does not support this feature");
    }
    */
}
function saveBook(id) {
    var url = "../chart/book.aspx?add=" + id;
    var frame = document.getElementById("test");
    frame.src = url;
    //	w = window.open(url, "BOOK","width=100,height=100");
    //	w.close();
}

function padHex(a, m) {
    var h = Number(a).toString(16);
    var s = "";
    if (h.length < m) {
        for (var i = 0; i < m - h.length; i++)
            s += "0";
    }
    s += h;
    return s;
}

function callNameResolver() {
    $.ajax({
        type: "GET",
        url: "http://vaodev.stsci.edu/portal/Mashup/Mashup.asmx/invoke",
        dataType: ($.browser.msie) ? "text" : "xml",
        data: 'request={"service":"Mast.Name.Lookup","format":"xml","params":{"input":"' + document.getElementById('searchName').value + '"},"timeout":10,"page":1,"pagesize":100}',
        success: function (temp) {
            //document.getElementById('getImageId').disabled = false;
            if (typeof temp == "plain") {
                alert(temp);
            } else {
                xml = temp;
                $(xml).find('resolvedCoordinate').each(function () {
                    var ra1 = $(this).find('ra').text();
                    var dec1 = $(this).find('dec').text();
                    ra = ra1;
                    dec = dec1;
                    $('#searchRA').val(ra1);
                    $('#searchDec').val(dec1);
                    //resubmit();
                });
            }
        },
        error: function () {
            if (jQuery.trim(objtext).length > 0) {
                alert("Could not resolve name: " + objtext);
            }
        }
    });
}

function resolveName() {
    var name = $('#searchName').val();
    $.ajax({
        type: "GET",
        url: "../Resolver.ashx?name=" + name,
        success: function (response) {
            if (response.indexOf("Error:") == 0) {
                alert(response);
            }
            else {
                var s = response.split('\n');
                $('#searchName').val(s[0].substring(6));
                //$('#searchRA').val(s[1].substring(4));
                //$('#searchDec').val(s[2].substring(5));
                var windowPage = "summary.aspx";
                window.location = windowPage + '?ra=' + s[1].substring(4) + '&dec=' + s[2].substring(5);

            }
        },
        error: function () {
            alert("Error: Could not resolve name.");
        }
    });
}

function resolveCoords() {
    var ra = $('#searchRA').val();
    var dec = $('#searchDec').val();
    $.ajax({
        type: "GET",
        url: "../Resolver.ashx?ra=" + ra + "&dec=" + dec,
        success: function (response) {
            if (response.indexOf("Error:") == 0) {
                alert(response);
            }
            else {
                var s = response.split('\n');
                $('#searchName').val(s[0].substring(6));
                $('#searchRA').val(s[1].substring(4));
                $('#searchDec').val(s[2].substring(5));
            }
        },
        error: function () {
            alert("Error: Could not resolve coordinates.");
        }
    });
}

function press_ok(kind) {
    var windowPage = "summary.aspx";
    var f = (document.layers) ? document.ctrl.document.forms[0] : document.forms[0];
    switch (kind) {
        case 'name':
            //callNameResolver();
            break;
        case "objid":
            //window.location = windowPage + '?id=' + f.searchObjID.value;
            break;
        case "radec":
            setra2()
            setdec2()
            //alert(document.getElementById("searchRA").value.toString());
            //window.location = windowPage + '?ra=' + f.ra.value + '&dec=' + f.dec.value;
            break;
        case "sdss":
            var a = document.getElementById('searchSDSS').value.toString().split("-");
            if (a.length != 5) {
                alert('The SDSS Id has 5 parts,\n Run-Rerun-Camcol-Field-Obj\n');
                return false;
            }
            //var rerun = Number(a[1]) + 2048;  // skyversion=1
            //var rerun = Number(a[1]) + 4096;  // skyversion=2
            //var run = Number(a[0]);
            //var camcol = Number(a[2]);
            //var field = Number(a[3]);
            //var obj = Number(a[4]);
            //var cf = 8192 * camcol + field;

            //var s = "0x";
            //s += padHex(rerun, 4);
            //s += padHex(run, 4);
            //s += padHex(cf, 4);
            //s += padHex(obj, 4);

            //window.location = windowPage + '?id=' + s //Number(s).toString(10);
            document.getElementById('run').value = a[0];
            document.getElementById('rerun').value = a[1];
            document.getElementById('camcol').value = a[2];
            document.getElementById('field').value = a[3];
            document.getElementById('obj').value = a[4];
            //window.location = windowPage + '?run=' + a[0] + '&rerun=' + a[1] + '&camcol=' + a[2] + '&field=' + a[3] + '&obj=' + a[4]
            document.getElementById("form5PART").submit();
            break;
        case "specid":
            //var ID = parseFloat(f.searchSpecID.value)
            var ID = parseFloat(document.getElementById('searchSpecID').value)
            if (isNaN(ID) || document.getElementById('searchSpecID').value.indexOf("+") > -1) {
                document.getElementById('apid').value = document.getElementById('searchSpecID').value;
                //window.location = windowPage + '?apid=' + (f.searchSpecID.value);
            }
            else {
                document.getElementById('sid').value = document.getElementById('searchSpecID').value;
                //window.location = windowPage + '?sid=' + f.searchSpecID.value;
            }
            document.forms["formSPEC"].submit();
            break;
        case "plfib":
            //window.location = windowPage+'?plate=' + f.searchPlate.value + '&mjd=' + f.searchMJD.value + '&fiber=' + f.searchFiber.value;
            break;
        default:
            alert('Not supported');
            break;
    }
    return false;
}

function toggleSearch() {
    if (search) {
        document.getElementById("search").style.display = "none";
        document.getElementById("content").style.position = "absolute";
        document.getElementById("content").style.top = "0px";
        document.getElementById("content").style.left = "135px";
        search = false;
    }
    else {
        document.getElementById("content").style.position = "absolute";
        document.getElementById("content").style.top = "100px";
        document.getElementById("content").style.left = "135px";
        document.getElementById("search").style.display = "block";
        search = true;
    }
}


function setra() {
    var s_ra = String(document.getElementById('searchRA').value);
    var v;
    if ($.isNumeric(s_ra)) {
        v = s_ra;
        v = v % 360;
        if (v < 0) v += 360;

        document.getElementById('searchRA').value = v;
    }
    return false;
}

function setra2() {
    var s_ra = String(document.getElementById('ra').value);
    var v;
    if ($.isNumeric(s_ra)) {
        v = s_ra;
        v = v % 360;
        if (v < 0) v += 360;

        document.getElementById('ra').value = v;
    }
    return false;
}


//------------------------------------
// set and validate the dec value
//------------------------------------
function setdec() {

    var s_dec = String(document.getElementById('searchDec').value);
    var v;
    if ($.isNumeric(s_dec)) {
        v = parseFloat(s_dec);
        if (isNaN(v)) v = 0.0;
        //if (v<-90) v= -90;
        //if (v>90) v= 90;
        var OldRa = parseFloat(document.getElementById('searchRA').value)
        if (v < -90 || v > 90) {
            v = v % 360;					// brings dec within the circle
            if (v < 0) {
                v = v + 360     // only allows positive dec values
            }
            if (v > 90 & v < 270) { // if dec is at the other side of the poles
                document.getElementById('searchRA').value = (OldRa + 180) % 360 // go 1/2 way around the globe
                v = 180 - v
            }
            if (v >= 270) { // if dec is at this side from the south pole
                v = v - 360
            }
        }

        document.getElementById('searchDec').value = v;
    }
    return false;
}

function setdec2() {

    var s_dec = String(document.getElementById('dec').value);
    var v;
    if ($.isNumeric(s_dec)) {
        v = parseFloat(s_dec);
        if (isNaN(v)) v = 0.0;
        //if (v<-90) v= -90;
        //if (v>90) v= 90;
        var OldRa = parseFloat(document.getElementById('ra').value)
        if (v < -90 || v > 90) {
            v = v % 360;					// brings dec within the circle
            if (v < 0) {
                v = v + 360     // only allows positive dec values
            }
            if (v > 90 & v < 270) { // if dec is at the other side of the poles
                document.getElementById('ra').value = (OldRa + 180) % 360 // go 1/2 way around the globe
                v = 180 - v
            }
            if (v >= 270) { // if dec is at this side from the south pole
                v = v - 360
            }
        }

        document.getElementById('dec').value = v;
    }
    return false;
}
