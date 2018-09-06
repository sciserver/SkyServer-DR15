<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="StartedHome.aspx.cs" Inherits="SkyServer.Tools.Started.StartedHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<div id="title">Tool User Guides</div>

<div id="transp">
<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">
<tr><td><p>
<p>Welcome to the SkyServer tools pages!</p>

<p>SkyServer's tools allow you to access all publicly available data 
from the Sloan Digital Sky Survey, one of the largest surveys of the night 
sky ever made. You can use SDSS data to learn about the way the universe 
works, or even to do original scientific research!</p>

<p>The Getting Started pages will tell you what types of data are 
available on SkyServer, and which tools are best for accessing which types 
of data. These tools give you many different ways 
of looking at our data. Some tools also have help pages that will give you 
more specific information on how to use the tool.<p>

<h1>Types of Data</h1>

<p>SkyServer offers access to many different types of data, but 
most users will usually focus on four types: images, 
spectra, photometric data, and spectroscopic data. The table below shows 
what each type of data means:</p>

<table width=600 border=1 cellpadding=3 cellspacing=1>
  <tr>
    <td width=80>Images</td>
    <td ><p>Pictures of celestial objects, stored as .jpg or .fits files</p></td>
    <td width=200 align=center><img align=center src="images/sampleimage.jpg" width="200" height="160"></td>
  </tr>
  <tr>
    <td>Spectra</td>
    <td><p>Graphs of the amount of light emitted by an object at different 
    wavelengths. Spectra can be used to study the compositions and temperatures 
    of objects, as well as their distances from Earth.</p></td>
    <td align=center><img align=center src="images/samplespec.gif" width="200" height="160"></td>    
  </tr>
  <tr>
    <td>Photometric Data</td>
    <td><p>Various quantities measured from an object's image, such as its 
    brightness or size</p></td>
    <td align=center><img align=center src="images/photodata.jpg" width="200" height="160"></td>    
  </tr>
  <tr>
    <td>Spectroscopic Data</td>
    <td><p>Various quantities measured from an object's spectrum, such as 
    its spectral type or redshift.</p></td>
    <td align=center><img align=center src="images/specdata.jpg" width="200" height="160"></td>    
  </tr>
</table>

<p>To learn about the other types of data available on SkyServer, read 
through the <a href="../../help/browser/browser.aspx" target="help">Schema Browser</a>.</p>

<p></p>

<h1>Tools</h1>

<p>The table below gives a short description of each of SkyServer's tools, 
listed from the most simple and general to the most complex and specialized. 
The table also shows when you might use each tool, based on what information 
you know already and what information you want to find out. Click on the name of 
a tool for more information on what it does and how to use it.</p>

