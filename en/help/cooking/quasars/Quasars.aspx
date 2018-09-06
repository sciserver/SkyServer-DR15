<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Quasars.aspx.cs" Inherits="SkyServer.Help.Cooking.Quasars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find data for quasars</div>
<div id="pdflink">
  <a href="swf/quasars.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/quasars.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Quasars/Cosmology index</a></p>

<h2>How do I...</h2>

<h2>Find data for quasars?</h2>

<hr />

<p>The SDSS has measured images and spectra for about <%=globals.NQuasar %> quasars. You can get complete data for these 
quasars, including their photometric and spectroscopic data, as well as their images and spectra. You can 
return various types of photometric and spectroscopic data, including magnitudes and redshifts.</p>

<p>To get magnitudes and redshift, see the directions for using the <a href="../../../tools/search/sqs.aspx" target="tools">Spectroscopic Query Form</a> 
below (tool opens in new window). You can also find data for quasar candidates as found in SDSS photometric data, 
even if they were not observed spectrally, by doing a color cut. See the <a href="../../docs/realquery.aspx#qsoimg" target="help">sample query about 
quasars in imaging</a> (new window) to see how to find quasars by color.</p>


<hr />

<p><a href="quasars2.aspx">Next: Search for quasars</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="quasars2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
