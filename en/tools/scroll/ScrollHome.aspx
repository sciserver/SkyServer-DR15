<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="ScrollHome.aspx.cs" Inherits="SkyServer.Tools.Scroll.ScrollHome" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<div id="title">Scrolling sky</div>
<div id="transp">
<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">

<tr><td colspan=2><p>
	This page allows you to see how the sky is scrolling past our camera
	during an observation. By clicking on 
<!-- the stripe number in the table, you can watch
	a 2.5 degree wide area of the sky scrolling by, or by selecting
-->
	any of the run/camcol
	combinations, you can watch the sky at a 
<!-- much higher 
-->
	resolution of approximately
	1 arcseconds per pixel. You can stop the scrolling any time, by clicking on the small
	stop sign below the SDSS icon in the top left of the page (this may take a few seconds
	to respond).
</td></tr>

<tr><td colspan=2>
	<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<%
    using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
    {
        oConn.Open();
        writeAll(oConn);
    }
%>
	</table>
</td></tr>

<tr><td><p>
	The images from the SDSS project are organized into <em>stripes</em>. 
	These are long images, 24,000 pixels wide (2.5 degrees), and typically 
	over 1 million pixels long (120 degrees). The SDSS covers the northern 
	sky with 45 overlapping stripes. The stripes try to avoid the dust in 
	the plane of the Milky Way, as shown by the red areas on the celestial 
	sphere to the right.
	<p>
	Each stripe is merged from two <em>runs</em>, taken on separate nights.
	The telescope can complete only a single run in any given night: it takes 
	about 8 hours to complete one. Each run consists of 6 <em>camcols</em> 
	(camera columns), one corresponds to each array of CCD detectors of our 
	camera. Each camcol takes images in five colors.
	</td><td valign=top align=middle><img src="../images/sdss-globe.gif"><br>
	<img src="../images/sdss-camera.jpg">
</td></tr>

</table>

</div>
</asp:Content>