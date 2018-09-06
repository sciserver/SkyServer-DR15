<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="SQL.aspx.cs" Inherits="SkyServer.Tools.Search.SQL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<style>
	#waiting {position:absolute;top:500;left:180;}
	td,p	{font-size:9pt; color:#000000}
	.tiny	{font-size:8pt; color:#000000}
	.med	{font-size:9pt; color:#000000}
	.qtitle {font-size:10pt;color:#ffffff;font-weight:bold;}
	.q	{font-size:9pt; background-color:#dddddd}
	.frame	{background-color:#bbbbbb;}
	a		{color:#000088;font-weight:normal;}
	.pos	{width:66px}
	.mag	{width:56px}
	.name	{width:200px}
	.txt	{width:260px}
</style>
<script src="naviclass.js"></script>

<div id="title">SQL Search</div>

<div id="transp">
<%--<%
// For public site, pop up results in a new window.
if( globals.Access == "public" ) {
%>
    <form method ="post" target="search" name="sql" action="x_sql.aspx">
<%
} else {
%>
    <form method ="post" name="sql" action="x_sql.aspx">
<%
}
%>--%>

    <%
// For public site, pop up results in a new window.
if( globals.Access == "public" ) {
%>
    <form method ="get" target="search" name="sql" action="x_results.aspx">
<%
} else {
%>
    <form method ="get" name="sql" action="x_results.aspx">
<%
}
%>

<script>
    function goToWindow() {
        var w = window.open("", 'search');
        w.focus();

    }

    function clearQuery() {
        document.getElementById("cmd").value = "";
    }

    function SetSyntax() {
        document.getElementById("syntax").value = "Syntax";
    }

    function UnsetSyntax() {
        document.getElementById("syntax").value = "NoSyntax";
    }

</script>
<input type="hidden" name="searchtool" id="searchtool" value="SQL" />
<input type="hidden" name="TaskName" id="TaskName" value="Skyserver.Search.SQL"/>
<input TYPE="hidden" VALUE="NoSyntax" id="syntax" name="syntax">       
<input type="hidden" name="ReturnHtml" id="ReturnHtml" value="true" />
         

<table BORDER=0 WIDTH="600"  cellpadding=1 cellspacing=1 bgcolor="#aaaaaa">
	
	<tr><td class='frame'>
	This page allows you to directly submit a <a href="<%=url%>/help/docs/sql_help.aspx">SQL (Structured Query Language)</a> 
	query to the SDSS database server.  You can modify the default query as you wish, or cut and paste a query from the <a 
	href="<%=url%>/help/docs/realquery.aspx">SDSS Sample Queries page</a>.
	<p><b>Please note: </b>
	To be fair to other users, queries run from SkyServer search
	tools are restricted in how long they can run and how much output they
	return, by <b>timeouts</b> and <b>row limits</b>.  Please see the <a
	href="<%=url%>/help/docs/limits.aspx">Query Limits help page.</a>
<%
	if( globals.ReleaseNumber > 1 ) {
		Response.Write("To run a query that is not restricted by a timeout or number of rows returned,");
		Response.Write(" please use the <a href=\""+globals.CasJobs+"\">CasJobs batch query service.</a>");
	}
%>
	<span style="float:right;margin-top:2px;">
		<input TYPE="button" VALUE="Clear Query" id="clear" name="clear" color="#00FFFF" onClick="clearQuery();"
			onmouseover="return escape('Press this button to clear the query window and enter your own query.  To undo clear, click mouse in query window and press Ctrl-Z (repeatedly).  To reset to default query, press Reset button.');"/>
	</span>
	</td></tr>
	<tr VALIGN=top><td align="center">
		<textarea cols=80 name=cmd id=cmd rows=13 wrap=virtual class='med'>
<%
	var query = Request.QueryString["cmd"];
	if( query == "" || query == null ) {
		query =  "-- This query does a table JOIN between the imaging (PhotoObj) and spectra\n";
		query += "-- (SpecObj) tables and includes the necessary columns in the SELECT to upload\n";
		query += "-- the results to the SAS (Science Archive Server) for FITS file retrieval.\n";
		query += "SELECT TOP 10\n";
		query += "   p.objid,p.ra,p.dec,p.u,p.g,p.r,p.i,p.z,\n";
		query += "   p.run, p.rerun, p.camcol, p.field,\n";
		query += "   s.specobjid, s.class, s.z as redshift,\n";
		query += "   s.plate, s.mjd, s.fiberid\n";
		query += "FROM PhotoObj AS p\n";
		query += "   JOIN SpecObj AS s ON s.bestobjid = p.objid\n";
		query += "WHERE \n";
		query += "   p.u BETWEEN 0 AND 19.6\n";
		query += "   AND g BETWEEN 0 AND 20";
	}
	Response.Write( query );
%>

</textarea> 
	</td></tr>
<!--
	<tr><td>
		<table BORDER=0 WIDTH="100%" >
		  <tr>
			<td ALIGN=left width="10%" class="qtitle">Format</td>
			<td width="30%" class="q"><input name=format value="html" type=radio class="box" CHECKED>HTML</td>
			<td width="30%" class="q"><input name=format value="xml"  type=radio class="box">XML</td>
			<td width="30%" class="q"><input name=format value="csv"  type=radio class="box">CSV</td>
			</tr>

		</table>
	</td></tr>
-->
	<tr><td>
		<table width="100%"><tr>
		<td width="10%">
<%
    if (globals.Access == "public")
    {
%>
<table>
    <tr><td><input id=submit type=submit value="Check syntax" onmouseover="return escape('Press this to check SQL syntax.');" onclick="SetSyntax(); goToWindow();"><br /></td></tr>
    <tr> <td> </td></tr><tr> <td> </td></tr><tr> <td> </td></tr><tr> <td> </td></tr>
    <tr><td><input id=submit type=submit value="Submit query" style="font-weight:bold" onmouseover="return escape('Press this to submit the query to the server.');" onclick="UnsetSyntax(); goToWindow();"><br /></td></tr>
</table>
<%
    }
    else
    {
%>
<table>
    <tr><td><input id=submit type=submit value="Check syntax" onmouseover="return escape('Press this to check SQL syntax.');" onclick="SetSyntax(); goToWindow();"><br /></td></tr>
    <tr> <td> </td></tr><tr> <td> </td></tr><tr> <td> </td></tr><tr> <td> </td></tr>
    <tr><td><input id=submit type=submit value="Submit query" style="font-weight:bold" onmouseover="return escape('Press this to submit the query to the server.');" onclick="UnsetSyntax(); goToWindow();"><br /></td></tr>
</table><% 
    } 
%>
		</td>
		<td class='frame'>
			<table BORDER=0 WIDTH="100%" >
			  <tr>
				<td ALIGN=left class="qtitle">Output Format</td>
				<td nowrap class="q"><input name=format value="html" type=radio class="box" checked>HTML</td>
				<td nowrap class="q"><input name=format value="xml"  type=radio class="box">XML</td>
				<td nowrap class="q"><input name=format value="csv"  type=radio class="box">CSV</td>
                <td nowrap class="q"><input name=format value="json"  type=radio class="box">JSON</td>
                <td nowrap class="q"><input name=format value="votable"  type=radio class="box">VOTable</td>
                <td nowrap class="q"><input name=format value="fits"  type=radio class="box">FITS</td>
                <td nowrap class="q" onmouseover="return escape('Executes the query and stores the result in a table in the CasJobs MyDB database. If the table name entry is empty, then a default name will be given.');"><input name=format value="mydb"  type=radio class="box"> MyDB <i><em><strong><sup><font color="red">NEW!</font></sup></strong> </em></i></td>
                
				</tr>
                <tr>
                    <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                    <td nowrap class="q">Table name <input id=TableName name=TableName VALUE="" SIZE="10"></td>
                </tr>
			</table>
		</td>
		<td width="10%">
		<input TYPE="reset" VALUE="Reset " id="reset" name="reset" color="#00FFFF" onmouseover="return escape('Press this to revert the page to initial settings.');">
		</td>
		</tr>
		</table>
	</td></tr>
	<tr VALIGN=top><td><p>
<%
if( globals.Access == "public" ) {
%>    
    <span>
    To find out more about the database schema use the 
    <a target="POPUP" href="<%= url+"/help/browser/browser.aspx" %>">
    Schema Browser</a>.</span>
<%
} else {
%>
    <span>
    To find out more about the database schema use the 
    <a href="<%= url+"/help/browser/browser.aspx" %>">
    Schema Browser</a>.</span>
<%
}
%>
	<p>
	For an introduction to the Structured Query Language (SQL), please see 
	the 
<%  if( globals.Access == "public" ) { %>
		<a href="../../help/howto/search">Searching for Data</a> How-To tutorial. 
<%  } else { %>	
		<a  href="../../help/docs/sql_help.aspx">SQL Intro</a> help page. 
<% } %>	
	In particular, 
	please read the <a href="<%=url%>/help/docs/sql_help.aspx#optquery">Optimizing Queries</a> 
	section.
  	<p>
<%  
    if( globals.DasUrlBase.Length > 1 ) 
    {
%>
	The inclusion of the imaging and spectro columns for <a href="<%= globals.DasUrl %>">SAS</a> upload in your query (as in the
	default query on this page) will ensure that when you press <b>Submit</b>, the appropriate 
	button(s) are displayed on the query results page to allow you to upload the necessary 
	information to the <a href="<%= globals.DasUrl %>">SAS</a> to retrieve the FITS file data corresponding to your CAS query. The 
	imaging columns needed for upload to the <a href="<%= globals.DasUrl %>">SAS</a> are <i>run</i>, <i>rerun</i>, <i>camcol</i>, and 
	<i>field</i>. The spectroscopic columns needed are <i>plate</i>, <i>mjd</i>, <i>fiberid</i>, 
	and optionally <i>sprerun</i> (the latter requires a join with the PlateX table). 
<%
    }
%>
	</td></tr>

  
</table>
</form>
</div>

</asp:Content>
