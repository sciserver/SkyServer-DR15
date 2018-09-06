<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Absorption.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.Absorption" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Absorption and Emission Lines</div>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>


<p>In the last page, you examined the spectra of 14 stars. You probably noticed two features that all the spectra had in 
common. All the spectra have similar overall shapes, and all have peaks and valleys of different heights.</p>

      <table border="1" cellpadding="0" cellspacing="0" id="AutoNumber2" align="right" vspace="10" hspace="10">
        <tr>
          <td>
          <a onclick="window.open('history.aspx','sidebar','width=650,height=555,resizeable,scrollbars');" href="#history">
          <img src="images/didyouknow.jpg" align="left" alt="Click for more information on the history of spectral classes" /></a></td>
        </tr>
      </table>

<p>These are the very same features astronomers use to classify stars. In fact, it was through classifying 
stars that astronomers eventually realized what those features mean, and how they relate. To learn more about how astronomers developed the 
modern system of stellar classification, click the "Did You Know?" box to the right.</p>

<h1>The Hydrogen Atom</h1>

<p>To begin to understand what the peaks and valleys mean, let's take a close look at a hydrogen atom. A hydrogen atom has one 
proton and one electron. Its electron can only occupy certain energy levels;  think of energy levels as unequally-spaced steps of a 
ladder. The higher up an electron is on the ladder, the more energy it has.  Astronomers use the letter 'n' and
a number to designate each energy level. The lowest energy level is called the 'n=1' level, the second lowest level 'n=2', the 
third 'n=3', and so on.
</p>

<p>Electrons can move from one level to another, but the atom's total energy must always be conserved. So, if an 
electron moves down from the 2<sup>nd</sup> energy level to the 1<sup>st</sup> (n=2 to n=1), then the atom conserves energy 
by emitting a photon of light. The emitted photon has an energy equal to the difference between the 2nd and 1st energy levels. 
An electron can only move up from the 1<sup>st</sup> to 2<sup>nd</sup> energy level if it gains the right amount of energy. 
The electron typically gains this energy if the atom absorbs a photon of light with the right energy.</p>


<table align="right" width=250 border=0 cellpadding=0>
<tr><td align="middle">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"
 width="300" height="200" id="ShockwaveFlash1">
 <param name=movie value="images/enbig.swf" /> <param name="quality" value="high" /> <param name="bgcolor" value="#FFFFFF" />
    <embed src="images/enbig.swf" quality="high bgcolor=#FFFFFF" width="300" height="200" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed>
</object>
</td></tr><tr><td>
<p class="caption" align="center">Click on animation to play</p>
</td></tr></table>


<p>The animation to the right shows a hydrogen atom that starts with its electron in the n=1 energy level. It absorbs a 
photon to go to n=2, then emits a photon of the same energy to go back to n=1. Because a photon's wavelength is determined 
by its energy, if you know the energy a photon has, you know its wavelength. To go up from n=1 to n=2, an electron must 
absorb a photon with an energy of 10.2 electron-Volts (1.63 x 10<sup>-18</sup> Joules) - this photon has a wavelength of 
1216 &Aring;ngstroms.</p>

<p>To go down from n=2 to n=1, the atom must emit a photon of 1216 &Aring;ngstroms.</p>

<table class="question" width="600" cellpadding="5" cellspacing="0">
  <tr>
    <td><p><b>Question 4</b>. To go up in energy level from n=1 to n=2, what wavelength of light must a hydrogen atom 
    absorb? How do you know?</p></td>
  </tr>
</table>


      <p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="studentclasses.aspx"><img align="left" src="../../images/previous.jpg" alt="Previous page: exploring spectra" /></a>
      <a href="absorption2.aspx"><img align="right" src="../../images/next.jpg" alt="Next page: absorption lines" /></a></td>
    </tr>
  </table>
</div>
</asp:Content>
