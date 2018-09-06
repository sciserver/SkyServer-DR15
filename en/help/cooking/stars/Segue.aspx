<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Segue.aspx.cs" Inherits="SkyServer.Help.Cooking.Segue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="pdflink">
  <a href="swf/segue.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/segue.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Stars index</a></p>

<h2>How do I...</h2>

<h2>Find star spectra from the SDSS’s SEGUE survey?</h2>

<hr />

<p>The SDSS's <a href="http://www.sdss.org/segue/aboutsegue.html" target="offsite">SEGUE (Sloan Extension for 
Galactic Understanding and Exploration</a> - link opens in new window) is an extension of the 
original SDSS designed to map the plane of the Milky Way. SEGUE measures spectra of stars. You can access 
information the SEGUE spectra by running an <a href="../../../tools/search/sql.aspx" target="tools">SQL query</a> 
on SkyServer. You can access the spectra themselves by using the <a href="../../../tools/chart/list.aspx" target="tools">Image List</a> 
and <a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tools (all links open in the same new window).</p>

<hr />

<p><a href="segue2.aspx">Next: Using SQL to search for stars with SEGUE spectra</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="segue2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
