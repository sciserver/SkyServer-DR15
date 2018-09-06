<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetImage4.aspx.cs" Inherits="SkyServer.Help.Cooking.GetImage4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Get Image and Spectrum</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Explore the Object (<a href="../../../tools/explore/obj.aspx" target="tools">open Explore in new window</a>)</h2>

<hr />

<ol>

  <li><p>Click the <b>Explore</b> link in the right panel of the Navigate tool to go to the 
         <a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool (opens in a new 
         window). To access the tool from the astronomers' main page, look under <b>Advanced Tools</b>. To access 
         the tool from the public main page, look under <b>Visual Tools</b>.</p></li>
         
  <li><p>At the top of the Explore tool window, you will see the object’s identifier, ra and dec, and SDSS 
         long object ID.</p></li>
         
  <li><p>Below the name and position data, you will see a close-up image of the object, with a scale. The 
         object's photometric data is to the right of the image. The magnitudes are the second row.</p></li>
         
  <li><p>If the SDSS did not measure a spectrum for this object, the tool will say, <b>No scienceprimary 
         SpecObj linked to this PhotoObj.</b> If the object does have an SDSS spectrum, the tool will show 
         the spectrum below the photometric data.</p></li>
         
  <li><p>Click on the picture of the spectrum to see a larger view. Spectral lines are marked on the spectrum 
         by green and pink dotted lines, as well as labels. The redshift and error are shown at the bottom of 
         the spectrum.</p></li>
         
</ol>

  <p>You can also use the Explore tool to get the SDSS's FITS images and spectra for your object.</p>

<hr />

<p><a href="getimage5.aspx">Next: Get FITS Images and Spectra</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getimage3.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" />
      <a href="getimage5.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
