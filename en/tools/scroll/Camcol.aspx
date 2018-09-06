<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Camcol.aspx.cs" Inherits="SkyServer.Tools.Scroll.Camcol" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>SDSS Scrolling display</title>
    <style type="text/css">
      #logo   {position:absolute;visibility:visible;z-index:4;top: 0px;left:0px;}
      #stop   {position:absolute;visibility:visible;z-index:4;top: 4px;left:80px;}
      #disp   {position:absolute;visibility:visible;z-index:4;top:120px;left:4px}
      .t	  {COLOR: #aaaaff;FONT-FAMILY: arial,helvetica,sans-serif;FONT-SIZE:12pt;}
      .scroll {position:absolute;visibility:visible;left:0px;top:100px;z-index:0;}
    </style>
    <script type="text/javascript" src="../../../scroll.js"></script>
</head>
<body bgcolor="black">
    <form id="form1" runat="server">


<div id="logo"><img border="0" 
	src="../../images/sdssIVlogo.png" height="60"/></div>
<div id="stop"><a href="#" onclick="toggle();"><img border="0" 
	src="../images/stop.gif" alt="Start/stop scrolling" /></a></div>

<%
    using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
    {
        oConn.Open();
        show(oConn);
    } 
%>

<div id="s0" class="scroll"><img name="img0" src="<%=img%>"/></div>
<div id="s1" class="scroll"><img name="img1" src="<%=img%>"/></div>
<div id="s2" class="scroll"><img name="img2" src="<%=img%>"/></div>


    </form>

<script type="text/javascript">
    var is = new Is();
    var DELTA_T = 150;
    var EXT = "";
    function getFileName(s) { return PATH + s + EXT; }
    function resetStripe() { next = FIELD_MAX; }
    init(1);
</script>

</body>
</html>