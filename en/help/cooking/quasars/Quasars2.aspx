<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Quasars2.aspx.cs" Inherits="SkyServer.Help.Cooking.Quasars2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find data for quasars</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Quasars/Cosmology index</a></p>

<h2>Search for quasars (<a href="../../../tools/search/sqs.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<ol>

<li><p>Go to the <a href="../../../tools/search/sqs.aspx" target="tools">Spectroscopic Query Form</a> (link 
opens in new window). From the astronomers' main page, look under <i>Search Tools</i>.</p></li>

<li><p>In the <b>Limit number of output rows</b> textbox, enter the number of quasars you would like the 
search to return. If you want unlimited number of rows returned, enter <i>0</i>.</p></li>

<li><p>In the <b>Output Format</b> textbox, enter the format you want for your output. <i>HTML</i> will output 
results as a table in your browser. <i>CSV</i> output can be read by many graphing programs.</p></li>

<li><p>In the <i>Parameters</i> section, select what types of <b>Spectroscopy</b> and <b>Imaging</b> data you 
would like returned. <i>Typical</i> returns the most common parameters, including the redshift (z) and the 
r magnitude. You can select any parameters from the menu. To select more than one, hold down CTRL while clicking 
on each one.</p></li>

<li><p>You can use the <b>Filters</b> checkboxes to choose which filter names to return. The form will return only 
the names of the filters, not the images. You can then use the filter names as part of a query to the 
<a href="<%=globals.DasUrl%>" target="tools">Science Archive Server (SAS)</a> (link opens in new window).</p></li>

<li><p>Skip the <i>Position Constraints</i> options for now, so you can specify that you want only quasars. Under 
<i>Spectroscopy Constraints</i>, select both <b>QSO</b> and <b>HIZ_QSO</b>. This will ensure that the tool will 
only return results for quasars.</p></li>

<li><p>If you want to specify a redshift range, enter it in the <b>min</b> and <b>max</b> boxes of 
<i>redshift</i>.</p></li>

<li><p>If you want to specify a range of redshift confidence, enter it in the <b>min</b> and <b>max</b> boxes of 
confidence. <i>Confidence</i> is a number between 0 and 1; it is usually a good idea to limit spectroscopic 
searches to objects with a redshift confidence greater than 0.35.</p></li>

<li><p>If you want to specify quasars that were targeted in any specific way, select them from the 
<i>Target Flags</i> menu. See the guide <a href="../general/flags.aspx">How do I find out if SDSS's imaging data for an object are 
reliable?</a> to learn how to interpret flags.</p></li>

<li><p>Read on to learn how to specify other constraints, or click <b>Submit Request</b> to send your search 
to the database.</p></li>

<li><p>You will see your results<%if (globals.Access=="public") {%> in a new window<%}%>.</p></li>

</ol>

<p>You can also apply more constraints to your search, searching for positions or magnitudes. You can 
use an <a href="../../../tools/search/sql.aspx" target="tools">SQL search</a> (new window) to request other constraints, to give you 
any type of quasar sample that you want. See the <a href="../../howto/search">SQL Tutorial</a> for more 
on how to use SQL.</p>

<hr />

<p><a href="quasars3.aspx">Next: Search by position</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td><a href="quasars.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="quasars3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
</tr>

<tr>
  <td>
    <p><a href="../">Back to Cooking with Sloan main page</a><br />
    <a href="../../">Back to Help main page</a><br />
    <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a></p>
  </td>
</tr>

</table>
</div>
</asp:Content>
