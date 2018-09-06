<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Quasars4.aspx.cs" Inherits="SkyServer.Help.Cooking.Quasars4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find data for quasars</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Quasars/Cosmology index</a></p>

<h2>Search by redshift (<a href="../../../tools/search/sqs.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<p>Instead of, or in addition to, searching by position, you can also tell the Spectroscopic Query Form to 
search by redshift. To do this, use the <i>Spectroscopy Constraints</i> section. The default is no constraints 
(that is, to return quasars at all redshifts).</p>

<ol>

<li><p>First, select the <b>Redshift</b>. Enter the <b>minimum</b> and <b>maximum</b> redshift to search.</p></li>

<li><p>Enter the <b>Confidence</b> of the redshift measurement. Confidence is a number from 0 to 1, with 
higher numbers meaning more confidence that the redshift is correct. Generally it is a good idea to restrict 
your sample to objects with a redshift confidence of greater than 0.35.</p></li>

<li><p>Select the spectral <b>Classification</b>. For quasars, be sure to select both <i>QSO</i> and <i>HIZ_QSO</i>.</p></li>

<li><p>You can also search for the presence or absence of specific target<a href="../../docs/glossary.aspx?key=target" target="help"><img src="../../docs/images/glossary.gif" border="0" alt="Definition of target" /></a> 
flags.</p></li>

<li><p>When you have finished entering all your constraints, click <b>Submit Request</b>. The tool will return only 
the objects you asked for, in the output format you specified.</p></li>

<li><p>You will see your results<%if (globals.Access=="public") {%> in a new window<%}%>.</p></li>

<li><p>If you would rather search by magnitudes with an <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> 
(new window), be sure to search in the <span class="sml">specObj</span> or <span class="sml">specPhoto</span> tables, 
and remember that the SDSS object IDs are referred to as <span class="sml">bestObjID</span> in these tables.</p></li>

</ol>

<hr />

<p><a href="quasars5.aspx">Next: Search by magnitudes</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>

<tr>
      <td><a href="quasars3.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="quasars5.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
