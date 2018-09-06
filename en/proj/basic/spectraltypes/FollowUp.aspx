<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="FollowUp.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.FollowUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Research Challenges</div>
<div id="transp">
  <table width="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>

	<h1>More Temperature and Line Strength</h1>
	<p>Different elements absorb light, and thereby produce absorption lines, at different temperatures. You found in 
	previous exercises that a star needs just the right temperature for the H&alpha; transition to occur.</p>
	
	<p>Because absorption lines require that electrons start at a certain energy level, different absorption lines 
	are prominent at different temperatures. The graph below shows the relative line strength for a given 
	element versus temperature.</p>
	
<table width="450" align="center">
<tr><td>
<img src="images/linestrength.gif" alt="A graph of relative line strength produced by different elements versus temperature. The curve for hydrogen peaks near spectral class A." />
</td></tr>
<tr><td>
<p class="caption">Line strength versus temperature for several elements whose absorption lines are commonly seen in stellar spectra</p>
</td></tr>
</table>

	<p>Look back at your answer to Question 12 - the spectral class with the strongest 
	hydrogen absorption. Does that answer make sense when you compare it with what you see in the graph?</p>



      <table class="rchallenge" width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Research Challenge 1. </strong> 

So far in this project, you have found the spectral class with the right temperature for H&alpha; absorption. 
Do the same for neutral sodium (Na). Look at the <a href="spectra.aspx" target="new">stellar spectra</a> again, but this 
time look specifically at the strength of the neutral sodium line<sup>*</sup> at 5890 Angstroms. Which type of star 
shows the strongest sodium absorption? It may help to look through the spectra some other stars, and the 
<a href="../../../tools/getimg/plate.aspx" target="tools">Plate Browser</a> will help you do that.</p>

<p><font size="-1"><sup>*</sup> <i>The neutral sodium line is actually two very closely spaced lines at 5890 and 5896
Angstroms.</i></font></p>
</td>
</tr>
      </table>
          
</p>
	<h1>Another Way to Classify</h1>

<p>We have used two different methods to classify stars - the hydrogen lines (H&alpha;, H&beta;, H&gamma;, H&delta;) and 
the continuum peak wavelength. But professional astronomers usually use a slightly different method. They look for the 
presence (or absence) of several spectral lines to classify stars. </p>


      <p>The table below lists some of the spectral lines that they look for, and the lines' approximate 
      locations in the electromagnetic spectrum.</p>

<center>
      <table border="1" cellspacing="2" width="81%" id="Table1">
        <tr>
          <td><p class="caption">Spectral Lines</p></td>
          <td><p class="caption">Wavelengths (&Aring;ngstroms)</p></td>
        </tr>
        <tr>
          <td><p>Hydrogen: H<sub><font face="symbol">a</font></sub>, 
          H<sub><font face="symbol">b</font></sub>, H<sub><font face="symbol">g</font></sub></td>
          <td><p>6560, 4860, 4340</p></td>
        </tr>
        <tr>
          <td><p>Ionized Calcium</p></td>
          <td><p>3970, 3930 (labeled H and K)<br>8490, 8540, 8660 (labeled Ca II)</p></td>
        </tr>

        <tr>
          <td><p>Titanium Oxide</p></td>
          <td><p>lots of lines from 4900 - 5200, 5400 - 5700, 6200 - 6300, 6700 - 6900</p></td>
        </tr>
        <tr>
          <td><p>G Band</p></td>
          <td><p>4220</p></td>
        </tr>
        <tr>
          <td><p>Sodium </p></td>
          <td><p>5890</p></td>
        </tr>
        <tr>
          <td><p>Helium (neutral - labeled He)</p></td>
          <td><p>4200</p></td>
        </tr>
        <tr>
          <td><p>Helium (ionized - labeled He+)</p></td>
          <td><p>4400</p></td>
        </tr>
      </table>
</center>

