<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="SearchImage4.aspx.cs" Inherits="SkyServer.Help.Cooking.SearchImage4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Images and Spectra</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>View your search results (<a href="../../../tools/chart/list.aspx" target="tools">Open in new window</a>)</h2>

<hr />

<ol>

  <li><p>Click on the thumbnail image to go to the <a href="../../../tools/chart/navi.aspx" target="tools">Navigate</a> tool 
  entry for that object (link opens in a new window). The Navigate tool will give you an image of the object and the 
  area around it, which you can zoom in or out of.</p></li>

  <li><p>Click on the object's name (above the thumbnail image) to go to the <a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> 
  tool entry for that object (link opens in new window). The Explore tool shows complete data for the object, 
  including a spectrum if one was observed by the SDSS.</p></li>
  
  <li><p>To download FITS images of the object, click on the <b>FITS</b> link below the <i>PhotoObj</i> heading in 
  the left-hand menu. <i>Corrected Frames</i> are the final step of processing for SDSS images. There is one 
  image for each filter. Right-click on the label for the filter you want to download the image.</p></li>
  
  <li><p>From the <i>Summary</i> page, click on the spectrum to show a larger view. Spectral lines are marked 
  in pink and green. The redshift and redshift error are also marked on the spectrum.</p></li>

  <li><p>To see the spectrum as a FITS file, click on the <b>FITS</b> link below the <i>SpecObj</i> heading 
  in the left-hand menu. Right-click on the <b>Download</b> link to download the spectrum. It will be a fits file 
  with 4 rows and about 4,000 columns. See the guide to 
  <a href="http://www.sdss.org/<%=globals.Release %>/products/spectra/read_spSpec.html" target="offsite">Reading individual spectrum files</a> 
  (link opens in a new window) to learn how to interpret the FITS spectra.</p></li>
  
  <li><p>You can view and analyze the spectrum using the <a href="http://www.stsci.edu/resources/software_hardware/specview/" target="offsite">SpecView</a> 
  applet (link opens in a new window), developed by the Space Telescope Science Institute.</p></li>

</ol>

<hr />

</td>
</tr>

<tr>
      <td>&nbsp;<a href="searchimage3.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
