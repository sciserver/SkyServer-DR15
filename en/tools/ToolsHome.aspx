<%@ Page Title="" Language="C#" MasterPageFile="ToolsMaster.master" AutoEventWireup="true" CodeBehind="ToolsHome.aspx.cs" Inherits="SkyServer.Tools.ToolsHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">

<div id="title">Data Access Tools</div>

<div id="transp">
<table WIDTH="640" border="0" cellspacing="3" cellpadding="3">
<tr><td>
<a href="started/">Getting Started</a> tells you what types of 
data you can find on SkyServer, what data each of the tools will 
return, and how you can best use the tools to study the sky.<p>

<a href="places/">Famous Places</a> presents a gallery of beautiful 
images, various large galaxies, and some of the most 
distant quasars ever discovered.<p>

<p>
<a href="getimg/">Get Images</a> lets you download of individual
images and spectra at various zoom levels. Go here if you want to
save a nice picture for a screen background.<p>

<p>
<a href="scroll/">Scrolling Sky</a> lets you enjoy the sight 
of the sky moving on the screen as the SDSS telescope
sees it when it scans along on its nightly cycle.<p>

<p>
<a href="chart/chart.aspx">Visual Tools</a>
<ul>
<li>
<a href="chart/chart.aspx">Finding Chart</a> returns a JPEG image centered on <i>(ra,dec)</i>, of size <i>(height x width)</i>
where the image is scaled to an arbitrary scale <i>(scale)</i>. Various drawing options can be specified <i>(opt)</i>.
<li>
<a href="chart/navi.aspx">Navigate</a> lets you interactively navigate the sky, by clicking and zooming.
<li>
<a href="chart/list.aspx">Image List </a> is a cutout service that
generates small JPEG images for up to 1000 user-provided positions on the sky.
<li>
<a href="quicklook/quickobj.aspx">Quick Look</a> lets you view basic data for an object, such as its position, magnitude, and redshift

<li>
<a href="explore/">Explore</a>
lets you interactively explore
the various properties of individual objects.
</ul>

<p>
<a href="search/">Search</a> allows you to 
search the database for sky positions, objects with a 
certain brightness, and and various other criteria.
You can even enter free-format SQL queries, or use a simple form to search the database.

<p>

<a href="crossid/">Object Crossid</a> allows you to upload
search the database for sky positions, objects with a 
a list of object positions, and returns the SDSS objects
which are within a certain radius of those positions.
A few simple upload formats are supported.

<!--p>
    <a href="crossmatch/">CrossMatch using SkyQuery</a> 
    This  tool allows you to browse existing datasets and tables. Use this information 
    to run cross match between two catalogs at runtime and download the results.
    Internally it uses SkyQuery , a state of art cross match engine and its web services.
    User also can monitor all the queries submitted. 
</p-->
<%
if( globals.ReleaseNumber > 1 ) {
    Response.Write("<p>\n<a href=\""+globals.CasJobs+"\" target=\"CASJOBS\">CasJobs</a> allows you to ");
    Response.Write("submit unlimited SQL queries in batch mode and save query results in your personal database (MyDB).");
}
%>

<p>
<a href="../help/">Help</a> is provided for those who would
like to understand more about these tools, using SQL, and the properties of the objects stored
in our database.

<p>
<a href="../help/download/">Download</a> contains a few publications which explain
our data in much more detail, and a few tools that can be ran on the
user's computer, like the sdssQA, an advanced query tool written in Java.
<p>

</td>
</tr>
</table>
<P>
</div>
</asp:Content>