<a name="tools"></a>
<table width=600 border=1 cellpadding=3 cellspacing=1 id="list">
 <tr>
   <td width="80"align=center><em>Tool</em></td>
   <td align=center><em>What it Does</em></td>
   <td width="200" align=center><em>Use it when...</em></td>
 </tr>

 <tr>
   <td><a href="#list" onclick="window.open('places.aspx','popup','width=440,height=440,resizeable,scrollbars');">
   Famous Places</a></td>
   <td>Presents a gallery of beautiful images from the SDSS, with 
   links to information on each object.</td>
   <td>you want to see a few beautiful images SDSS has taken.</td>
 </tr>
 
 <tr>
   <td><p><a href="#list" onclick="window.open('scroll.aspx','popup','width=440,height=280,resizeable,scrollbars');">Scrolling Sky</a></p></td>
   <td><p>Lets you enjoy the sight of the sky as the SDSS telescope 
   sees it when scanning along its nightly cycle.</p></td>
   <td><p>you want to see how the sky looks to the SDSS telescope.</p></td>
 </tr>

 <tr>
   <td><p><a href="#list" onclick="window.open('getimg.aspx','popup','width=440,height=580,resizeable,scrollbars');">Get Images</a></p></td>
   <td><p>Lets you download images (organized by SDSS run-camcol-field) and spectra 
   (organized by spectrum and SDSS plate).</p></td>
   <td><p>you know the SDSS run-camcol-field number of 
   an image, or the plate-spectrum number of a spectrum, and you want to look at 
   or download the image or spectrum.</p></td>
 </tr>


 <tr>
   <td><p><a href="#list" onclick="window.open('chart.aspx','popup','width=440,height=580,resizeable,scrollbars');">Finding Chart</a></p></td>
   <td><p>Lets you create and print an astronomical finding chart for an object seen by the SDSS</p></td>
   <td><p>when you want to use SDSS images to help you find an object with your telescope, or 
   when you want a printout of an SDSS object.</p></td>
 </tr>

 <tr>
   <td><p><a href="#list" onclick="window.open('navi.aspx','popup','width=440,height=580,resizeable,scrollbars');">Navigate</a></p></td>
   <td><p>Lets you navigate through the sky by panning and zooming. When you 
   click on an object, you get a summary of its photometric data. You can also 
   save objects in a notebook and export them to a spreadsheet program 
   for later analysis.</p></td>
   <td><p>you are looking through the sky for objects to study.</p></td>
 </tr>

 <tr>
   <td><p><a href="#list" onclick="window.open('explore.aspx','popup','width=440,height=580,resizeable,scrollbars');">Explore</a></p></td>
   <td><p>Lets you look up all photometric and spectroscopic data for 
   individual objects.</p></td>
   <td><p>you know an object's ID or position and you want to look up 
   its data.</p></td>
 </tr>
 <tr>
   <td><p><a href="#list" onclick="window.open('search.aspx','popup','width=440,height=580,resizeable,scrollbars');">Radial/<br>Rectangular<br>Search</a></p></td>
   <td><p>Lets you search the database for objects near a certain 
   sky position (in radial or rectangular coordinates) or with certain 
   brightnesses.</p></td>
   <td><p>you want to find objects in one part of the sky.</p></td>
 </tr>
 <tr>
   <td><p><a href="#list" onclick="window.open('searchform.aspx','popup','width=440,height=300,resizeable,scrollbars');">Search Form</a></p></td>
   <td><p>Lets you select search requirements from menus to build up a simple search of the sky.</p></td>
   <td><p>you want to find many objects that meet simple criteria that you devise.</p></td>
 </tr>
 <tr>
   <td><p><a href="#list" onclick="window.open('sqlsearch.aspx','popup','width=440,height=580,resizeable,scrollbars');">SQL Search</a></p></td>
   <td><p>Lets you search the database for all objects that meet any criteria 
   you can think of, then returns whatever photometric or spectroscopic 
   data you request. The SQL search tool is the most powerful tool on SkyServer; 
   professional astronomers use a very similar tool in their research.</p></td>
   <td><p>you want to answer a specific astronomical research question 
   quickly.</p></td>
 </tr>
 <tr>
   <td><p><a href="#list" onclick="window.open('list.aspx','popup','width=440,height=580,resizeable,scrollbars');">Image List</a></p></td>
   <td><p>Displays thumbnail images for a list of objects (name,ra,dec), or for the 
   results of a SQL search.</p></td>
   <td><p>you want to quickly scan through a list of objects, or through the results of 
   your search.</p></td>
 </tr>
 <tr>
   <td><p><a href="#list" onclick="window.open('crossid.aspx','popup','width=440,height=480,resizeable,scrollbars');">Cross-ID</a></p></td>
   <td><p>Lets you upload a list of sky positions, then returns a list 
   of all SDSS objects near those positions.</p></td>
   <td><p>you have a list of sky objects from another astronomical 
   database, and you want to find all SDSS objects near each of your 
   objects.</p></td>
 </tr>
</table>

<h1>Other Resources</h1>

<ul>

<li><p><a href="../../help/">Help</a> gives you information that 
will help you understand how to use SkyServer. The Help section includes a glossary and a 
description of SDSS's data reduction algorithms.</p>

<li><p><a href="../../help/howto/search/default.aspx">How To Search</a> tells you how to use the SQL Search 
tool to look for data</p></li>

<li><p><a href="../../help/howto/graph/default.aspx">How To Graph</a> tells you 
how to graph and analyze data using Microsoft Excel.</p>


<li><p>The <a href="../../help/browser/browser.aspx">Schema Browser</a> explains how the SkyServer 
database is organized. Using the Schema Browser is absolutely essential to using the SQL Search tool.</p>

</ul>

</td>
</tr>
</table>
<P>
</div>
</asp:Content>
