<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Temperature.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.Temperature" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Classifying by Temperature</div>
<div id="transp">
  <table width="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      
<p>Stars are incredibly big and incredibly far away. There is no way that we could measure their temperatures with a thermometer - 
but still, we can know their temperatures to great accuracy.</p>

<p>From experiments on Earth, we know that all hot objects give off 
light. The objects give off light at many different wavelengths, but each object has a <span class="vocabulary">continuum peak wavelength</span> 
at which they emit more light than at any other wavelength.</p>

<p>The continuum peak wavelength is symbolized by <span class="vocabulary">&lambda;<sub>peak</sub></span> (with the Greek letter "lambda"). We know 
from experiments on Earth that the continuum peak wavelength of light emitted by an object is inversely proportional to its temperature. That 
proportion can be symbolized by the equation:</p>

<img src="images/WiensLawProportion.gif" alt="The equation that relates temperature to continuum peak wavelength. Temperature is proportional to 1 divided by the peak wavelength." />

<p>Notice that because this is an inverse relationship, the longer the peak wavelength, the lower the temperature. Also, remember that the 
continuum refers to the overall shape of a spectrum. A spectrum that was only due to temperature is shown on the left of the image below; the 
spectrum of a real star is shown on the right.</p>

<img src="images/blackbody1.jpg" align="center" width="600" height="276" alt="Comparing an ideal thermal spectrum to the spectrum of a real star. The ideal spectrum is a smooth curve, while the real spectrum has bumps for absorption lines and noise." />


<p>Look at the spectrum of a real star, shown above and to the right. The overall shape of the spectrum peaks at about
4500 &Aring;ngstroms, so its continuum peak wavelength is 4500 &Aring;ngstroms.</p>

      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>

          <td><p><b>Question 8</b>. Which is hotter: a star that peaks at 5000 &Aring;ngstroms or a star that peaks at 6000
&Aring;ngstroms? How do you know?

</p></td>
        </tr>
      </table>

<p></p>

      <a name="ex3"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>
          Explore 4</strong>.

Look at the <a href="spectra.aspx" target="new"><u>spectra of the same seven stars</u></a> you saw earlier (page will open in a new window). 
These are the same seven stars from when you classified by line strength; they are available as a <a href="pdf/7stars.pdf" target="stars">PDF</a> 
              (requires free <a href="http://www.adobe.com/products/acrobat/readstep2.html" target="offsite">Adobe Reader</a>).</p>

<p>For this exercise, you can ignore the zoom-in beneath each panel. For each spectrum, trace the underlying continuum shape - this is what 
the spectrum would look like if it had no emission or absorption lines. Find the continuum peak wavelength for each star. If the peak is not shown on 
the graph then estimate where you think it might peak.</p>


<p>Rank the stars according to peak wavelength of each star's thermal continuum, using the table below.</p>
<center>
          <table border="1" cellspacing="1" width="50%" id="AutoNumber3">
            <tr>
              <td width="70%" align="center"><b>Wavelength</b></td>
              <td width="30%" align="center"><b>Star Number</b></td>
            </tr>
            <tr>
              <td width="70%" align="center">Longest peak wavelength</td>
              <td width="30%">&nbsp;</td>
            </tr>
            <tr>
              <td width="70%" align="center">&darr;</td>
              <td width="30%">&nbsp;</td>
            </tr>
            <tr>
              <td width="70%" align="center">&darr;</td>
              <td width="30%">&nbsp;</td>
            </tr>
            <tr>
              <td width="70%" align="center">&darr;</td>
              <td width="30%">&nbsp;</td>
            </tr>
            <tr>
              <td width="70%" align="center">&darr;</td>
              <td width="30%">&nbsp;</td>
            </tr>
            <tr>
              <td width="70%" align="center">&darr;</td>
              <td width="30%">&nbsp;</td>
            </tr>
            <tr>
              <td width="70%" align="center">Shortest peak wavelength</td>
              <td width="30%">&nbsp;</td>
            </tr>
        </table>
</center>

        </td>
      </tr>
    </table>


      <p></p>

      <table class="exercise" width="600" cellpadding="5" cellspacing="0">
        <tr>
          <td><p><strong>
          Explore 5</strong>. Now, use the inverse relationship between continuum 
          peak wavelength and temperature to rank the stars according to temperature.</p>

          <table border="1" cellspacing="1" width="100%" id="AutoNumber3">
            <tr>
              <td width="33%" align="center"><b>Temperature</b></td>
              <td width="33%" align="center"><b>Star Number</b></td>
              <td width="34%" align="center"><b>Spectral Class</b></td>
            </tr>
            <tr>
              <td width="33%" align="center">Hottest</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%" align="center">&darr;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%" align="center">&darr;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%" align="center">&darr;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%" align="center">&darr;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%" align="center">&darr;</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
            <tr>
              <td width="33%" align="center">Coolest</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
        </table>



<p>In the third column, fill in the spectral class for each star number that you chose when classifying by line strength; use the current scheme, letters 'A' through 'O'.
</p>

        </td>
      </tr>
</table>

</p>

    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="lines.aspx"><img align="left" src="../../images/previous.jpg" alt="Previous page: classifying by line strength" /></a>
      <a href="connection.aspx"><img align="right" src="../../images/next.jpg" alt="Next page: the connection between line strength and temperature" /></a></td>
    </tr>
  </table>
</div>
</asp:Content>
