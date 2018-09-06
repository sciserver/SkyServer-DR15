<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="ThermalRad.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.ThermalRad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>


<a name="curve"></a>
<h1>Thermal Radiation Curves</h1>

<p>If you graph the intensity (that is, the amount) of thermal radiation given 
off by a star as a function of wavelength, you will get a graph like this:</p>

<p></p>
<table width=600 border=0><tr><td align="center">
<img src="images/thermalrad.jpg" align="center"></td></tr></table>
<p></p>

<p>These curves are called "thermal radiation curves." The red curve shows thermal 
radiation as a function of wavelength for a star at 3730 C (6750 F). The blue 
curve shows a star at 5730 C (10,350 F) - a little hotter than the sun. The green 
curve shows a star at 7730 C (14,400 F).</p>

<p>The curves show that hotter stars give off more thermal radiation, just as the hot plate 
glowed brighter as you heated it up. The curves also show that the peak wavelength of the 
thermal radiation (the thin black line) moves to shorter wavelengths as the 
temperature increases. The 3730 C star has a peak wavelength near the border between 
red and infrared light. The 5730 C star has a peak wavelength in the blue 
wavelength of light. The 7730 C star has a peak wavelength in ultraviolet light.</p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Explore 3.</strong> This <a target="_blank" href="physlet/blackbody.html">interactive Java applet</a> will 
help you learn how thermal radiation curves change with temperature. Click on the link 
to open a new window, then read the instructions. Try several different temperatures 
and peak wavelengths. Can you find a mathematical relationship between temperature 
and peak wavelength?</p></td>
</tr>
</table>

</td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><A href="temperature.aspx" ><IMG src="../../images/previous.jpg" align=left>
<A href="peakwavelength.aspx" ><IMG src="../../images/next.jpg" align=right></A></td></tr>

</table>
<P>

</div>
</asp:Content>
