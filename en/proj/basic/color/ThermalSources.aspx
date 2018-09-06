<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="ThermalSources.aspx.cs" Inherits="SkyServer.Proj.Color.ThermalSources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Are Stars Thermal Sources?</h1>
      <p>A <em>thermal source</em> is an object whose spectrum looks like a 
      perfect thermal radiation curve. A hot plate heating on a stove is a 
      good thermal source. If you look at such a plate through a spectrograph, 
      you will see a curve like the ones you saw in the computer simulation in 
      Explore 2.</p>
      
      <p>So are stars thermal sources? In Explore 4, you started to find out 
      when you looked at the spectra of a few stars in the SDSS. But you can 
      use a color-color diagram to find out exactly what stars are thermal 
      sources and which are not.</p>
      
      <p>To understand how a thermal source should look on a color-color 
      diagram, imagine looking at two thermal sources (they could be anything, 
      but say they're hot plates heating on a stove). One thermal source is at 
      T = 6000 K (5730 C or 10,340 F) and one is at T = 5000 K (4730 C or 8540 F).
      If you like, you may use the 
<!--<a target="tools" href="physlet/blackbody.aspx">-->
    <a target="offsite" href="http://webphysics.davidson.edu/Applets/blackbody/BlackBody.html">
      stellar temperature simulation</a> you used earlier to see what the 
      thermal radiation curves for these thermal sources look like.
      The thermal radiation curves are shown below. The blue curve is for the  
      6000 K thermal source the red curve is for 5000 K thermal source. If 
      you looked at 
      the two thermal sources with the SDSS's spectrograph, you would see these 
      two curves.</p>
      <img src="images/colormove.jpg">
      <p>If you instead looked at the two thermal sources with the SDSS's camera, 
      you would see images of the two sources. They would have certain magnitudes 
      and colors. The image above helps you figure out what colors the 
      two sources would have in the images. The colored dots mark the 
      wavelengths of the SDSS's ultraviolet, green, and red filters. The 
      graph shows how the SDSS's image gives you three "snapshots" of the thermal 
      radiation curve.</p>
      <p>In both curves, the green-wavelength intensity (green dot) is greater than the 
      ultraviolet-wavelength intensity (purple dot). That is, the green magnitude is <i>less</i> 
      than the ultraviolet magnitude. (Because magnitude decreases as the 
      intensity of light emitted by a star increases, magnitude <i>decreases</i> 
      moving up the y-axis on this graph.) So u-g, which is the difference 
      between the ultraviolet and green magnitudes, is positive for both curves, 
      but it is less for the T = 5000 K curve. Similarly, g-r increases between 
      the T = 6000 K curve and the T = 5000 K curve, although not as much as u-g.</p>

      <table class=question width=600 cellpadding=5 cellspacing=0>          
        <tr>
          <td width="100%"><p><b>Question 4. </b>
          What would you get if you graphed these two thermal sources on 
          a <br>u-g/g-r diagram? What do you think you would get if you added 
          more thermal sources (such as T = 4000 K or 8000 K) to this diagram?
          </p></td>
        </tr>
      </table>


      <p>As a thermal source's temperature increases, its thermal 
      radiation curve changes. As the curve changes, the object's colors 
      also change. Because the SDSS's filters are always at 
      the same wavelengths, though, if one color (such as u-g) decreases, the next 
      color (g-r) will increase. When you make a color-color diagram for thermal 
      sources of different temperatures, you will get a straight line.</p>
      <table class=question width=600 cellpadding=5 cellspacing=0>          
        <tr>
          <td width="100%"><p><b>Question 5. </b>Can 
          all the stars in your color-color diagram be considered thermal 
          sources? Why or why not? If not, which stars are not thermal sources?</p></td>
        </tr>
      </table>
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
      <td><a href="colorcolordiagram.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="conclusion.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
