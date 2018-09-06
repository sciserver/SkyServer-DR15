<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="CrossId.aspx.cs" Inherits="SkyServer.Help.Cooking.CrossId" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cross-Identify Objects</div>
<div id="pdflink">
  <a href="swf/crossid.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/crossid.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>How do I...</h2>

<h2>Upload my own data to see what the SDSS knows about those objects?</h2>

<hr />

<p>You can provide a list of your own objects, then see what those objects look like in 
the SDSS. This is especially useful when looking for optical counterparts to objects seen in 
other wavelengths. The tool to do this is the <a href="../../../tools/crossid/crossid.aspx" target="tools">Imaging Cross-Identification</a> 
tool (link opens in a new window). From the astronomers' home page, look under <i>Search Tools</i>. From the 
public home page, look under <i>SkyServer Tools</i>, then <i>Object Crossid</i>.</p>

<hr />

<p><a href="crossid2.aspx">Next: Using the Imaging Cross-ID tool</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="crossid2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
