<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Cooking.aspx.cs" Inherits="SkyServer.Help.Download.Cooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<STYLE>
   .small {font-size:smaller}
</STYLE>
<div id="title">Cooking with Sloan: SDSS Data Demos</div>
<div id="transp">

<table WIDTH=640 border=0 cellspacing="5" cellpadding="5" bgcolor=#888888>
<tr><td bgcolor="#500040"><b>Presentations:</b></td></tr>
<tr><td bgcolor="#000040">
<table width="95%">
<!--
	<tr>
		<td></td>
		<td class="small"><b>Tool:</b></td>
		<td class="small">SDSS Query Analyzer (sdssQA)</td>
		<td align="right"><a href="sdssQA/default.aspx" class="small">Download</a></td>
	</tr>
-->

	<tr>
		<td colspan=3 align=left><p>Cooking with Sloan is a series of one-hour data demos 
		given at the summer 2006 AAS meeting in Calgary. These demos examine how to answer a 
		specific scientific question using data from the SDSS, which you can obtain through 
		the CAS (SkyServer). The links below will let you download each of the three 
		presentations.</p></td>
	</tr>
	<tr>
	  <td colspan=3>&nbsp;</td>
	</tr>
	<tr>
		<td></td>
		<td class="small"><b>Presentation:</b></td>
		<td class="small">Asteroid Weathering</td>
		<td align="right"><a href="asteroids.ppt" class="small">Download</a></td>
	</tr>
	<tr>
		<td></td>
		<td class="small"><b>Presentation:</b></td>
		<td class="small">Hypervelocity Stars</td>
		<td align="right"><a href="hypervelocity.ppt" class="small">Download</a></td>
	</tr>
	<tr>
		<td></td>
		<td class="small"><b>Presentation:</b></td>
		<td class="small">Color-Magnitude Diagram of Galaxies</td>
		<td align="right"><A href="cmd.ppt" class="small">
			Download</a></td>
	</tr>
</table>
</td></tr>
</table>
<p>&nbsp;<p>

<table WIDTH=640 border=0 cellspacing="5" cellpadding="5" bgcolor=#888888>
<tr><td bgcolor="#400040"><b>Abstracts:</b></td></tr>

<!--
<tr><td bgcolor="#000040">
	<h4>SDSS Query Analyzer</h4>
	<span class="small"><b>Author:</b> Nolan Li & Tanu Malik, JHU
	<br>
	<b>Date:</b> March 2004</span>
	<p class="small">
	sdssQA is a GUI SQL query tool to help compose SQL
	queries. It was inspired by the SQL Server Query Analyzer, 
	but runs as a Java application on UNIX, Macintosh, and
	Windows clients and is freely available from this web site. 
	It connects via ODBC/JDBC (for local use) and via HTTP or 
	SOAP for use over the Internet. 
	<p>
	<A HREF="sdssQA/default.aspx" class="small">Download sdssQA</A>
</td></tr>
-->
<tr><td bgcolor="#000040">
	<h4>Asteroid Weathering</h4>
	<span class="small"><b>Author:</b> Jordan Raddick, JHU
	<br>
	<b>Date:</b> June 2006</span>
	<p class="small">
	Learn how to use SDSS data to study how asteroids change as a result of their 
	environment in space
	<p>
	<A HREF="asteroids.ppt" class="small">Download</A>
</td></tr>

<tr><td bgcolor="#000040">
	<h4>Hypervelocity Stars</h4><p>
	<SPAN class=small>
	<b>Author:</b> Jordan Raddick, JHU<BR>
	<b>Date:</b> June 2006</span>
	<p class="small">
	Learn how to search through SDSS data to find extremely rare "hypervelocity stars," 
	which are escaping from our galaxy
	</p>
	<p>
	<a href="hypervelocity.ppt"><font size=-1>Download</font></a>
</td></tr>

<tr><td bgcolor="#000040">
	<h4>Color-Magnitude Diagram of Galaxies</h4>
	<p>
	<span class="small">
	<b>Author:</b> Jordan Raddick, JHU 
	<br>
	<b>Date:</b> June 2006</span>
	<p class="small">
    Learn how to collect a large sample of galaxies to make a color-
    magnitude plot to study galaxy evolution</p>
	<p>
	<A href="cmd.ppt">
	<FONT SIZE=-1>Download</font></A>
</td></tr>

</table>

</div>
</asp:Content>
