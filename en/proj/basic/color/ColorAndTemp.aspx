<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="ColorAndTemp.aspx.cs" Inherits="SkyServer.Proj.Color.ColorAndTemp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Color and Temperature</h1>
            <table align="right" width=150 border=0 cellpadding=0>
		<tr><td align="middle">
            <OBJECT classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
                codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=100 id=ShockwaveFlash1 width=100><PARAM NAME="_cx" VALUE="14552"><PARAM NAME="_cy" VALUE="3704"><PARAM NAME="Movie" VALUE="images/hotplate3.swf"><PARAM NAME="Src" VALUE="images/hotplate3.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="0"><PARAM NAME="Loop" VALUE="0"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="000000"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
              <EMBED src="images/hotplate3.swf" quality=high bgcolor=#000000       
 WIDTH=100 HEIGHT=100 TYPE="application/x-shockwave-flash"      
 PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED></OBJECT>
</td></tr><tr><td>
<p class=caption align=center>Click on animation to play</p></td></tr></table>
      <p>As you saw the in the previous Explore exercise, the temperature of an 
      object determines the peak wavelength of its spectrum. If you have ever 
      looked at a hot plate heating up on a stove, you have an idea of why 
      this might be true. At first, you don't see any light coming 
      out of the hot plate, but you feel its heat. When you heat the plate up a 
      little, it begins to glow a dull red. As it heats up more, the plate 
      begins to glow brighter, and its color begins to change: first orange, 
      then yellow, then blue. If you remove the plate from the heat, it cools 
      down, and its color sequence reverses. The animation to the right shows 
      the color sequence you might see as the plate heats up, then cools down.</p>
      <p>What's going on here? The hot plate, like all other objects in the 
      universe, is made of atoms. The atoms in the hot plate are moving around 
      constantly, emitting light. As the hot plate heats up, its atoms move faster, 
      and as they move faster, they emit higher-energy light.</p>
      <p>The light emitted by the plate because of its moving atoms is called 
      "thermal radiation." The plate emits thermal radiation at 
      all wavelengths of light, but it emits most of its 
      radiation at a certain peak wavelength, which gets shorter as the plate's 
      temperature goes up. At room temperature, the radiation it emits is 
      infrared, invisible to your eyes. As the heats up, its peak wavelength 
      moves to shorter wavelengths: to red, then orange, then yellow, then blue. 
      If you continued heating the hot plate (higher than you could ever heat it 
      on a stove), the plate would glow bright violet.</p>
      <p>Because all objects in the universe are made of atoms, 
      every object in the universe emits thermal radiation. 
      So of course, thermal radiation is emitted by stars - the 
      same kind of thermal radiation emitted by hot plates on Earth. This 
      observation explains the discovery you made in the last Explore exercise: different stars 
      have different peak wavelengths of thermal radiation because they have 
      different temperatures. </p>
      <p></p>
      <p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="fromstars.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="observedspectra.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
