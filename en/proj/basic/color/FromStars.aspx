<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="FromStars.aspx.cs" Inherits="SkyServer.Proj.Color.FromStars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Light from Stars</h1>
      <table border="2" cellpadding="0" cellspacing="0" width="39%" id="AutoNumber2" align="right">
        <tr>
          <td width="100%">
          <img border="0" src="images/4000star.jpg" width="345" height="247"></td>
        </tr>
        <tr>
          <td width="100%">
          <p class="caption" align="center">A Star with a peak wavelength of 
          4000 Angstroms</td>
        </tr>
      </table>
      <p>Because stars emit light with different wavelengths, 
      they have different colors. Stars do not just emit one wavelength 
      of electromagnetic radiation, but a range of wavelengths. If you look 
      at the amount of light a star gives off at different wavelengths, you 
      would get a graph like the one shown to the right.</p>
      <p>The wavelength at which a star emits the most light is called the 
      star's peak wavelength. The diagram on the right shows that this star 
      has a peak wavelength of 4000 Angstroms.</p>
      <p>&nbsp;</p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 2.</strong> What color would this star 
          appear to your eyes? Would its g-r astronomical color be greater 
          than or less than zero?<br>
          HINT: Remember that the magnitude scale is reversed, so brighter 
          objects have lower magnitudes!</p></td>
        </tr>
      </table>      
      <p>So now you know that stars have different colors because they have 
      different peak wavelengths of light. But <i>why</i> do stars have 
      different peak wavelengths? In the next Explore exercise, you will 
      discover for yourself.</p>
      <h1>A Simulation of Star Light</h1>
      <p>Imagine you are observing light coming from a star. You use a 
      prism to spread the light out from shortest wavelength to longest 
      wavelength. (If you haven't tried the "Try This" activity where you 
      look at light reflected off a compact disc (CD), you should try it now.)
      After you spread out the light into wavelengths, you then use an 
      electronic camera to measure how much light of each wavelength (red, 
      yellow, infrared, etc.) is present in the light coming from the star.</p>
      
      <table border=1 width=250 align=right>
        <tr>
          <td><img src="images/sidespectro.jpg"></td>
        </tr>
        <tr>
          <td><p align=center class=caption>The SDSS's spectrograph, viewed from the side</p></td>
        </tr>
      </table>
      
      <p>This device - a prism plus an electronic camera - is called a 
      spectrograph, and it is one of the most useful tools in astronomy. 
      A graph created by a spectrograph measures the intensity of 
      light versus wavelength; this graph is called a spectrum 
      (the plural is spectra). By the time the SDSS ends in 2007, it 
      will have measured over 1 million spectra.</p>
      <p>The best way to find out what caused a star's color would be to conduct experiments 
      on a single star, changing some of its properties and observing the resulting color. Of 
      course, astronomers can't do experiments on stars, which are huge, complex, and 
      unbelievably far away.</p>
      <p>Since you can't do a controlled experiment, you will try a computer simulation 
      instead. The simulation below models what the spectrum and the visual color 
      of a star would look like as you changed the star's temperature.</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Explore 3.</b> Open the 
          <a target="_blank" href="physlet/blackbody.html">
          stellar temperature simulation</a>.
          You will see the spectrum of a computer-simulated star. On the left, 
          you will see a simulation of what the star would look like. You can 
          click on any of the temperature buttons to see a simulated spectrum, 
          or you can enter you own temperature in the box.</p>
          <p>Do you notice a relationship 
          between the spectrum's peak wavelength and the simulated star's 
          temperature? What temperature 
          gives a peak wavelength in the blue region of the spectrum? What 
          color is the star? Do the peak wavelength and color match?</p>
          <p>Find a star with a peak wavelength in the red region of the spectrum. 
          What color is it? Find the peak wavelength of a star that 
          appears red. Where is the peak wavelength?</p>
          <p>Human body temperature is about 
          310K. Where is the peak wavelength of a human body? Why don't you 
          glow like a star?<br>HINT: try decreasing the temperature slowly until you get to 310 K. 
          How does the simulated color change?</p>
          <p>Challenge Question: Can you 
          find any temperature that would appear green? Why or why not?</p></td>
        </tr>
      </table>
      <p>On the next page, you'll learn more about how a star's temperature determines 
      its color.</p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="whatiscolor.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="colorandtemp.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
