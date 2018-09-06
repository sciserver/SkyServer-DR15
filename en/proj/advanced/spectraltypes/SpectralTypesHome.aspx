<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="SpectralTypesHome.aspx.cs" Inherits="SkyServer.Proj.Advanced.SpectralTypes.SpectralTypesHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <a name="classifying"></a>
      
      <table width=200 border=1 align=right><tr><td>
      <img src="images/pal5.jpg" align=center></td></tr>
      <tr><td align=center><font class="caption">Stars seen by<br>
      the SDSS camera</font></td></tr></table>
      
      <h1>Spectral Types</h1>     
          
      <p>When astronomers look through their telescopes, they see billions of 
      stars. How do they make sense of all these stars? How do they classify stars 
      into types, and how do they tell which types are common and which are rare? Most 
      importantly, how do they use the star types they see to learn useful 
      information about stars?
      
      <p>If you have already completed the <a href="../color/">Color</a> project, you learned 
      one way to understand stars: stars with different colors have different 
      temperatures. In the Colors project, you looked at the thermal radiation curves 
      of several stars. You found the peak wavelengths of these curves and calculated 
      the temperatures of the stars.</p>
      
      <p>However, you might have wondered what happens when a star's peak wavelength is not 
      visible on our spectrum. For a very hot star, the peak wavelength 
      may be well into the ultraviolet wavelength range. For a very cool star, 
      the peak wavelength may be well into the infrared. Do astronomers have other ways 
      to find the temperature of a star from its spectrum, even if the star's peak 
      wavelength is too short or too long to show up?</p>
      
      <p>Fortunately, they do.</p>
      
      <h1>Spectral Peaks and Valleys</h1>
      
      <p>If thermal radiation were the only source of light from a star, the 
      star's spectrum would be a nice smooth curve. However, actual spectra 
      observed from stars have a series of peaks and valleys as shown in the 
      spectrum below, meaning some of their light comes from "non-thermal" 
      radiation - light emitted or absorbed by a process other than random jostling 
      of atoms. In the next section, you will learn what this process is.
      
      <a name="spec"></a>
      <p>The spectrum below, from the SDSS spectral database, is a typical example of 
      the spectrum of a star:</p>
      <table width=600 border="0" align=center cellpadding="0" cellspacing="0"><tr>
          <td>
         <A href="../../../get/specById.aspx?ID=75094093054607360" target="pictures">
         <IMG src="images/spectra1.gif">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to see it full size</span></p></td></tr></table>
      
      <p>Many of these peaks and valleys have labels on them. You may 
      recognize some of these labels as the symbols of chemical elements.</p> 
      
      <p>Every star has a unique pattern of peaks and valleys, 
      and these patterns can be grouped into "spectral types" of stars.
      The traditional spectral types are denoted by the letters 
      O,B,A,F,G,K,M (and some new spectral types have been added
      in the last couple of years...more on those later!)</p>
      
      <p>Before you find out what these letters mean, take a 
      shot at developing your own system for classifying stars based on their spectra.</p>
      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="studentclasses.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
