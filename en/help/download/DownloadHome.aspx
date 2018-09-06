<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="DownloadHome.aspx.cs" Inherits="SkyServer.Help.Download.DownloadHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<STYLE>
   .small {font-size:smaller}
</STYLE>
<div id="title">Download</div>
<div id="transp">

<table WIDTH=640 border=0 cellspacing="5" cellpadding="5" bgcolor=#888888>
<tr><td bgcolor="#500040"><b>Contents:</b></td></tr>
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
		<td></td>
		<td class="small"><b>Tool:</b></td>
		<td class="small">SDSS Command-Line SQL tool (sqlcl) </td>
		<td align="right"><a href="sqlcl/default.aspx" class="small">Download</a></td>
	</tr>
	<tr>
		<td></td>
		<td class="small"><b>Tool:</b></td>
		<td class="small">GalaxyExplorer: a 3D visualization tool</td>
		<td align="right"><a href="gex2/default.aspx" class="small">Download</a></td>
	</tr>
	<tr>
		<td></td>
		<td class="small"><b>Paper:</b></td>
		<td class="small">The SDSS SkyServer– Public Access to the SDSS	Data</td>
		<td align="right"><A href="http://research.microsoft.com/apps/pubs/default.aspx?id=69896" class="small">
			Download</a></td>
	</tr>
	<tr>
		<td></td>
		<td class="small"><b>Paper:</b></td>
		<td class="small">Designing and Mining Multi-Terabyte Astronomy Archives...</td>
		<td align="right"><a href="http://research.microsoft.com/apps/pubs/default.aspx?id=68553" class="small">
			Download</a></td>
	</tr>
	<tr>
		<td></td>
		<td class="small"><b>Presentations:</b></td>
		<td class="small">Cooking with Sloan</td>
		<td align="right"><a href="cooking/" class="small">
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
	<h4>Command-Line SQL Tool</h4>
	<span class="small"><b>Author:</b> Tamas Budavari, JHU
	<br>
	<b>Date:</b> April 2003</span>
	<p class="small">
	sqlcl is a command-line SQL query tool to help compose SQL
	queries. It is a simple tool written in Python that let's
	you submit queries with the minimum of fuss. 
	<p>
	<A HREF="sqlcl/default.aspx" class="small">Download sqlcl</A>
</td></tr>

<tr><td bgcolor="#000040">
	<h4>GalaxyExplorer: a 3D visualization tool</h4><p>
	<SPAN class=small>
	<b>Author:</b> Szalay, Tamas<BR>
	<b>Date:</b> Jan 2002</span>
	<p class="small">
	This tool enables an interactive, video game-like 
	fly through of the 3D galaxy distribution in the Sloan Digital Sky Survey.
	This tool runs under Windows, requires DirectX8.0 or higher, 
	and a graphics card supporting 3D.
	</p>
	<p>
	<a href="gex2/default.aspx"><font size=-1>Download GalaxyExplorer</font></a>
</td></tr>

<tr><td bgcolor="#000040">
	<h4>The SDSS SkyServer – Public Access to the Sloan Digital Sky Survey 
	Data</h4>
	<p>
	<span class="small">
	<b>Author:</b> Szalay, Alexander ; Gray, Jim ; Thakar, Ani ; 
	Kunszt, Peter Z. ; Malik, Tanu ;
	<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	Raddick, Jordan ; Stoughton, Christopher ;
	VandenBerg, Jan 
	<br>
	<b>Date:</b> November 2001</span>
	<p class="small">
	The SkyServer provides Internet access to the public 
	Sloan Digital Sky Survey (SDSS) data for both astronomers 
	and for science education. This paper describes the SkyServer 
	goals and architecture. It also describes our experience 
	operating 	the SkyServer on the Internet. The SDSS data is 
	public and well-documented so it makes a good test platform 
	for research on database algorithms and performance. 
	This appeared as a Microsoft Technical Report, MS-TR-2001-104.</p>
	<p>
	<A href="http://research.microsoft.com/apps/pubs/default.aspx?id=69896">
	<FONT SIZE=-1>Download MS-TR-2001-104</font></A>
</td></tr>

<tr><td bgcolor="#000040">
	<h4>Designing and Mining Multi-Terabyte Astronomy Archives: 
		The Sloan Digital Sky Survey</h4><p>
	<SPAN class=small>
	<b>Author:</b> Szalay, Alexander S. ; Kunszt, Peter ; Thakar, 
	Ani ; Gray, Jim ; Slutz, Donald ; Brunner, Robert J.
	<BR>
	<b>Date:</b> June 1999 (revised February 2000)</span>
	<p class="small">
	The archive will enable astronomers to explore the data interactively. Data 
	access will be aided by multidimensional spatial and attribute indices. The data 
	will be partitioned in many ways. Small tag objects consisting of the most 
	popular attributes will accelerate frequent searches. Splitting the data among 
	multiple servers will allow parallel, scalable I/O and parallel data analysis. 
	Hashing techniques will allow efficient clustering, and pair-wise comparison 
	algorithms that should parallelize nicely. Randomly sampled subsets will allow 
	debugging otherwise large queries at the desktop. Central servers will operate 
	a data pump to support sweep searches touching most of the data. The anticipated 
	queries will require special operators related to angular distances and 
	complex similarity tests of object properties, like shapes, colors, velocity 
	vectors, or temporal behaviors. These issues pose interesting data management 
	challenges.</p>
	<p class="small">
	The paper describes our vision for the SkyServer, dated about a year before 
	we started to build the production system. 	This appeared as a Microsoft 
	Technical Report, MS-TR-99-30.</p>
	<p>
	<A href="http://research.microsoft.com/apps/pubs/default.aspx?id=68553">
	<FONT SIZE=-1>Download MS-TR-99-30</font></A>
</td></tr>

<tr><td bgcolor="#000040">
	<h4>Cooking with Sloan</h4><p>
	<SPAN class=small>
	<b>Author:</b> Jordan Raddick
	<BR>
	<b>Date:</b> June 2006</span>
	<p class="small">
	These presentations describe how to use SDSS data obtained through the CAS to accomplish 
	specific scientific tasks.
	<p>
	<A href="cooking/">
	<FONT SIZE=-1>Download</font></A>
</td></tr>


</table>

</div>
</asp:Content>
