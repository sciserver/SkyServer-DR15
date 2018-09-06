<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Abell.aspx.cs" Inherits="SkyServer.Tools.Places.Abell" %>
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
<div id="title">Famous Places - Abell Clusters</div>

<div id="black">
<table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

<tr>
 <td colspan=2>
   <p>The <em>Abell Catalog of Galaxy Clusters</em> was published in 1957 by American Astronomer George Abell. Abell used plates from the Palomar Observatory Sky Survey (POSS) to identify 2,712 galaxy clusters.
   Of these clusters, 1,351 have been observed by the <a href="http://www.sdss.org/dr5" target="offsite">SDSS Data Release 5</a>.</p>
   
   <p>Most of the clusters in the <a href="page5.aspx">Clusters</a> Famous Places pages are Abell Clusters; six more are shown below. In each image, the largest galaxies belong to the Abell cluster. The clusters are listed in order of increasing redshift. Click one of the SDSS images to see the object in the Navigation tool.</p>
 </td>
</tr>

<tr valign=top>

	<td><% ResponseAux.pTable("abell2197",247.04807,40.89878,Response);%>
	Abell 2197
	</td>

	<td><%ResponseAux.pTable("abell2255", 258.1212, 64.09654, Response);%>
	Abell 2255
	</td>

</tr>

<tr valign="top">
<td>
	<%ResponseAux.pTable("abell1218", 169.7037, 51.73492, Response);%>
	Abell 1218</a>
</td>
<td>
	<% ResponseAux.pTable("abell1387", 177.19526, 51.61638, Response);%>
	Abell 1387

</td>
</tr>

<tr valign="top">
<td>
	<%ResponseAux.pTable("abell700", 131.50045, 36.96531, Response);%>
	Abell 700
</td>
<td>
	<%ResponseAux.pTable("abell1995", 223.20525, 58.06784, Response);%>
	Abell 1995
</td>
</tr>

<tr>
 <td colspan=2>
  <p>Click the "Abell Data" link below to see a CSV (comma-separated value) file containing locations for the 1,351 Abell clusters in DR5. Most spreadsheet programs can open CSV files. See SkyServer's <a href="../../help/howto/graph" target="help">Graphing and Analyzing Data</a> tutorial for Microsoft Excel instructions, or check the help pages of your spreadsheet program.<br>
  <font size="+2"><a href="abell.csv">Abell Data</a></font>
  </p>
 </td>
</tr>

<% ResponseAux.pLinks(Response);%>

</table>


<p>
</div>
<p>
</asp:Content>
