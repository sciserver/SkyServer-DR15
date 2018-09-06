<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="Limits.aspx.cs" Inherits="SkyServer.Help.Docs.Limits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Query Timeouts and Row Limits</div>

<div id="transp">
<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">

<tr><td>
<p>
Due to the sheer size of the SDSS database, queries that search the
entire multi-TB database, or queries that are not formulated in the most efficient
way, can take a very long time to execute (hours).  To be fair to other users and
prevent the CAS from bogging down, the SkyServer search tools have built-in
timeouts and row limits (max. number of rows in query results).  These are listed 
below for each query tool.
<p>
There is also a limit on how many queries you can submit per minute from a given client.
This is to prevent crawlers from hogging the system by submitting several queries per
second and making the server unusably slow for other users.  Currently, you are allowed 
to submit <u><%=globals.QueriesPerMinute%> queries per minute</u>, i.e., if you submit one query, <u>you 
must wait at least <%=60/globals.QueriesPerMinute%> seconds before you submit the next one</u>.
<p>
If your query is timing out, please see the <a href="sql_help.aspx#optquery">Optimizing
Queries section</a> of the <a href="sql_help.aspx">SQL Intro Page</a>.
<%
if( globals.ReleaseNumber > 1 ) {
	Response.Write("<p>If you absolutely need to run a query that does not fit within these limits,\n");
	Response.Write("you can use the <a href=\""+globals.CasJobs+"\">Batch Query system (CasJobs)</a>, which lets\n");
	Response.Write("you run longer queries in separate queues and lets you maintain your own storage\n");
	Response.Write("space on the DB server (MyDB).\n");
}
%>
<p>
If none of these options work, we may be able to make special arrangements for you 
to obtain the data that you need.  Please contact the helpdesk in that case. 
<p>
<h3>Query Tool Timeouts and Row Limits</h3>
<table border=1 bgcolor=#222244 cellpadding=2 cellspacing=2>

<tr>
  <td class='h'>Tool/Page</td> 
  <td class='h'>Timeout (sec)</td> 
  <td class='h'>Row Limit</td> 
  <td class='h'>Remarks</td> 
</tr>

<tr>
  <td class='v'><a href="<%=url%>/tools/search/sql.aspx">SQL Search</a></td> 
  <td class='v' align=center><%=globals.SqlTimeout%></td> 
  <td class='v' align=center><%=globals.RowLimit%> </td> 
  <td class='v'>Browsers cannot render large outputs </td>
</tr>

<tr>
  <td class='v'><a href="<%=url%>/tools/crossid/">Object Crossid</a></td> 
  <td class='v' align=center><%=globals.CrossidTimeout%></td> 
  <td class='v' align=center><%=globals.RowLimit%> </td> 
  <td class='v'>Applies to both Upload and Speclist </td>
</tr>

<tr>
  <td class='v'><a href="<%=url%>/tools/search/IQS.aspx">Form Query</a></td> 
  <td class='v' align=center><%=globals.FormTimeout%></td> 
  <td class='v' align=center><%=globals.RowLimit%> </td> 
  <td class='v'>Imaging (IQS) and Spectro (SQS) </td>
</tr>

<tr>
  <td class='v'><a href="<%=url%>/tools/chart/">Visual Tools</a></td> 
  <td class='v' align=center><%=globals.ChartTimeout%></td> 
  <td class='v' align=center> NA </td> 
  <td class='v'>Finding, Navigate, Image Lists  </td>
</tr>

<tr>
  <td class='v'><a href="<%=url%>/help/download/sdssQA/">sdssQA</a></td> 
  <td class='v' align=center><%=globals.QaTimeout%></td> 
  <td class='v' align=center> No limit </td> 
  <td class='v'>Downloadable Java client </td>
</tr>
<%
if( globals.ReleaseNumber > 1 ) {
	Response.Write("<tr><td class='v'><a href=\""+globals.CasJobs+"\">CasJobs</a></td>\n");
	Response.Write("  <td class='v' align=center> No limit </td>\n");
	Response.Write("  <td class='v' align=center> No limit </td>\n");
	Response.Write("  <td class='v'>Batch Query Service </td>\n</tr>\n");
}
%>


<tr>
  <td class='v'>Default</td> 
  <td class='v' align=center><%=globals.DefTimeout%></td> 
  <td class='v' align=center><%=globals.RowLimit%> </td> 
  <td class='v'>Defaults when none of the above limits apply </td>
</tr>

</td></tr></table>
</div>
</asp:Content>
