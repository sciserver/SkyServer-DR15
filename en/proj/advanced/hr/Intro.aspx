<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="Intro.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.Intro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Making an H-R Diagram</h1>
      
      <p>To make an H-R diagram, you must look at many stars. But for each star, you need 
      to measure only two quantities: luminosity and temperature. You can't directly 
      measure either quantity. But astronomers have developed several clever ways to 
      find stellar luminosities and temperatures from quantities that we can directly 
      observe.</p>
      
      <h1>Luminosity</h1>
           
      <table align="right" width=200 border=0 cellpadding=0>
      <tr><td align="right">
            <OBJECT classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
              codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=200 id=ShockwaveFlash1 width=200><PARAM NAME="_cx" VALUE="14552"><PARAM NAME="_cy" VALUE="3704"><PARAM NAME="Movie" VALUE="images/lum.swf"><PARAM NAME="Src" VALUE="images/lum.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="0"><PARAM NAME="Loop" VALUE="-1"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="000000"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
            <EMBED src="images/lum.swf" quality=high bgcolor=#000000      
            WIDTH=200 HEIGHT=200 TYPE="application/x-shockwave-flash"     
            PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED> </OBJECT>
      </td></tr>
      <tr><td align=center><p class=caption>Move the mouse over the slider to change the star's 
      luminosity</p></td></tr>
      </table>
      
      <p>The most difficult part of making an H-R diagram is finding the luminosities of 
      stars. The animation to the right lets you control the luminosity of the sample star; 
      drag the slider to the right to make the star more luminous.</p>
      
      <p>Since we can't go to stars, all we can know about them is what we can see 
      from Earth. But from Earth, we don't know how bright a star really is; we only 
      know how bright it looks to us.</p>
      <a name="collink1"></a>      
      <p>Two stars with the same luminosity at different distances will look different; a nearby star will look brighter than an identical star farther 
      away. Astronomers measure the apparent brightnesses of stars with a number called 
      apparent magnitude. In the magnitude scale, a lower number means a brighter 
      object (see the <a href="#collink1" onclick="window.open('../color')">Color</a>
      project for more information). If two stars have the same luminosity, the 
      star that is closer to us will appear brighter and have a lower apparent 
      magnitude. A more distant star will appear dimmer and will have a higher apparent 
      magnitude. Later in this project, you will learn how to calculate the distances to 
      stars, and how to use these distances to find the stars' luminosities.</p>
      
      <h1>Temperature</h1>
      
      <table align="right" width=200 border=0 cellpadding=0>
      <tr><td align="right">
            <OBJECT classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
               codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=200 id=ShockwaveFlash1 width=200><PARAM NAME="_cx" VALUE="14552"><PARAM NAME="_cy" VALUE="3704"><PARAM NAME="Movie" VALUE="images/stovebv.swf"><PARAM NAME="Src" VALUE="images/stovebv.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="0"><PARAM NAME="Loop" VALUE="-1"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="FFFFFF"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
            <EMBED src="images/stovebv.swf" quality=high bgcolor=#FFFFFF      
            WIDTH=200 HEIGHT=200 TYPE="application/x-shockwave-flash"     
            PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED> </OBJECT>
      </td></tr>
      <tr><td align=center><p class=caption>Click on the image seven times to take the 
      pan through four steps of heating and three steps of cooling</p></td></tr>
      </table>
      <a name="collink2"></a>
      <p>Astronomers have several ways to find the temperatures of stars, but the 
      simplest way is to look at the stars' colors. In astronomy, a star's color is 
      defined as the difference between its magnitudes as seen through two different 
      filters - telescope attachments that block out all light except light with a 
      specific wavelength. It doesn't matter which two filters you use - you should 
      calculate the same temperature (to learn how to calculate temperature from color, 
      see the <a href="#collink2" onclick="window.open('../color')">Color</a> project). 
      Traditionally, astronomers have taken images through blue, yellow, and red 
      filters denoted by the letters b, v, and r. The animation at the right shows what 
      a heating and cooling pan might look like through b and v filters.</p>
      
      <p>If you subtract a star's v magnitude from its b magnitude, you get a color 
      called b-v. Stars with lower b-v colors have higher temperatures, so you can use 
      b-v color to make an H-R diagram.</p>
      
      <p>The SDSS does not use the traditional b, v, and r filters; instead, it uses 
      five filters that see ultraviolet, green, red, and two wavelengths of infrared light. 
      These five filters are denoted u, g, r, i, and z. To make your H-R diagram, use 
      the green and red filters, which both fall in the visible part of the spectrum. 
      From the magnitudes of stars in these filters, you can calculate the color g-r.</p>
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
      <td><a href="default.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="simplehr.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
