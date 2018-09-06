<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="NGC.aspx.cs" Inherits="SkyServer.Tools.Places.NGC" %>
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
<div id="title">Famous Places - NGC Objects</div>

<div id="black">
<table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

<tr>
 <td colspan=2>
   <p>The <em>New General Catalog (NGC)</em> was published in 1888 by J. L. E. Dreyer, based on earlier observations by William and John Herschel. The NGC contains more than 7,800 objects, most of which are other galaxies.
   Of the 7,800 NGC objects, 591 have been observed by the SDSS. Most of the galaxies in the <a href="page1.aspx">Galaxies</a> and <a href="page2.aspx">Spirals</a> Famous Places pages are NGC objects; six more are shown below. Click one of the SDSS images to see the object in the Navigation tool. click the "SEDS page" link to see each object's NGC information page from the <a href="http://www.seds.org" target="offsite">Students for the Exploration and Development of Space</a>.</p>
 </td>
</tr>

<tr valign=top>

	<td><% ResponseAux.pTable("ngc99",5.99747,15.770428,Response);%>
	NGC99 is a fairly small spiral galaxy in Pisces.<br>
	<a href="http://spider.seds.org/ngc/ngc.cgi?NGC99" target="offsite">SEDS page</a>
	</td>

	<td><%ResponseAux.pTable("ngc2681", 133.386477, 51.313909, Response);%>
	NGC2681 is a large, bright galaxy in Ursa Major, with a bright nucleus.<br>
	<a href="http://spider.seds.org/ngc/ngc.cgi?NGC2681" target="offsite">SEDS page</a>
	</td>

</tr>

<tr valign="top">
<td>
	<%ResponseAux.pTable("ngc2713", 134.33544, 2.921312, Response);%>
	NGC2713 is a spiral galaxy in Hydra with loosely wound arms.<br>
	<a href="http://spider.seds.org/ngc/ngc.cgi?NGC2713" target="offsite">SEDS page</a>
</td>
<td>
	<% ResponseAux.pTable("ngc3440", 163.456165, 57.118647, Response);%>
	NGC3440 is a small irregular galaxy in Ursa Major.<br>
	<a href="http://spider.seds.org/ngc/ngc.cgi?NGC3440" target="offsite">SEDS page</a>

</td>
</tr>

<tr valign="top">
<td>
	<%ResponseAux.pTable("ngc5348", 208.546937, 5.2274552, Response);%>
	NGC5348 is an edge-on spiral galaxy in Virgo.<br>
	<a href="http://spider.seds.org/ngc/ngc.cgi?NGC5348" target="offsite">SEDS page</a>
</td>
<td>
	<%ResponseAux.pTable("ngc7108", 325.473941, -6.708839, Response);%>
	NGC7108 is a faint elliptical galaxy in Aquarius.<br>
	<a href="http://spider.seds.org/ngc/ngc.cgi?NGC7108" target="offsite">SEDS page</a>
</td>
</tr>

<tr>
 <td colspan=2>
  <p>Click the "NGC Data" link below to see a CSV (comma-separated value) file containing locations for the 591 NGC objects in DR2. Most spreadsheet programs can open CSV files. See SkyServer's <a href="../../help/howto/graph" target="help">Graphing and Analyzing Data</a> tutorial for Microsoft Excel instructions, or check the help pages of your spreadsheet program.<br>
  <font size="+2"><a href="ngc.csv">NGC Data</a></font><br>
  The NGC data is courtesy of astronomer Guy Maxim.</p>
 </td>
</tr>

<% ResponseAux.pLinks(Response);%>

</table>


<p>
</div>
<p>
</asp:Content>
