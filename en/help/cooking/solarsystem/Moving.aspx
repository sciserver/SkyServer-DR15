<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Moving.aspx.cs" Inherits="SkyServer.Help.Cooking.Moving" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Moving Objects</div>
<div id="pdflink">
  <a href="swf/moving.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/moving.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Solar System index</a></p>

<h2>How do I...</h2>

<h2>Find moving objects consistent with asteroids?</h2>

<hr />

<p>The SDSS is mostly (but not entirely!) a one-epoch sky survey. This makes it difficult to do 
solar system science with the catalog data as it appears in SkyServer. However, the SDSS has looked at the 
sky long enough that it has obviously found hundreds of thousands of moving objects. These moving objects can 
be found from the database to create a moving object sample.</p>

<hr />

<p><a href="moving2.aspx">Next: Use SQL to find moving objects</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="moving2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
