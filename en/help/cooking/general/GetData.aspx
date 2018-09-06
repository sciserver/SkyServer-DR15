<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetData.aspx.cs" Inherits="SkyServer.Help.Cooking.GetData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Data for Objects</div>
<div id="pdflink">
  <a href="swf/getdata.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/getdata.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>How do I...</h2>

<h2>Find data for all objects in a given RA/Dec/Magnitude/Absolute Magnitude range?</h2>

<hr />

<p>You can use the SDSS search tools to find all objects that meet certain criteria, such as position, 
magnitude, color, or absolute magnitude. For position, magnitude, and color, you can use the 
<a href="../../../tools/search/iqs.aspx" target="tools">Imaging Query Form</a> (link opens in a new 
window). For absolute magnitude (and any other criteria), you can write queries in 
<a href="../../../tools/search/sql.aspx" target="tools">SQL</a> (new window).</p>

<p>See the directions for using the Imaging Query Form on the next page to see how to use the form's general 
features. Then see the <i>RA and Dec</i> and <i>Magnitude</i> pages of this guide to learn how to search 
for those parameters. See the <i>Absolute Magnitude</i> page to learn how to use SQL to search for objects 
by absolute magnitude.

<hr />

<p><a href="getdata2.aspx">Next: Using the Imaging Query Form</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getdata2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
