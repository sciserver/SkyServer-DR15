<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="WhatIs.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.WhatIs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>What is Color?</h1>

<table align="right" width=200 border=1 cellpadding=0>
<tr><td align="middle">
            <OBJECT classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
               codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=200 id=ShockwaveFlash1 width=200><PARAM NAME="_cx" VALUE="14552"><PARAM NAME="_cy" VALUE="3704"><PARAM NAME="Movie" VALUE="images/lightcolor.swf"><PARAM NAME="Src" VALUE="images/lightcolor.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="0"><PARAM NAME="Loop" VALUE="0"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="000000"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
              <EMBED src="images/lightcolor.swf" quality=high bgcolor=#000000       
 WIDTH=200 HEIGHT=200 TYPE="application/x-shockwave-flash"      
 PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED></OBJECT>
</td></tr><tr><td>
<p class=caption align=center>Move the slider to change the light's wavelength</p>
</td></tr></table>

<p>The color of a star is related to the color of light that it gives off. 
Light is a wave - a cycling motion that travels through empty space. When a star 
emits a light wave, the wave can travel across empty space to the Earth, where we 
see the star's light.</p>

<p>Light waves, like waves in water, can be described by the distance between two 
successive peaks of the wave - a length known as the wavelength. Different 
wavelengths of light appear to our eyes as different colors. Shorter wavelengths 
appear blue or violet, and longer wavelengths appear red.</p>

<table width=100 align=left border=1><tr>
  <td><a href="#trythis" onclick="window.open('try1.html','sidebar','width=400,height=360');"><img src=../../images/trythis.jpg></a></td>
</tr></table>
  
<p>The animation at the right shows a schematic drawing of a wave. The white line 
represents the wavelength. Move the slider to explore how the color of a beam 
of light changes with its wavelength.</p>

<p>The order of colors in light, arranged from shortest wavelength to longest, 
is called the visible spectrum of light. The image below shows light's visible spectrum, 
which runs from violet to red. You might recognize the spectrum as the order of colors 
in a rainbow. The wavelengths of light are marked on the visible spectrum in Angstroms; 
1 Angstrom = 10<sup>-10</sup> meters.</p>

<img src="images/spectrum.jpg">

<p></p>

<p>But light waves can also have wavelengths lower or higher than the wavelengths 
in the visible spectrum, and many familiar types of radiation are just light waves 
with other wavelengths. Ultraviolet light and x-rays have wavelengths shorter than 
violet light, and infrared (heat) and radio waves have wavelengths longer than 
red light.</p>

<p>The full range of wavelengths for light is called the "electromagnetic 
spectrum." The image and table below show which wavelength ranges in the electromagnetic 
spectrum correspond to which types of light.</p>


<table border=1 align=center width=550>
  <tr>
    <td colspan=2 align=center><img src="images/specnasa.gif"></td>
  </tr>
  <tr>
    <td><p class=caption><strong>Type of Light</strong></p></td>
    <td><p class=caption><strong>Wavelengths</strong></p></td>
  </tr>
  <tr>
    <td><p>Radio waves</p></td>
    <td><p>> 30 cm</p></td>
  </tr>
  <tr>
    <td><p>Microwaves</p></td>
    <td><p>1 mm - 30 cm</p></td>
  </tr>
  <tr>
    <td><p>Infrared</p></td>
    <td><p>700 nm - 1 mm</p></td>
  </tr>
  <tr>
    <td><p>Visible light</p></td>
    <td><p>350 nm - 700 nm</p></td>
  </tr>
  <tr>
    <td><p>Ultraviolet</p></td>
    <td><p>10 nm - 350 nm</p></td>
  </tr>
  <tr>
    <td><p>X-rays</p></td>
    <td><p>0.01 nm - 10 nm</p></td>
  </tr>
  <tr>
    <td><p>Gamma rays</p></td>
    <td><p>< 0.01 nm</p></td>
  </tr>  
  <tr>
    <td colspan=2><p align=center><font size=-1>1 nm = 10<sup>-9</sup> m</font></p></td>
  </tr>
</table>

<p>&nbsp;</p>

</td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><a href="amounts.aspx"><img src="../../images/previous.jpg" align=left></a>
<A href="sdssfilters.aspx" ><IMG src="../../images/next.jpg" align=right></A></td></tr>
<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>
<tr><td><p><font size=-2>Electromagnetic spectrum image courtesy of 
<a href="#credit" onclick="window.open('http://amazing-space.stsci.edu','offsite');">
Amazing Space</a> at the Space Telescope Science Institute</font></p></td></tr>
</table>

</div>
</asp:Content>
