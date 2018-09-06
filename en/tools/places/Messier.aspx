<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Messier.aspx.cs" Inherits="SkyServer.Tools.Places.Messier" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<style>
  .fpl	{background-color:#3366cc;}
  .nn	{color:#00ff00;}
   td	{font-size:10pt;}
   a {color:#3366cc;border-color:3366cc;};
   span {color:#00ff00;}
   #black {position:absolute;left:200px;top:175px;}
</style>
<div id="title">Famous Places - Messier Objects</div>

<div id="black">
<table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

<tr>
 <td colspan=2>
   <p>The <em>Messier Catalog</em> was complied from 1758 to 1782 by French astronomer Charles Messier. He was a comet hunter; his catalog a list of faint, fuzzy objects that were often mistaken for comets. The Messier catalog contains more than 100 objects - galaxies, star clusters, nebulae, and others. Today, most Messier objects are easy to find with a small telescope. The Sloan Digital Sky Survey's Data Release 2 contains six Messier objects, shown below. Click on each picture to see the object in the Navigation tool. click the "SEDS page" link to see each object's Messier information page from the <a href="http://www.seds.org" target="offsite">Students for the Exploration and Development of Space</a>.</p>
 </td>
</tr>

<tr valign=top>

	<td><% ResponseAux.pTable("m2",323.36003,-0.82154,Response);%>
	M2 is a globular cluster, an old cluster of stars just outside the Milky Way. The cluster is so dense that the SDSS camera can't distinguish individual stars in its center.<br />
        <a href="http://messier.seds.org/m/m002.html" target="offsite">SEDS page</a>
	</td>

	<td><%ResponseAux.pTable("m77", 40.66961, -0.0133, Response);%>
	M77 is a spiral galaxy, one of the largest in Messier's catalog. It was also one of the first galaxies to be recognized as spiral.<br />
        <a href="http://messier.seds.org/m/m077.html" target="offsite">SEDS page</a>
	</td>

</tr>

<tr valign="top">
<td>
	<%ResponseAux.pTable("m97", 168.69614, 55.02091, Response);%>
	M97, also known as the Owl Nebula, is a planetary nebula. Planetary nebulae form when stars like the Sun eject their outer layers to become white dwarfs. Planetary nebulae don't last very long (they are the shortest stage of stellar evolution), so there are relatively few in the Milky Way at any time.<br />
    <a href="http://messier.seds.org/m/m097.html" target="offsite">SEDS page</a>
</td>
<td>
	<% ResponseAux.pTable("m102", 226.62158, 55.76315, Response);%>
	M102 is a lenticular (armless spiral) galaxy. Messier apparently made a mistake recording the galaxy's coordinates, so some versions of the Messier catalog don't include it.<br />
    <a href="http://messier.seds.org/m/m102.html" target="offsite">SEDS page</a>

</td>
</tr>

<tr valign="top">
<td>
	<%ResponseAux.pTable("m108", 167.8768, 55.67332, Response);%>
	M108 is a spiral galaxy. Its long, narrow shape makes it easy to spot with a small telescope.<br />
    <a href="http://messier.seds.org/m/m108.html" target="offsite">SEDS page</a>
</td>
<td>
	<%ResponseAux.pTable("m109", 179.39937, 53.37548, Response);%>
	M109 is a barred spiral galaxy - note the faint bar running NW-SE through the galaxy's center.<br />
    <a href="http://messier.seds.org/m/m109.html" target="offsite">SEDS page</a>
</td>
</tr>

<tr>
 <td colspan=2>
  <p>Click the "Messier data" link below to see a CSV (comma-separated value) file containing data for the six Messier objects in DR2. Most spreadsheet programs can open CSV files. See SkyServer's 
<a href="../../help/howto/graph" target="help">Graphing and Analyzing Data</a> tutorial for Microsoft Excel instructions, or check the help pages of your spreadsheet program.<br>
  <font size=+2><a href="messier.csv">Messier data</a></font></p>
 </td>
</tr>

<% ResponseAux.pLinks(Response);%>

</table>


<p>
</div>
<p>
</asp:Content>
