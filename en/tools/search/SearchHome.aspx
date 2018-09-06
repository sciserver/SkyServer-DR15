<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="SearchHome.aspx.cs" Inherits="SkyServer.Tools.Search.SearchHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<div id="title">Search</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>
<%if( (globals.Access == "public") ) {%>
You can search the SDSS database with a <em>query</em>. A query is a request for information. 
You specify what data you want, and what conditions you want the data to satisfy. For example, 
you might ask the database to return the positions of all stars brighter than a certain 
magnitude in a certain filter.
<%}
  else {
%>
You can search the SDSS database by using several predefined <em>queries</em> to find 
specific objects. The query pages take the information you enter and create a query 
in the Structured Query Language (SQL). You send this query to the database by 
clicking on the <em>Submit</em> button. The database returns the information 
matching the criteria you entered, in the format you requested. 
<%}%>
</td></tr>

<tr><td>
<h4>To search the database, select one of the following tools</h4>
<font size="-1">
<ul>
  <li><a href="radial.aspx">Radial</a>:
	&nbsp;Search the sky around a given point <%if( (globals.Access == "public") && (globals.ReleaseNumber > 3) ) {%>(<b>EASY</b>)<% }%>
  <li><a href="rect.aspx">Rectangular</a>:
	&nbsp;Search the sky in a rectangular region <%if( (globals.Access == "public") && (globals.ReleaseNumber > 3) ) {%>(<b>EASY</b>)<% }%>

<%	if( (globals.Access == "public") && (globals.ReleaseNumber > 3 && globals.ReleaseNumber < 8) ) { %>
 <%-- <li><a href="form/">Search Form</a>:
	&nbsp;Search the sky by selecting choices from an online form (<b>EASY</b>)
  <li><a href="../qbuilder">Query Builder</a>:
	&nbsp;Build a SQL query by clicking on various menus (<b>HARDER</b>)--%>
<%  }	%>
	
  <li><a href="sql.aspx">SQL</a>:
	&nbsp;Type in a SQL query directly <%if( (globals.Access == "public") && (globals.ReleaseNumber > 3) ) {%>(<b>HARDEST</b>)<% }%>


 <%if( (globals.Access == "public") ) {%>
  </ul>
 
  <h4>Search Tools for scientists</h4>
  
  <ul>
 <%  }	%>
 
 
  <li><a href="IQS.aspx">Imaging Query </a>:
	&nbsp;Form-based query on imaging data
  <li><a href="SQS.aspx">Spectro Query </a>:
	&nbsp;Form-based query on spectroscopic data
  <li><a href="IRQS.aspx">IR Spectro Query </a>:
	&nbsp;Form-based query on IR spectroscopic data

</ul>
<h4>The names and units of fields on the query pages</h4>
<ul>
  <li><em>ra, dec</em> are the sky coordinates of the search.
	<ul><li> They can be entered either in
	degrees or in the h:m:s, d:m:s notation.
	</ul>
  <li><em>radius</em> is the search radius for a radial query.
	<ul><li> It is measured in minutes of arc.</ul>
  <li><em>u,g,r,i,z</em> are the magnitudes of the objects in the SDSS.<br>
	<ul><li> These represent the fluxes of light measured in logarithmic units, through various wavebands
	from the ultraviolet to the infrared
	</ul>
</ul>

<h4>The output options and formats on the query pages</h4>
<ul>
	<li><em>Return:</em> the number of objects<br>
	  <ul>
		<li>Selecting <em>all</em> will return all objects<br>
		<li>Selecting <em>top N</em> will return the first N objects satisfying the query
	  </ul>
	<li><em>Format:</em> the output format<br>
	  <ul>
		<li>It can be <em>HTML</em>, when a formatted web page is returned<br>
		<li>It can be <em>CSV</em>, when a comma separated, unformatted text is returned, with one header line
			and subsequent objects in a new line, attributed separated by a comma<br>
		<li>It can be <em>XML</em>, not yet implemented
	  </ul>
</ul>
<%
if( globals.DasUrlBase.Length > 1 ) {
%>
	<h4>Getting FITS files from the <a href="<%= globals.DasUrl%>">SAS</a></h4>
	You can easily retrieve the raw FITS file data corresponding to your query using any of the CAS search tools. 
	If the necessary columns are included in the SELECT part of your query, the appropriate button will automatically 
	appear on the query results page (below the query results) to allow you to upload the appropriate information to 
    the <a href="<%= globals.DasUrl%>">SAS (Science Archive Server)</a>.  These columns are part of the default query in 
	each of the search tools, but if you modify the default query or enter your own query, be sure to include the 
	following columns: 
	<ul>
	<li><i>run</i>, <i>rerun</i>, <i>camcol</i>, <i>field</i> from the PhotoObj (or PhotoTag) tables if you want 
    imaging FITS data from the <a href="<%= globals.DasUrl%>">SAS</a>;</li>
	<li><i>plate</i>, <i>mjd</i>, <i>fiberid</i> from the SpecObj or SpecPhoto tables if you want FITS spectra from 
    the <a href="<%= globals.DasUrl%>">SAS</a>.</li>
	</ul>
<%
}
%>
</td></tr>
</table>

<P>

</div>
</asp:Content>
