<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="SearchImage2.aspx.cs" Inherits="SkyServer.Help.Cooking.SearchImage2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Images and Spectra</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Using the Image List tool (<a href="../../../tools/chart/list.aspx" target="tools">Open in new window</a>)</h2>

<hr />

<ol>

  <li><p>Go to the <a href="../../../tools/chart/list.aspx" target="tools">Image List tool</a> (opens in new 
  window). From the astronomers' main page, look under <i>Advanced Tools</i>. From the public main page, look under 
  <i>SkyServer Tools</i>.</p></li>
  
  <li><p>You can use the textbox in the upper left of the form, just above <i>Cut and Paste ra/dec list</i>, to 
  get thumbnail images of a list of objects. Paste the list into the textbox in the upper left corner, in 
  this format: <em>name ra dec</em> (with spaces between). <i>name</i> can be anything you want; <i>ra</i> and 
  <i>dec</i> must be in decimal degrees.</p></li>
  
  <li><p>However, you can also fill in the Image List with results from an SQL search (also called a <i>query</i>), 
  allowing you to see thumbnail images of objects that meet your search criteria. To send query results to the 
  Image List tool, click the small <b>Use query to fill form</b> link above the textbox. </p></li>

</ol>

<hr />

<p><a href="searchimage3.aspx">Next: Submit a query to Image List</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="searchimage.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="searchimage3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
