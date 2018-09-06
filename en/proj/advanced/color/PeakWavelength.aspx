<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="PeakWavelength.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.PeakWavelength" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>


<a name="curve"></a>
<h1>Temperature and Peak Wavelength</h1>

<p>Quantitatively, the relationship between temperature and peak wavelength of thermal 
radiation - for a hot plate, a star, or anything else in the universe - is:</p>

<p><font face="symbol">l</font><sub>peak</sub>T = 2.897 x 10<sup> -3</sup> m K,</p>

<p>where <font face="symbol">l</font><sub>peak</sub> is measured in meters and T is measured 
in degrees Kelvin <br>(273.15 K = 0 C = 32 F).</p>

<p>Click <a href="#example2" onclick=
"window.open('example2.html','example','resizeable, width=650, height=600');">here</a> 
for an example of how to calculate peak wavelength.</p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Practice 2</strong>. At room temperature, 300 K, what is the peak 
wavelength of radiation emitted by the hot plate in Angstroms (1 Angstrom = 10<sup>-10</sup>
meters)? If the plate glows a dull red (<font face="symbol">l</font><sub>peak</sub> = 
6500 Angstroms), what is the plate's temperature?</p>
</td></tr>
</table>

<p></p>

<a name="practice3"></a>
<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Practice 3</strong>. The Sun has a peak wavelength of thermal radiation 
<font face="symbol">l</font><sub>peak</sub> = 5300 Angstroms. What is the Sun's 
average temperature?</p>
</td>

<td width=200>
<table border=1><tr><td><a href="#practice3" onclick="window.open('eye.html','sidebar','width=270,height=270,resizeable,scrollbars');">
<img src="../../images/didyouknow.jpg"></a></td></tr></table>
</td>

</tr>
</table>

</td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><A href="thermalrad.aspx" ><IMG src="../../images/previous.jpg" align=left>
<A href="spectra.aspx" ><IMG src="../../images/next.jpg" align=right></A></td></tr>

</table>
<P>

</div>
</asp:Content>
