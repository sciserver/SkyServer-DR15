<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="DocsHome.aspx.cs" Inherits="SkyServer.Help.Docs.DocsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Help</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="5">

<tr><td>

<p>Welcome to SkyServer! This site gives you access to all the data from the Sloan Digital Sky Survey (SDSS).
<%
if( globals.Access == "public" ) {
	Response.Write("Here, you will learn how to use exactly the same tools that professional astronomers use."); }
%>
</p>

<p>You are now viewing the catalog data from the Sloan Digital Sky Survey's <a href="<%=globals.SdssUrl%>" target="help">
Data Release <%=globals.ReleaseNumber%></a>. (link opens in a new window)</p>
<p>Use the links below, or the links to the left, to go to a help page:</p>

<h3>Start Here</h3>

<!--
<p> <a href="<%=url%>/news.aspx">Site News </a>lists the latest changes to the interface and data on this SkyServer site.</p>
-->

<p><a href="introduction.aspx">Start Here</a> gives you a quick overview of SDSS catalog data, and how to use the data</p> 
<!--
<p> <a href="datamodel.aspx">Data Organization</a> provides a description of the database schema (data model). </p>
<p> <a href="dataaccess.aspx">Data Access</a> describes the available data access tools. </p>
-->
<p><a href="../cooking/">Cooking with Sloan</a> consists of guides for doing common tasks with SDSS catalog data</p>

<p><a href="<%=globals.SdssUrl%>help/">FAQ</a> is frequently asked questions about the SDSS and its data</p>

<hr />

<h3>Guide to Searching for Data</h3>

<%
// Display the Search Form user guide for the public, or the Imaging/Spectro Query user guide for astronomers
// if( access == "public" ) {
//	Response.Write("<p> <a href=\"../../tools/search/form/guide.aspx\">Search Form User Guide </a> provides help on searching for data using the Search Form</p>");	
//	}
// else {
// 	Response.Write("<p> <a href=\"QS_UserGuide.aspx\"> Form Query User Guide </a> provides help on using the Imaging and Spectroscopic Query Form pages</p>");
// }
%>
<!-- Use this to debug the QS user guide if we need to:
<p><a href="QS_UserGuide.aspx">Form Query User Guide</a> and so on</p> 
-->


<p><a href="../howto/search">SQL Tutorial</a> is an introduction to Structured Query Language (SQL), its scientific uses, and its syntax</p>

<p><a href="sql_help.aspx">SQL in SkyServer</a> contains more detailed information about SQL, including advice making your queries run fast</p>

<p><a href="realquery.aspx">Sample SQL Queries</a> are many real-life examples of useful SQL queries</p>

<%
// Display Graphing Data (Excel) tutorial for public only
// if( access == "public" ) {
//	Response.Write("<p> <a href=\"../howto/graph\">Graphing and Analyzing Data</a> shows you how to use a graphing program (Excel) to do scientific analysis</p>");
// }
%>

<p> <a href="limits.aspx"> Query Limits </a> lists the timeouts and row limits in effect for the various query tools.</p>

<p><a href="../cooking/advice.aspx">Searching advice</a> provides some practical advice on how to search SDSS data</p>

<hr />

<h3>Important Reference Information</h3>

<p> <a href="intro.aspx">About the Database </a> gives an overview of the
catalog archive</p>

<p> <a href="tabledesc.aspx">Table Description</a> provides a description of the database tables</p>

<p> <a href="../browser/browser.aspx">Schema Browser </a> shows you what data you can find in the database</p>

<p> <a href="<%=globals.SdssUrl%>/help/glossary.php">Glossary <img src='../../images/offsite.png' alt='(offsite)' /></a> is a list of terms used on the site and in the SDSS</p>

<p> <a href="<%=globals.SdssUrl%>/algorithms/index.php">Algorithms <img src='../../images/offsite.png' alt='(offsite)' /></a> describes the SDSS's data reduction algorithms</p>

<!--

<p> <a href="webbrowsers.aspx">Web Browsers</a> shows what parts of the site are supported by which web browsers</p>

<p> <a href="known.aspx">Known Problems</a> lists known problems on this SkyServer site and in the SDSS data.</p>

<hr />
<h3>Detailed Reference Information</h3>

<p> <a href="../download/">Download  </a> lets you download selected papers and tools</p>

<p> <a href="<%=url%>/sdss/pubs/">SDSS Data Publications</a> is a link to publications that describe the SDSS data in more detail</p>
-->

<p> <a href="api.aspx">API</a> contains information on how to programatically access some of the SDSS services</p>

<!-- 

<p> <a href="sdssQA.aspx">sdssQA  </a> explains how to download and use the SDSSQuery Analyzer tool.</p> 

<p> <a href="sitelist.aspx">SkyServer Sites </a>lists the various SkyServer websites and physical locations, including mirror sites</p>

<p> <a href="<%=globals.LogUrl%>">SkyServer Traffic Page </a>takes you to the
central traffic logging site, where you can see up-to-the-hour usage and
traffic data.</p> 

-->

<hr />
<h3>Help Desk</h3>


<p> <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a> allows you to send an email to the SDSS Help Desk if you have a question or problem with the site</p>

<p>&nbsp;</p>

</td></tr>
</table>
</div>

</asp:Content>
