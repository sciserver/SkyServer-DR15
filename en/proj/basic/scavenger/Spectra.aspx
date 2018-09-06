<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="Spectra.aspx.cs" Inherits="SkyServer.Proj.Scavenger.Spectra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Spectra</h1>

<p>Colors like u-g and g-r give a way of measuring what colors of light an object gives off. Since SkyServer has magnitudes for <%=globals.NObj%> objects, colors give you an easy way to learn something important about an object. But if you want to know more about the object, it helps to study the object in more detail by measuring a <em>spectrum</em>.</P>

<p>A spectrum (the plural is "spectra") is a plot of the amount of light that an object gives off as a function of wavelength of light. A spectrum is like a fingerprint: just as each person has unique patterns in his or her fingerprints, each sky object has a unique spectrum.</p>

<p>Sky objects give off light in a range of different colors. The color of light that you see is determined by the wavelength of the light wave. The wavelength is the distance from one peak of the wave to the next peak. The picture blow shows how the color of light is related to its wavelength; the wavelength is shown in units called Angstroms <br>(1 Angstrom = 0.0000000001, or 1 x 10<sup>-10</sup>, meters.)</p>

<img border="0" src="images/spectrum.jpg" width="528" height="189">

<p>Sky objects do not give off the same amount of light at every wavelength. If you made a rainbow graph like the one above for a star or galaxy, some parts of the graph would be much brighter than others. Scientists used rainbow graphs for many years; but in the past 20 years, they have begun to use an x-y graph to show a star's spectrum. The x-axis shows wavelength of light. The y-axis shows how bright the light is at that wavelength. Today, when scientists say "spectrum," they usually mean this x-y graph.</p>

<p>The picture below shows a typical spectrum measured by the SDSS.</p>

 
      <table width=600 border="0" align=center cellpadding="0" cellspacing="0"><tr>
          <td>
         <A href="images/spectra1_full.gif" target="images">
         <IMG src="images/spectra1.gif" width="600" height="480">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to see it full size</span></p></td></tr></table>

<p>It takes about an hour to collect enough light to measure a spectrum. Because spectra are harder to measure than images and magnitudes, the SDSS has measured 
far fewer spectra. SkyServer has <%=globals.NObj%> images, but only <%=globals.NSpec%> spectra. However, a spectrum can give you more detailed information about an object than you can get with color alone.</p>

<p>Click Next to find out how to look at spectra using SkyServer.</p>


</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="colors.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="explorer.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
