<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Lines.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.Lines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Classifying by Line Strength</div>

<div id="transp">
  <table width="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      


<p>Now that you know what the lines mean and how to identify them, try classifying stars based on the 
"strength" of their hydrogen absorption lines, specifically the H&alpha; line. The spectrum below is the same 
spectrum as in Question 5, again with a zoom-in of the spectrum's H&alpha; line shown below it.</p>

      <table border="1"><tr><td>
<a href="images/star3.jpg" target="new"><img src="images/star3-med.gif" width="600" alt="The spectrum of a star with large valleys for the Balmer series (H&alpha;, H&beta;, H&gamma;, H&delta). The area around H&alpha; is enlarged." /></a>
</td></tr>
      <tr><td align="center"><font class="caption">Click on image to see a larger version</font></td></tr></table>

<p>Notice that the H&alpha; absorption line dips down vertically, but it is not a straight drop; the line has some width. 
The two triangles in the zoom-in mark two spots on the continuum spectrum. If you drew a line between the centers of the two triangles, you 
would see approximately how much light would have been emitted by the star if it had no hydrogen.</p>

<p>If you colored in the area between that line and the actual spectrum, you would see the amount of light "missing" from 
the spectrum due to hydrogen absorption. This amount is referred to as the <span class="vocabulary">strength</span> of the 
absorption line.</p>

<p>The strength of an absorption line depends not only on the depth of the valley, but also on its width. 
You can get a rough measure of the strength of the H&alpha; line by counting the number of grid squares you filled in when 
you colored in the area below the line connecting the triangles.</p>

<p>Here is an example of how the spectrum looks with the grid squares filled in, as a 
    <a href="http://www.adobe.com/products/acrobat/readstep2.html">PDF</a> 
    or as an image (links open in a new window):</p>

<table width="40%">
  <tr>
    <td>
        <a href="pdf/filled_example.pdf" target="example">
        <img src="../../../../images/pdf_icon.gif" alt="Click here to view an example of the spectrum with squares filled in, as a PDF file" />
        </a>
    </td>
    <td>
        <a href="images/filled_example.jpg" target="example">
        <img src="../../../../images/jpg_icon.jpg" alt="Click here to view an example of the spectrum with squares filled in, as an image" />
        </a>
    </td>

  </tr>
</table>

      <table class="exercise" width="600" cellpadding="5" cellspacing="0">
        <tr>
          <td><p><strong>
          Explore 2</strong>. 
Look at the <a href="spectra.aspx" target="new"><u>spectra of these seven stars</u></a> (the page will open in a new window). You 
can also see the seven stars as a <a href="swf/7stars.swf" target="stars">FlashPaper</a> File (requires free <a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" target="offsite">
Flash Player</a>) or as a <a href="pdf/7stars.pdf" target="stars">PDF</a> (requires free <a href="http://www.adobe.com/products/acrobat/readstep2.html" target="offsite">Adobe Reader</a>).</p>

<p>Using the spectra, rank the seven stars according to the strength of their H&alpha; absorption lines.</p>

<p>If you can't rank them all 
easily, try coloring in the area between the line connecting the triangle centers and the actual spectrum, then count the number of grid squares filled - 
just like you saw in the example above. The number of filled grid squares is a measure of the line strength.</p>

<p>Rank the stars by writing each star number in the appropriate place in the second column of the table below.</p>

          <table border="1" cellspacing="1" width="100%" id="AutoNumber3">
            <tr>
              <td width="33%" align="center"><b>Line Strength</b></td>
              <td width="33%" align="center"><b>Star Number</b></td>
              <td width="34%" align="center"><b>Spectral Class</b></td>
            </tr>
            <tr>
              <td width="33%" align="center">Strongest line<br />(greatest line area)</td>
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
              <td width="33%" align="center">Weakest line<br />(least line area)</td>
              <td width="33%">&nbsp;</td>
              <td width="34%">&nbsp;</td>
            </tr>
        </table>

        </td>
      </tr>
     </table>
        <p></p>

      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>
          Explore 3</strong>. Originally, astronomers classified those stars with the strongest hydrogen lines as 'A' stars, stars with the next strongest
        lines as 'B' stars, the next strongest 'C' and so on. Eventually, they realized that some letters were unnecessary, and dropped 
        them from the classification system. The letter assigned to a star is called its <span class="vocabulary">spectral class</span>.</p>

        <p>The spectral classes that remain are: A,B,F,G,K,M and O. In the third column of the table from Explore 2, write one of these 
        spectral class letters for each star in the table, in that order (the strongest line is A, etc.). There is only one star of each class in this data.</p>



	</td>
      </tr>
</table>

</p><p>


<p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="absorption2.aspx"><img align="left" src="../../images/previous.jpg" alt="Previous page: absorption lines" /></a>
      <a href="temperature.aspx"><img align="right" src="../../images/next.jpg" alt="Next page: classifying by temperature" /></a></td>
    </tr>
  </table>
</div>
</asp:Content>
