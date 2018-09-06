<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetImage.aspx.cs" Inherits="SkyServer.Help.Cooking.GetImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Get Image and Spectrum</div>
<div id="pdflink">
  <a href="swf/getimage.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/getimage.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>How do I...</h2>

<h2>Get an image and spectrum of my favorite object?</h2>

<hr />

<p>You can use SkyServer's <a href="../../../tools/chart/navi.aspx" target="tools">Navigate</a> and 
<a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tools (links open in a new 
window) to find an image and spectrum of any object in the <a href="http://www.sdss.org/<%=globals.Release %>/coverage/" target="offsite">
SDSS survey area</a>.</p>

<p>To find the object, you will need to know its right ascension and declination. You can use the 
<a href="../../../tools/chart/navi.aspx" target="tools">Navigate</a> tool to get an image and the 
<a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool to get a spectrum (links open 
in a new window).</p>

<hr />

<p><a href="getimage2.aspx">Next: Find the celestial coordinates of your object</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getimage2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
