<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="CV.aspx.cs" Inherits="SkyServer.Help.Cooking.CV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cataclysmic Variables</div>
<div id="pdflink">
  <a href="swf/cv.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/cv.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Stars index</a></p>

<h2>How do I...</h2>

<h2>Find cataclysmic variables?</h2>

<hr />

<p>Many interesting objects are hidden among the SDSS data. One such object is a cataclysmic variable, a binary 
star pair in which the two stars are close together, and one star is a white dwarf. This guide comes from a 
modified form of a query by Dr. Paula Szkody at the  University of Washington, an expert in Cataclysmic Variables.</p>

<p>The query uses an <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> (link opens in new 
window) to search for cataclysmic variables (CVs) by their distinctive colors. You can adapt this query to search 
for other objects by their colors simply by changing the colors that the search requests. You can learn more about 
SQL from SkyServer's <a href="../../howto/search">SQL Tutorial</a>.</p>

<hr />

<p><a href="cv2.aspx">Next: Search for CVs by color</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="cv2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
