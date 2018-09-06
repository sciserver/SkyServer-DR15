<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Absorption2.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.Absorption2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Absorption and Emission Lines</div>
<div id="transp">
  <table width="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

<p>Even though hydrogen has only one electron, the electron can jump between many different energy levels. The table below shows the 
wavelength of light that will be emitted or absorbed for a transition between one energy level and another. Read the table by reading 
down from one level at the top and to the right from one level at the left. For example, a transition between n=2 and n=1 requires that 
a photon of wavelength 1216 &Aring;ngstroms be emitted or absorbed.</p>

<table width="600" border="1">
  <tr>
    <td>&nbsp;</td>
    <th align="center">n=1</th>
    <th align="center">n=2</th>
    <th align="center">n=3</th>        
    <th align="center">n=4</th>    
    <th align="center">n=5</th>
  </tr>
  <tr>
    <th>n=1</th>
    <td align="center">-</td>
    <td align="center">1216 &Aring;</td>
    <td align="center">1026 &Aring;</td>
    <td align="center">973 &Aring;</td>
    <td align="center">950 &Aring;</td>
  </tr>
  <tr>
    <th>n=2</th>
    <td align="center">-</td>
    <td align="center">-</td>
    <td align="center">6563 &Aring;</td>
    <td align="center">4861 &Aring;</td>
    <td align="center">4340 &Aring;</td>
  </tr>
  <tr>
    <th>n=3</th>
    <td align="center">-</td>
    <td align="center">-</td>
    <td align="center">-</td>
    <td align="center">18,756 &Aring;</td>
    <td align="center">12,821 &Aring;</td>
  </tr>  
</table>

<p>The graph below is another way of presenting the information in the table. The label on the y-axis shows the 
energy level. The arrows show the jumps in energy level for possible electron transitions. </p>

<img src="images/atomictransitions.jpg" align="middle" width="500" height="250" alt="A graph of atomic transition energy jumps. It shows arrows going up from a lower energy level to a higher energy level. The arrows are labeled with the same wavelengths as in the table above." />

<p>The transition that is most useful to astronomers is the one in the middle, with electrons jumping up from n=2 or 
down into n=2. These transitions are called the <span class="vocabulary">Balmer series</span>, after the physicist who 
first studied them. The reason that they are so useful is that the wavelengths emitted or absorbed are wavelengths of 
visible light.</p>

<p>How does this apply to spectra? Remember the spectra you classified in the last activity. If you look at <a href="../../../tools/quicklook/quickobj.aspx?ra=170.25354041&dec=-1.18755065" 
target="quicklook">one of the spectra</a> again, you should notice an obvious valley at about 6500 &Aring;ngstroms - 
the wavelength of the first transition in the Balmer series (n=3 to n=2). Astronomers call this the <span class="vocabulary">H&alpha; (Hydrogen-alpha)</span> 
transition, and they call its signature in a star's spectrum the <span class="vocabulary">H&alpha; line</span>.</p>

<table class="question" width="600" cellpadding="5" cellspacing="0">
        <tr>
          <td><p><b>Question 5</b>. The spectrum below is the spectrum of a typical star. Click the link to see 
          <a href="../../../tools/quicklook/quickobj.aspx?plate=280&mjd=51612&fiber=202" target="quicklook">the star's Quick Look entry</a>. 
          Below the spectrum is a zoomed-in view of the area around 6560 &Aring;ngstroms.</p>

      <table border=1>
        <tr>
          <td><a href="images/star3.jpg" target="new"><img src="images/star3-med.gif" width="600" alt="The spectrum of a star with large valleys for the Balmer series (H&alpha;, H&beta;, H&gamma;, H&delta). The area around H&alpha; is enlarged." />
          </a></td>
        </tr>
        <tr>
          <td align="center"><font class="caption">The spectrum of a typical star. Click on the spectrum to see a larger version.</font></td>
        </tr>
      </table>


<p>You saw in the table and graph above that the H&alpha; transition is at 6563 &Aring;ngstroms. So, the zoomed-in view shows the 
H&alpha; line for the spectrum. Does this star whose spectrum is shown here have more light at the H&alpha; wavelength, or less light? 
How do you know?</p></td>
        </tr>
</table>
</p>

<table class="question" width="600" cellpadding="5" cellspacing="0">
        <tr>
          <td><p><b>Question 6</b>. Given your answer to Question 5, is the H&alpha; line in this spectrum an <span class="vocabulary">
          emission line</span> or an <span class="vocabulary">absorption line</span>? How do you know?</p></td>
        </tr>
</table>


<p>An H&alpha; absorption line is produced when hydrogen absorbs light, so there must be hydrogen in the star. When you see an absorption 
line, what is actually happening is that the hydrogen in the outer layer of the star is absorbing energy coming from deeper 
in the star.</p>

<p>But the discovery you have made is amazing - you have connected what you observe in a distant star to what you 
observe about atoms studied here on Earth. You have identified an element in a star, and it is the same as an element known 
from here on Earth.</p>

<!--
<p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Question 4</b>. An atom must absorb an ultra-violet photon to produce a Lyman series absorption line, an
optical photon for the Balmer series, and an infrared photon for the Paschen series.  Why does the Lyman series requires
ultra-violet photons opposed to optical or infrared?  (Hint: Help yourself visualize the reason by looking at the energy
level diagram above.)</p></td>
        </tr>
      </table>

</p>
<p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>

          <td><p><b>Question 5</b>. In the diagram above, the dashed gray line towards the top represents the highest energy
level allowed for hydrogen. What happens if an electron absorbs a photon with enough energy to place the electron above the
dotted line? </p></td>
        </tr>
      </table>
</p>
<p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>

          <td><p><b>Question 6</b>. The image below shows the spectrum of a star with a zoom-in of the H-alpha line below it.
Which atomic transition causes the H-alpha line? </p></td>
      </table>

</p> -->

      <table class="question" width="600" cellpadding="5" cellspacing="0">
        <tr>
          <td><p><b>Question 7</b>. Look again at the spectrum from Question 4. Can you find the lines labeled H&beta;, H&gamma;, and H&delta;? 
          What transitions do you think these lines correspond to?</p></td>
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
      <td><a href="absorption.aspx"><img align="left" src="../../images/previous.jpg" alt="Previous page: atomic absorption" /></a>
      <a href="lines.aspx"><img align="right" src="../../images/next.jpg" alt="Next page: classifying by line strength" /></a></td>
    </tr>
  </table>
</div>
</asp:Content>
