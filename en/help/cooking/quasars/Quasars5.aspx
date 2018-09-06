<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Quasars5.aspx.cs" Inherits="SkyServer.Help.Cooking.Quasars5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find data for quasars</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Quasars/Cosmology index</a></p>

<h2>Search by magnitudes (<a href="../../../tools/search/sqs.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<p>You can also tell the Spectroscopic Query Form to 
search by magnitudes. To do this, use the <i>Imaging Constraints</i> section. The default is no constraints 
(that is, to return quasars with any magnitudes).</p>

<ol>

<li><p>First, select the <b>Type</b> of magnitude on which you would like to search: <i>Petrosian</i>, <i>Model</i> 
(the better fit of a DeVaucouleurs and exponential profile), or <i>PSF</i>.</p></li>

<li><p>Next, enter the magnitudes you would like to search for in the <b>Magnitudes</b> textbox. You can enter 
constraints on any of the SDSS's five filters (<i>u</i>, <i>g</i>, <i>r</i>, <i>i</i>, <i>z</i>), and you can enter 
<b>minimums</b> and/or <b>maximums</b> for each value.</p></li>

<li><p>You can also search for specific colors using the <b>Colors</b> textboxes, or for specific object types with the 
<b>Obj Type</b> checkboxes.</p></li>

<li><p>You can also search for the presence or absence of specific flags. See the document <a href="../general/flags.aspx">How do 
I find out if SDSS's imaging data for an object are reliable?</a> to see what flags mean and how to use them.</p></li>

<li><p>When you have finished entering all your constraints, click <b>Submit Request</b>. The tool will return only 
the objects you asked for, in the output format you specified.</p></li>

<li><p>You will see your results<%if (globals.Access=="public") {%> in a new window<%}%>.</p></li>

<li><p>If you would rather search by magnitudes with an <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> 
(new window), add the following line to the WHERE block of your query:</p>

<table width="100%" class="code">
  <tr>
    <td>WHERE modelmag_g < 17</td>
  </tr>
</table>

<p>Substitute any of the filters, the operator (=, <, >, <=, >=, !=), and the value. You can also use BETWEEN 
to specify a range of magnitudes. If you want another type of magnitude (such as Petrosian), substitute that 
instead:</p>

<table width="100%" class="code">
  <tr>
    <td>WHERE petromag_g BETWEEN 15 and 17</td>
  </tr>
</table>

</li>

</li>

</ol>

<hr />

</td>
</tr>

<tr>
      <td><a href="quasars4.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      </td>
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
