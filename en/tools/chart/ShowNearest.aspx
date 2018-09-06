<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowNearest.aspx.cs" Inherits="SkyServer.Tools.Chart.ShowNearest" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../tools.css" rel="stylesheet" type="text/css" />
    <script src="naviClass.js"></script>
    <style>
	    a       {font-family:sans-serif;font-weight:bold;color:#000000;font-size:9pt;}
        .d		{font-size:9pt;font-family:sans-serif;color:#000000;}
        .c		{font-size:9pt;font-family:sans-serif;color:#88ff88;}
        #start  {position: absolute; left: 20px; top:475px;font-family:sans-serif;color:#000000;font-size:9pt}
        #qframe {position: absolute; left:  0px; top:20px;z-index:1;width:150px;}
	    #sframe {position: absolute; left:  0px; top:470px;z-index:1}
        #query  {position: absolute; left: 24px; top:37px;z-index:5;}
        #links  {position: absolute; left: 20px; top:355px;}
	    #thumbnail  {position: absolute; left: 20px; top:479px;z-index:5}
        #check  {position: absolute; left:  0px; top: 0px;visibility:hidden;width:12px;}
        #zimage {position: absolute; left:11px; top:211px;z-index:3;}
        #zframe {position: absolute; left: 0px; top:200px;z-index:5;width:150px;}
        #nearlabel {position: absolute; left:32px; top:6px;z-index:5;
			    width:150px;font-family:sans-serif;color:#000000;
			    font-size:9pt;z-index:10;width:110px;}
        #test  {position: absolute; left: 20px; top:150px;font-family:sans-serif;color:#000000;font-size:9pt}			
    </style>
    <script type="text/javascript">
        var check;
        function quicklook(id) {
            var url = "../quicklook/quickobj.aspx?id=" + id;
            var w = window.open(url, '_blank');
            w.focus();
        }
        function explore(id) {
            var url = "../explore/obj.aspx?id=" + id;
            var w = window.open(url, '_blank');
            w.focus();
        }
        function exploreAPOGEE(id) {
            var url = "../explore/summary.aspx?apid=" + id;
            var w = window.open(url, '_blank');
            w.focus();
        }
        function saveBook(id) {
            check.show();
            var url = "book.aspx?add=" + id;
            var frame = document.getElementById("test");
            frame.src = url;
        }
        function init() {
            check = new Div('check', 120, 428);
            //check.show();
            check.hide();
        }
        function showBook() {
            w = window.open("book.aspx", "POPUP");
            w.focus();
        }
        function showSTARTBall() {
            w = window.open("STARTFrame.html", "STARTBall", "width=300,height=325");
            w.focus();
        }
        function showSTARTBallHelp() {
            w = window.open("skymapshelp.aspx", "help", "width=800,height=600,resizeable,scrollbars");
            w.focus();
        }
        function recenter(ra_, dec_) {

            window.parent.document.getElementById("ra").value = ra_;
            window.parent.document.getElementById("dec").value = dec_;
            //alert(window.parent.document.getElementById("getImageId").value);
            window.parent.document.getElementById('getImageId').disabled = false;
            window.parent.document.getElementById("getImage").click();

            //var s = "navictrl.aspx?ra="+ra_+"&dec="+dec_;
            //s += "&scale=<%=(4*qscale)%>&opt=<%=opt%>";
    //top.frames.ctrl.location.href=s;
}
</script>
    <title></title>

</head>
<body onload="init()">

    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>

    <div id='nearlabel' ONMOUSEOVER="this.T_TEMP='2000';this.T_WIDTH='140';return escape('Data about the object you selected (marked with a green square')">Selected object</div>
	<div id='qframe'><img src='images/queryframe.gif' width="150" height="180"></div>
	<div id='check' ><img src='images/checkmark.gif' width="12" height="10"></div>

<%
    using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
    {
        oConn.Open();
        if (ra.HasValue)
        {
            makeTable(oConn);
            if (oRa != "")
            {
                makeGlass(oRa, oDec);
                makeLinks();
                decimal? specObjId = getSpecObjId(oConn, objId);
                if (specObjId.HasValue && specObjId != 0)
                {
                    makeThumbnail(specObjId??0);
                }
            }
        }
    }
%>

 <!--Iframe for shownearest test-->
<iframe id="test" name='test' width ="0" height="0" scrolling="no"  src="blank.html"/>	
</body>
</html>