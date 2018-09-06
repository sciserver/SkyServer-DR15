<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="EnergyLevels.aspx.cs" Inherits="SkyServer.Proj.Advanced.SpectralTypes.EnergyLevels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3" height="578">
    <tr>
      <td>
      
      <h1>Energy Levels of Electrons</h1>
      <p></p>

<table align="right" width=250 border=0 cellpadding=0>
<tr><td align="middle">
<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"
 WIDTH=300 HEIGHT=200 id=ShockwaveFlash1>
 <PARAM NAME=movie VALUE="enbig.swf"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=#FFFFFF> <EMBED src="enbig.swf" quality=high bgcolor=#FFFFFF  WIDTH=300 HEIGHT=200 TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED>
</OBJECT>
</td></tr><tr><td>
<p class=caption align=center>Click on animation to play</p>
</td></tr></table>
    
      <p>As you may remember from chemistry, an atom consists of electrons orbiting 
      around a nucleus. However, the electrons cannot choose any orbit they 
      wish. They are restricted to orbits with only certain energies. Electrons can 
      jump from one energy level to another, but they can never have orbits with 
      energies other than the allowed energy levels.</p>
      <p>Let's look at the simplest atom, a neutral hydrogen atom. Its 
      energy levels are given in the diagram below. The x-axis shows the allowed energy 
      levels of electrons in a hydrogen atom, numbered from 1 to 5. The y-axis shows 
      each level's energy in electron volts (eV). One electron volt is the energy that 
      an electron gains when it travels through a potential difference of one volt 
      (1 eV = 1.6 x 10<sup>-19</sup> Joules).</p>
      
      <a name="graph"></a>
      <table border="0" align=center cellpadding="0" cellspacing="0"><tr>
          <td>
         <A href="#graph" 
         onclick="window.open('images/energy_big.jpg','','width=961,height=654,resizable,scrollbars');">
         <IMG src="images/energy.jpg">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image for a larger view</span></p></td></tr></table>
            
      <p>Electrons in a hydrogen atom must be in one of the allowed energy levels. 
      If an electron is in the first energy level, it
      must have exactly -13.6 eV of energy. If it is in the second energy level, 
      it must have -3.4 eV of energy. An electron in a hydrogen atom cannot 
      have -9 eV, -8 eV or any other value in between.</p>
      <p>Let's say the electron wants to jump from the first energy level, n = 
      1, to the second energy level n = 2. The second energy level has higher energy 
      than the first, so to move from n = 1 to n = 2, the electron needs to gain energy. 
      It needs to gain (-3.4) - (-13.6) = 10.2 eV of energy to make it up to 
      the second energy level.</p>
      <p>The electron can gain the energy it needs by absorbing light. If the 
      electron jumps from the second energy level down to the 
      first energy level, it must give off some energy by emitting light.
      The atom absorbs or emits light in discrete packets called photons, and each photon 
      has a definite energy. Only a photon with an energy of exactly 10.2 eV can 
      be absorbed or  emitted when the electron jumps between the n = 1 and n = 2 
      energy levels.</p>
      <p>The energy that a photon carries depends on its wavelength. Since the photons 
      absorbed or emitted by electrons jumping between the n = 1 and n = 2 energy levels must 
      have exactly 10.2 eV of energy, the light absorbed or emitted must have a definite 
      wavelength. This wavelength can be found from the equation</p>
      <p>E = hc/<font face=symbol>l</font>,</p>
      <p>where E is the energy of the photon (in eV), h is Planck's constant 
      (4.14 x 10<sup>-15</sup> eV s) and c is the speed of light (3 x 10<sup>8</sup> m/s).
      Rearranging this equation to find the wavelength gives</p>
      <p><font face=symbol>l</font> = hc/E.</p>
      <p>A photon with an energy of 10.2 eV has a wavelength 
      of 1.21 x 10<sup>-7</sup> m, in the ultraviolet part of the spectrum. So when an 
      electron wants to jump from n = 1 to n = 2, it must absorb a photon of ultraviolet 
      light. When an electron drops from n = 2 to n = 1, it emits a photon of 
      ultraviolet light.</p>
      <p>The step from the second energy level to the third is much smaller. 
      It takes only 1.89 eV of energy for this jump. It takes even less 
      energy to jump from the third energy level to the fourth, and even less 
      from the fourth to the fifth.</p>
      <p>What would happen if the electron gained enough energy to make it all 
      the way to 0eV? The electron would then be free of the hydrogen 
      atom. The atom would be missing an electron, and would become a hydrogen ion.</p>
     
      <p>The table below shows the first five energy levels of a hydrogen atom.</p>

      <table align=right width=200>
      <tr><td align=left>
        <img src="images/energy_small.jpg">
      </td></tr>
      </table>

      <table border="1" cellpadding="2" cellspacing="2" width="55%" id="AutoNumber1" height="111">
        <tr>
          <td><p class=caption>Energy Level</p></td>
          <td><p class=caption>Energy</p></td>
        </tr>
        <tr>
          <td><p>1</p></td>
          <td><p>-13.6 eV</p></td>
        </tr>
        <tr>
          <td><p>2</p></td>
          <td><p>-3.4 eV</p></td>
        </tr>
        <tr>
          <td><p>3</p></td>
          <td><p>-1.51 eV</p></td>
        </tr>
        <tr>
          <td><p>4</p></td>
          <td><p>-.85 eV</p></td>
        </tr>
        <tr>
          <td><p>5</p></td>
          <td><p>-.54 eV</p></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
 
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><b>Exercise 2</b>. 
          Find the wavelength of a photon emitted when an electron 
          jumps from the n = 3 energy level down to the n = 2 energy level. 
          Where is this photon in the electromagnetic spectrum?</p></td>
        </tr>
      </table>
      
      <p></p>
                
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td>
          <p><b>Exercise 3</b>. The table below 
          shows the energy levels of a singly ionized helium atom - an ion with 
          two protons, two neutrons, and one electron:</p>
          
          <table width=200 align=right>
          <tr><td align=right>    
            <img src="images/helium.jpg">
          </td></tr>
          </table>
      
      
      <table border="1" cellpadding="2" cellspacing="2" width="55%" id="AutoNumber3" height="111">
        <tr>
          <td width=50%><p class=caption>Energy Level</p></td>
          <td width=50%><p class=caption>Energy</p></td>
        </tr>
        <tr>
          <td width=50%><p>1</p></td>
          <td width=50%><p>-54.4 eV</p></td>
        </tr>
        <tr>
          <td width=50%><p>2</p></td>
          <td width=50%><p>-13.6 eV</p></td>
        </tr>
        <tr>
          <td width=50%><p>3</p></td>
          <td width=50%><p>-6.04 eV</p></td>
        </tr>
        <tr>
          <td width=50%><p>4</p></td>
          <td width=50%><p>-3.4 eV</p></td>
        </tr>
        <tr>
          <td width=50%><p>5</p></td>
          <td width=50%><p>-2.176 eV</p></td>
        </tr>
      </table>
          <p>How much energy must be given off 
          when the electron jumps from the second energy level down to the first 
          energy level?</p></td>
        </tr>
     </table>
          
     <p></p>
          
     <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Exercise 4</b>. What is 
          wavelength of a photon emitted when an electron jumps from the 
          <br>n = 2 to n = 1 energy level of a singly ionized helium atom? Where is this 
          photon in the electromagnetic spectrum?</p></td>
        </tr>
      </table>
      
      <p>You can use this method to find the wavelengths emitted by 
      electrons jumping between energy levels in various 
      elements. However, finding the correct energy levels gets much more 
      difficult for larger atoms with many electrons. In fact, the energy 
      levels of neutral helium are different from the energy levels of singly ionized helium! 
      Therefore, we will skip how to calculate all the energy levels for 
      different atoms for now. The energy levels are published in the CRC 
      Handbook of Chemistry and Physics if you want to look them up.</p>
      <p>&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td height="1"></td>
    </tr>
    <tr>
      <td height="1"></td>
    </tr>
    <tr>
      <td height="113"><a href="studentclasses.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="lines.aspx"><img align="right" src="../../images/next.jpg"></a><p>
      </td>
    </tr>
  </table>
</div>
</asp:Content>
