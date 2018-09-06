<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetImage5.aspx.cs" Inherits="SkyServer.Help.Cooking.GetImage5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Get Image and Spectrum</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Get FITS (<a href="../../../tools/explore/obj.aspx" target="tools">open Explore in new window</a>)</h2>

<hr />

<ol>

  <li><p>To see FITS images of the object, click on the <b>FITS</b> link below the <i>PhotoObj</i> heading in the left-hand 
         menu. <span class="vocabulary">Corrected Frames</span> are the final step of processing for SDSS 
         images. There is one image for each filter. Right-click on the label for the filter you want to 
         download the image.</p></li>
         
  <li><p>To see the spectrum as a FITS file, click on the <b>FITS</b> link below the <i></i>SpecObj heading in 
         the left-hand menu. Right-click on the <b>Download</b> link to download the spectrum. It will be a 
         FITS file with 4 rows and about 4,000 columns. See the guide to 
         <a href="http://www.sdss.org/<%=globals.Release %>/products/spectra/read_spSpec.html" target="offsite">Reading 
         individual spectrum files</a> (link opens in a new window) for more information.</p></li>         
         
  <li><p>You can view and analyze the spectrum using the <a href="http://www.stsci.edu/resources/software_hardware/specview/" target="offsite">SpecView</a> 
         applet (link opens in a new window) developed by the Space Telescope Science Institute.</p></li>         
 
</ol>

 
<hr />

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getimage4.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
