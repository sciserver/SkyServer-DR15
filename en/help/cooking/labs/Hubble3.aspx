<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Hubble3.aspx.cs" Inherits="SkyServer.Help.Cooking.Hubble3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Create a Hubble Diagram</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Teaching/Labs index</a></p>

<h2>Study one cluster (<a href="../../../tools/chart/navi.aspx" target="tools">open Navigate in new window)</a></h2>

<hr />

<ol>

<li><p>Go to the <a href="../../../tools/chart/navi.aspx" target="tools">Navigate</a> tool (link opens in new window). 
From the astronomers' main page, look under <i>Advanced Tools</i>. From the public main page, look under 
<i>SkyServer Tools</i>, then <i>Visual Tools</i>.</p></li>

<li><p>Look at the <b>ra</b> and <b>dec</b> input boxes near the top left of the tool. Enter the 
coordinates of one of the Abell clusters. (Note that you may enter coordinates either as decimal degrees or 
as HMS/DMS. If you enter them as HMS/DMS, use the format "hh:mm:ss ±dd:mm:ss".) Click <b>Get Image</b>.</p></li>

<li><p>The image in the center panel will reset to an image of the area that includes your cluster. Click 
the directional buttons (<b>N</b>-<b>W</b>-<b>S</b>-<b>E</b>) to pan the image, and click on the <b>+</b> or 
<b>–</b> magnifying glasses to zoom in our out.</p></li>

<li><p>Click on one or more of the <b>Drawing Options</b> checkboxes in the left-hand panel to redraw the image 
with various features selected. Of particular interest is the <b>SpecObjs</b> checkbox. When it is selected, 
the tool displays a red square around all objects for which the SDSS has obtained a spectrum.</p></li>

<li><p>Decide which galaxies are genuinely part of the cluster and which are not, using whatever method 
you like.</p></li>

<li><p>Decide on some property of a galaxy that you want to measure across clusters. For example, you 
might want to measure the magnitude of the 5th brightest galaxy in each cluster, or the apparent size 
in arcminutes of the 3rd brightest spiral galaxy. Measure that property.</p>

  <ol type="a">
    <li>To measure magnitudes, click on the galaxy to see its data. You will see its magnitudes 
    (u, g, r, i, z) displayed in the right-hand frame.</li>
    <li>To measure apparent sizes, turn on the <b>Grid</b> checkbox to put up tickmarks around the 
    edges of the main frame. Count the number of tickmarks the galaxy takes up and multiply by the grid 
    scale shown in the top left of the image.</li>
    <li>For whatever galaxy you choose to measure, be sure to record its objID, ra, and dec too.</li>
  </ol>
</li>

</ol>

<hr />

<p><a href="hubble4.aspx">Next: Find the redshift of the cluster</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td><a href="hubble2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="hubble4.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
