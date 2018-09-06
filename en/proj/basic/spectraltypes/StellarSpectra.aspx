<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="StellarSpectra.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.StellarSpectra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Spectra of Stars</div>

<div id="transp">
  <table width="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

	<p> A <span class="vocabulary">spectrum</span> (the plural is <i>spectra</i>) is a graph of the amount of light something gives 
	off (how bright the object is) at different wavelengths. In the spectra of stars, we frequently do not know the 
	distances to the stars, so a star's spectrum shows how bright it appears from Earth.</p>
	
	<p>The Sloan Digital Sky Survey (SDSS) measures wavelength in units of &Aring;ngstroms (symbol &Aring;), 1 &Aring;ngstrom = 10<sup>-10</sup> 
	meters. The wavelengths of SDSS spectra go from around 4000 &Aring; (just into ultraviolet light) to 9000 &Aring; 
	(just into infrared light). The scale for the amount of light is complicated, but higher numbers are brighter.</p>
	
	<p>The image below shows a typical SDSS spectrum with some labels to point out several features. Study the image; the text 
	below it describes some of its features.</p>

<p><img src="images/SpectrumGuide.jpg" alt="An image of a spectrum, with continuum peak, an absorption line, and noise labeled." /></p>

<p>Some features of the spectrum are:</p>
<ul>
  <li><span class="vocabulary">Continuum peak</span> - the top of the broad "hill" in the spectrum</li> 
  <li><span class="vocabulary">Absorption line</span> - one of the narrow "valleys" in the spectrum</li>
  <li><span class="vocabulary">Noise</span> - some small random fluctuation in the spectrum; noise is usually 
          much smaller than the absorption lines</li>
</ul>

<p>The spectrum of a star is composed mainly of <span class="vocabulary">thermal radiation</span> that produces a 
continuous spectrum. The star emits light over the entire electromagnetic spectrum, from gamma rays to 
radio waves. However, stars do not emit the same amount of energy at all wavelengths.</p>

<p>The peak emission of their thermal radiation (the <i>continuum peak</i> in the spectrum above) comes at a 
wavelength determined by the star's surface temperature &mdash; the hotter the star, the bluer the continuum peak.</p>

<p>An ideal thermal spectrum is shown on the left below. A spectrum of an actual star is shown on the right.</p>

<p>
<img src="images/Blackbody1.jpg" align=center width="600" height="276" alt="An ideal thermal spectrum is a smooth curve; an actual star's spectrum has emission/absorption lines and noise." />
</p><p>

In addition to the continuous spectrum, a star's spectrum includes a number of dark lines (<i>absorption
lines</i>). Absorption lines are produced by atoms whose electrons absorb light at a specific wavelength, causing the
electrons to move from a lower energy level to a higher one.  This process removes some of the continuum being produced by the
star and results in dark features in the spectrum.

</p><p>

In the actual stellar spectrum, shown above on the right, notice how the underlying shape (the <i>continuum</i>) is a thermal
radiation curve with roughly the same peak as the spectrum on the left. The big difference between these two is that an
actual stellar spectrum has absorption lines and noise.</p>

      <p></p>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img align="left" src="../../images/previous.jpg" alt="Previous page: introduction" /></a>
      <a href="studentclasses.aspx"><img align="right" src="../../images/next.jpg" alt="Next page: exploring spectra" /></a></td>
    </tr>

      <td>
    </tr>

  </table>
</div>
</asp:Content>
