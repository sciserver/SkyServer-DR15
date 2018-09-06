<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Finding.aspx.cs" Inherits="SkyServer.Help.Cooking.Finding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Create Finding Chart</div>
<div id="pdflink">
  <a href="swf/finding.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/finding.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>How do I...</h2>

<h2>Create a finding chart for my telescope?</h2>

<hr />

<p>With its imaging coverage of large sections of sky, the SDSS can be useful for planning telescope observations. 
You can use SkyServer to generate a finding chart to help plan these observations.</p>


<ol>

<li><p>Go to the <a href="../../../tools/chart/chart.aspx" target="tools">Finding Chart</a> tool (link opens in new 
window). From the astronomers' home page, look under <i>Advanced Tools</i>. From the public home page, look 
under <i>SkyServer Tools</i>.</p></li>

<li>Look at the <b>ra</b> and <b>dec</b> input boxes near the top left of the tool. Enter the coordinates of 
your object. You may enter them either as decimal degrees or as HMS/DMS. If you enter them as HMS/DMS, use the 
format "hh:mm:ss ±dd:mm:ss". If you don't know the coordinates, you can get them from name resolver like 
<a href="http://simbad.u-strasbg.fr/simbad/" target="offsite">SIMBAD</a> or 
<a href="http://nedwww.ipac.caltech.edu/" target="offsite">NED</a> (links open in new window).</p></li>

<li><p>In the <b>scale</b> input box, enter the scale of your telescope in arcseconds per pixel.</p></li>

<li><p>In the <b>width</b> and <b>height</b> input boxes, enter the desired size of the image in pixels.</p></li>

<li><p>Click on one or more of the <b>Drawing Options</b> checkboxes in the left-hand panel to redraw the 
image with various features selected. It is usually a good idea to check <i>InvertImage</i>, to display the image as 
white-on-black.</p></li>

<li><p>Click <b>Get Image</b>.</p></li>

<li><p>Click the printer icon to open a printable finding chart. The finding chart print white-on-black, 
and it will display the ra and dec of the center, as well as the scale. It will also have a space to take 
notes.</p></li>

</ol>

<hr />

 

</td>
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
