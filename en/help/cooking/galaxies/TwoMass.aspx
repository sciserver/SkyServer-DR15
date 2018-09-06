<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="TwoMass.aspx.cs" Inherits="SkyServer.Help.Cooking.TwoMass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">2MASS Optical Matches</div>
<div id="pdflink">
  <a href="swf/twomass.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/twomass.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Galaxies index</a></p>

<h2>How do I...</h2>

<h2>Find optical data for 2MASS galaxies?</h2>

<hr />

<p>SkyServer allows you to cross-match your own data with SDSS data. This is particularly useful for finding 
optical counterparts for objects seen in other wavelengths. For example, you can find optical counterparts 
for galaxies seen in photometric data of other surveys, such as the 2MASS infrared survey.</p>

<p>The tool to do this is the <a href="../../../tools/crossid/upload.aspx" target="tools">Imaging 
Cross-Identification</a> tool (link opens in a new window). This guide will tell you specifically how to 
use the tool to cross-identify galaxies with 2MASS. For more general tips on how to use the cross-identification 
tool, see the guide <a href="../general/crossid.aspx">How do I cross-match my own dataset with the SDSS?</a></p>


<hr />

<p><a href="twomass2.aspx">Next: Find optical counterparts for 2MASS data</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="twomass2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
