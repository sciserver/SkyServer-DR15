<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="Spectra.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.Spectra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<a name="observed"></a>
<h1>Spectra</h1>

<p>You have been looking at graphs of intensity (amount) of light emitted 
by stars as a function of the wavelength of the light. Astronomers have a name for 
such a graph: a <em>spectrum</em> (the plural is "spectra"). Astronomers 
frequently measure spectra of stars, and use these measurements to study stars. 
So far, the SDSS has observed spectra for <%=globals.NSpec%> objects in the sky. Here is a 
spectrum of a typical star seen by the SDSS:</p>

<table border="0" align=center cellpadding="0" cellspacing="0">
  <tr>
	<td>
		<A href="#graph" 
         onclick="window.open('images/full_582096517151653917.gif','tools','width=850,height=680,resizable,scrollbars');">
         <IMG src="images/582096517151653917.gif">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to see it full size</span></p>
    </td>
  </tr>
</table>
<p></p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Practice 4</strong>. Find the peak wavelength of the spectrum above - 
the wavelength where the general trend of the spectrum seems to be at its maximum. 
From the peak wavelength you found, 
calculate the average temperature of the star.</p>
</td></tr>
</table>

<p></p>

<a name="exp4"></a>
<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Explore 4</strong>. Look through the spectra of 10-20 stars in the 
SDSS data using the <a href="../../../tools/getimg/plate.aspx" target="tools">
Plate Browser</a> tool. Choose a plate, then click on the links for 
some of the stars on that plate to see their spectra. From the thermal peak of the 
spectra, calculate the temperature of the stars. Are most of these stars hotter or 
cooler than the Sun?</p>

<p>Use <a href="workbooks/explore4.xls" target="workbooks">SkyServer workbook</a> to keep track of the 
stars you find.</p>

<p><a href="../../../tools/getimg/plate.aspx" target="tools">Launch the Plate Browser</a></p>
</td></tr>
</table>

<a name="warning"></a>
<h1>A Word of Warning</h1>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
  <td><p><strong>Question 4.</strong> How does the observed spectrum above compare to the 
  thermal radiation curves you saw in the last section? What are the similarities 
  and differences?</p></td>
  </tr>
</table>

<p>The broad shape of a star's spectrum is caused by thermal radiation, but stars 
also emit light for another reason. When electrons 
in the star's atoms lose energy, they release a photon of light. All the photons 
emitted from electrons have the same wavelength, so stars can produce a lot of 
light in just a few wavelengths. These emitted light waves are the source of the peaks 
in the spectrum above. Similarly, when electrons in a star's atom gain energy, 
they absorb a photon, leaving a valley in their observed spectrum. When you 
see a spectrum for a star, you can easily sort out the contributions of thermal 
radiation and non-thermal radiation.</p>

<p>However, the color of a star is determined by the wavelengths of <i>all</i> the light the 
star gives off, from both thermal and non-thermal radiation. Therefore, if you estimate a star's 
color from its thermal radiation curve, you may not get the right answer.</p>

<p>If the thermal radiation curve for a star closely 
approximates the observed spectrum - that is, if the peaks and valleys aren't too 
high - the star is called a "thermal source." If the thermal radiation curve 
does not approximate the observed spectrum - if the peaks and valleys are high - 
the star is called a "non-thermal" source. You can see from the spectrum above 
that some of the peaks and valleys can be very high, so many stars will be 
non-thermal sources.</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
  <td><p><strong>Question 5.</strong> Do you think the star whose spectrum 
  is shown above is a thermal source? Why or why not?</p></td>
  </tr>
</table>

<p>In the next few pages, you will learn a simple way to tell thermal sources 
from non-thermal sources.</p>

<a name="3995000"></a>
<h1>The Other <%=globals.NStarNoSpec%> Stars</h1>

<p>So, if you have the spectrum of a star, you can find its temperature from the peak 
wavelength. But SDSS has taken spectra for only about <%=globals.NSpec%> stars, while 
it has taken digital images of more than <%=globals.NStarNoSpec%>. How can astronomers find temperatures 
of those other stars?</p>

<p>Even without knowing the details of a star's spectrum, astronomers can still draw 
conclusions about the star's temperature. In the next section, you will learn how SDSS's 
five light filters allow astronomers to learn which stars are hottest, which are coolest, and 
which are somewhere in the middle.</p>

</td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><A href="peakwavelength.aspx" ><IMG src="../../images/previous.jpg" align=left>
<A href="colorcolor.aspx" ><IMG src="../../images/next.jpg" align=right></A></td></tr>

</table>
<P>

</div>
</asp:Content>