<p>Once they have found the spectral lines they need, they classify the stars based on what spectral lines 
are present. Here are the lines they look for to identify what spectral class a star belongs to:</p>

      <table border="1" cellspacing="2" cellpadding="2">
        <tr>

          <td><p class="caption">Spectral Type</p></td>
          <td><p class="caption">Spectral Lines</p></td>
        </tr>

        <tr>
          <td><p>O</p></td>
          <td><p>Ionized helium</p></td>
        </tr>

        <tr>
          <td><p>B</p></td>
          <td><p>Helium, some hydrogen</p></td>
        </tr>

        <tr>
          <td><p>A</p></td>
          <td><p>Strong hydrogen, some ionized metals such as calcium</p></td>
        </tr>

        <tr>
          <td><p>F</p></td>
          <td><p>Hydrogen, ionized calcium, iron</p></td>
        </tr>

        <tr>
          <td><p>G</p></td>
          <td><p>Neutral and ionized metals, especially calcium; methine</p></td>
        </tr>

        <tr>
          <td><p>K</p></td>
          <td><p>Neutral metals, sodium
          </p></td>
        </tr>

        <tr>
          <td><p>M</p></td>
          <td><p>Strong titanium oxide (TiO), very strong sodium</p></td>
        </tr>
      </table>

      <p></p>

    <table class="rchallenge" width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Research Challenge 2. </strong>

Use the information in the tables above to classify the following stars (click the links to open the Quick Look tool):
<br>
<center>
<table border="1" id="AutoNumber3">

<tr>
<td width="50" align="center"><b>Star</b></td>
<td width="75" align="center"><b>Type</b></td>
<td width="50" align="center"><b>Star</b></td>
<td width="75" align="center"><b>Type</b></td>
</tr>

<tr>
<td align="center"><a href="../../../tools/explore/obj.aspx?plate=342&mjd=51691&fiber=500" target="tools"">1</a></td>
<td>&nbsp;</td>
<td align="center"><a href="../../../tools/explore/obj.aspx?plate=281&mjd=51614&fiber=139" target="tools"">5</a></td>
<td>&nbsp;</td>
</tr>

<tr>
<td align="center"><a href="../../../tools/explore/obj.aspx?plate=298&mjd=51955&fiber=293" target="tools"">2</a></td>
<td>&nbsp;</td>
<td align="center"><a href="../../../tools/explore/obj.aspx?plate=330&mjd=52370&fiber=529" target="tools"">6</a></td>
<td>&nbsp;</td>
</tr>

<tr>
<td align="center"><a href="../../../tools/explore/obj.aspx?plate=282&mjd=51658&fiber=67" target="tools"">3</a></td>
<td>&nbsp;</td>
<td align="center"><a href="../../../tools/explore/obj.aspx?plate=295&mjd=51985&fiber=545" target="tools"">7</a></td>
<td>&nbsp;</td>
</tr>

<tr>
<td align="center"><a href="../../../tools/explore/obj.aspx?plate=330&mjd=52370&fiber=566" target="tools"">4</a></td>
<td>&nbsp;</td>
<td align="center"><a href="../../../tools/explore/obj.aspx?plate=277&mjd=51908&fiber=206" target="tools"">8</a></td>
<td>&nbsp;</td>
</tr>

</table>
</center>
</p>

<p>If you would like to classify more stars, you can find many more with the 
<a href="../../../tools/getimg/plate.aspx" target="tools">Plate Browser</a>.</p>

</td></tr></table>

      
      <p></p>

</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="connection.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="../../../"><img align="right" src="../../images/home.gif"></a>
      </td>
    </tr>
    <tr><td><p><font size=-3>Graph courtesy of Nick Strobel's <a href="http://www.astronomynotes.com">Astronomy Notes</a> (<a href="http://www.astronomynotes.com/copyright.htm">copyright notice</a>).</FONT></p></td></tr>
    <tr><td><p><font size=-3>Project designed by Kristine Washburn, Stacy Palen, Rich Plotkin, and Robert Sparks</FONT></p></td></tr>
    <tr><td><p><font size=-3>Questions? Comments? Suggestions? E-mail 
    the <a href="mailto:raddick@pha.jhu.edu?subject=Feedback on Basic Spectral Types Project">web designer</A>.</FONT></p></td></tr>    
  </table>
</div>
</asp:Content>
