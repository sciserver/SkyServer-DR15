<%@ Page Title="" Language="C#" MasterPageFile="~/en/tools/ToolsMaster.master" AutoEventWireup="true" CodeBehind="ChartHome.aspx.cs" Inherits="SkyServer.Tools.Chart.ChartHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<script>
  function launch(link, target) {
    var w = window.open(link, target);
    w.focus();
  }
</script>
<div id="title">Visual Tools</div>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td><p>
The visual exploration tools built for the SkyServer make it easy to visualize 
and explore detailed astronomical data in regions of the sky covered by the Sloan 
Digital Sky Survey. One can specify regions of interest by central position and size. 
An underlying web service then combines the relevant images to form a JPEG mosaic&#42; 
at the requested wide range of resolutions. One can overlay additional useful 
information, including:
<ul>

<li>boundaries of survey fields and aperture plates, 
<li>outlines of individual objects and data quality masks, and 
<li>locations of photometric and spectroscopic objects.

</ul>The tools can also search for lists of known objects, provide links for detailed 
information, and formulate new database queries. 
<p>&#42;<em>Note</em>: The Finding Chart, Navigate and Image Lists tools build mosaics on 
the fly by overlapping SDSS 
<a href="<%=globals.SdssUrl%>glossary.php#field">fields<img src="<%=url%>/images/offsite.png" alt=" (offsite link)" /></a> that may or may not belong to 
different <a href="<%=globals.SdssUrl%>glossary.php#run">runs<img src="<%=url%>/images/offsite.png" alt=" (offsite link)" /></a>. The field area displayed 
in the overlap region is determined by the (arbitrary) order in 
which the fields are being superimposed by the mosaicing software.  However,
the sky may have changed from one run to the next.  Observations of moving or 
variable objects like meteors, satellites, comets, variable stars, etc. may appear 
in one run but not in the other, or be different from one run to the other. We 
suggest that if you want to carefully examine any object(s) close to a field boundary, 
you should use either the <a href="<%=url%>/tools/getimg/fields.aspx">Get Image by 
Field</a> tool which displays the whole JPEG <a href="<%=globals.SdssUrl%>glossary.php#frame">frame<img src="<%=url%>/images/offsite.png" alt=" (offsite link)" /></a> 
for individual fields in each run, or get the FITS file from the 
<a href="<%=url%>/tools/explore/">Explorer</a> or the <a href="<%=globals.DasUrl%>">Science Archive Server<img src="<%=url%>/images/offsite.png" alt=" (offsite link)" /></a>.</p>
</td></tr>
<tr><td>
		<hr width="540" align="left">
<p>
<ul>

	<li id="chart"><a href="javascript:launch('../chart/chart.aspx','NAVIGATE')">Finding Chart</a><br>
		The page returns a JPEG image centered on (ra,dec), of size (height x width) where 
		the image is scaled to an arbitrary scale (scale). Various drawing options can be 
		specified (opt).  Please see <a href="#chart" onclick="window.open('../started/chart.aspx',
		'popup','width=440,height=580,resizeable,scrollbars');">Getting Started with Finding Chart</a>. <br>

	<li id="navi"><a href="javascript:launch('../chart/navi.aspx','NAVIGATE')">Navigate</a><br>
		This page provides easy navigation in the vicinity of a given point on the sky. One 
		can move around by clicking on the frame of the image, or on individual objects. A short 
		list of the basic properties and a magnified thumbnail image of the object nearest to 
		the selected point is then displayed. Please see <a href="#navi" onclick="window.open('../started/navi.aspx',
		'popup','width=440,height=580,resizeable,scrollbars');">Getting Started with Navigate</a>. <br>

	<li id="list"><a href='javascript:launch("../chart/list.aspx","IMGLIST")'>Image List</a><br>
		This page can generate thumbnails of SDSS images based upon a user defined 
		list of object positions. The images are linked to the other tools. The list can 
		also be specified with a query. Please see <a href="#list" onclick="window.open('../started/list.aspx',
		'popup','width=440,height=580,resizeable,scrollbars');">Getting Started with Image List</a>. <br>

	<li><a href='javascript:launch("../quicklook/quickobj.aspx","QUICKLOOK")'>Quick Look</a><br>
		The Quick Look Tool contains basic data for an object - its position, magnitude, and redshift

	<li><a href='javascript:launch("../explore/obj.aspx","EXPLORE")'>Explore</a><br>
		The Explore Tool contains a summary of an object, and interactive links to further detailed 
		properties, like its spectrum or neighbors, etc.

</ul>

<hr width="540" align="left">

</td></tr>
</table>
<p>
</div>
</asp:Content>
