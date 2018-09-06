<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="TwoMass3.aspx.cs" Inherits="SkyServer.Help.Cooking.TwoMass3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">2MASS Optical Matches</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Galaxies index</a></p>

<h2>Explore the optical counterparts (<a href="../../../tools/explore/obj.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<ol>

<li><p>You should now see the results of your query<%if (globals.Access=="public") {%> in a new window<%}%>. The 
first columns are the 2MASS data that you uploaded. The rest of the columns of data come from the SDSS: the 
object ID, RA and dec, type (STAR or GALAXY), and the five magnitudes.</p></li>

<li><p>Click on the link for each object ID to see go to the <b>Explore</b> tool entry for that object. The 
<a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool will open in a new window. </p></li>

<li><p>You will see the object’s identifier, ra and dec, and SDSS long object ID at the top of the page.</p></li>

<li><p>Below the name and position data, you will see a close-up image of the object, with a scale. The object's 
photometric data is to the right of the image. The magnitudes are the second row.</p></li>

<li><p>If the SDSS did not measure a spectrum for this object, the tool will say, <i>No scienceprimary SpecObj linked 
to this PhotoObj.</i> If the object does have an SDSS spectrum, the tool will show the spectrum below the 
photometric data. </p></li>

<li><p>Click on the picture of the spectrum to see a larger view. Spectral lines are marked on the spectrum by 
green and pink dotted lines, as well as labels. The redshift and error are shown at the bottom of the spectrum.</p></li>

<li><p>To see FITS images of the object, click on the <b>FITS</b> link below the <i>PhotoObj</i> heading in the left-hand menu. 
Corrected Frames are the final step of processing for SDSS images. There is one image for each filter. Right-click 
on the label for the filter you want to download the image.</p></li>

</ol>



<hr />


</td>
</tr>

<tr>
      <td>&nbsp;<a href="twomass2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
