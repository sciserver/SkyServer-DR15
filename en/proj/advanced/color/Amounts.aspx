<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="Amounts.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.Amounts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<a name="amounts"></a>
<h1>Color and Amounts of Light</h1>

<P>The physical property that magnitude actually measures is radiant flux - the 
amount of light that arrives in a given area on Earth in a given time. Since color 
is measured by magnitude, a star's color also depends on how much light arrives 
at Earth. Radiant flux is the physical basis for color.</p>
<p>The definition of magnitude m in terms of radiant flux F is:</P>
<P>m = -log<sub>2.51</sub>(F/F<sub>Vega</sub>).</P>
<P>The star Vega in the northern hemisphere constellation Lyra is used as the standard 
for the magnitude system, so F<sub>Vega</sub> means the amount of light arriving at 
Earth in a given time from Vega. This definition means that Vega's magnitude is set 
at zero through all filters.</p>
<p>This does <i>not</i> mean that Vega looks the same through 
all filters; it just means that astronomers have agreed to use Vega as the zero point 
for the magnitude scale, much like the freezing point of water is used as the 
zero point for the Celsius temperature scale. There's nothing special about 
Vega that made astronomers choose it as the zero point. They had to choose something... 
so why not Vega?</p>

<a name=history></a>
<table align=right width=200 border=1>
 <tr>
   <td><a href="#history" onclick="window.open('maghistory.html','sidebar','width=500,height=600,resizeable,scrollbars');">
   <img src="../../images/didyouknow.jpg" align=left></a></td>
 </tr>
</table>

<p>The negative sign in the definition ensures that 
brighter stars have smaller magnitudes. So if Earth receives less light from a 
certain star than from Vega (through a given filter), that star's magnitude will be 
positive. If Earth receives more light from a certain star than from Vega, that 
star's magnitude will be negative.</p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>

<td><p><strong>Practice 1</strong>. The star Antares in the constellation Scorpius has 
a yellow magnitude of 1.2. How much of its light gets to Earth, as compared with Vega? 
The sun has a yellow magnitude of <br>-26. How much of its light gets to Earth, as compared 
with Vega?</p>
</td>

<td align="center" width="160">
<img src="images/antares.jpg"><br>
<span class='caption'>Antares</span><br>
<font size=-2>Copyright Bernd Nies<br>
Courtesy of the<br> <a href="#ex2" onclick="window.open('http://aida.astroinfo.org','offsite');">Astronomical Image Data 
Archive</a>.</font></td>

</tr>
</table>

<p>Remember that magnitude is a logarithmic quantity; a magnitude four star emits 2.51 
<i>times</i> as much light as a magnitude five star. This allows you to define color in 
terms of the amount of light given off by a star.</p>

<p>A rule of logarithmic quantities, true for a logarithm with any base number 
(whether 10, e, or 2.51), is that log (x) - log (y) = log (x/y). Color is a difference in 
magnitudes; g-r is the difference between a star's green magnitude and the same star's red 
magnitude. Since magnitude is the log<sub>2.51</sub> of radiant flux, you can 
express color in terms of radiant flux as g-r = -log<sub>2.51</sub> (F<sub>green</sub>) + 
log<sub>2.51</sub> (F<sub>red</sub>), which is equal to -log<sub>2.51</sub> 
(F<sub>green</sub>/F<sub>red</sub>).</p>

<blockquote>
<p>So if a star has a G-R color of 0.8, then</p>

<p>-log<sub>2.51</sub> (F<sub>green</sub>/F<sub>red</sub>) = 0.8,</p>

<p>or</p>

<p>log<sub>2.51</sub> (F<sub>green</sub>/F<sub>red</sub>) = -0.8,</p>

<p>which, by the definition of log, means that</p>

<p>(F<sub>green</sub>/F<sub>red</sub>) = 2.51<sup>-0.8</sup>.</p>

<p>Flip both sides of the equation to get:</p>

<p>(F<sub>red</sub>/F<sub>green</sub>) = 2.51<sup>0.8</sup> = 2.08</p>

</blockquote>

<a name="#example1"></a>
<p>In other words, a star with G-R = 0.8 emits 2.08 times as much red-wavelength light as 
green-wavelength light.</p>

<p>Click <a href="#example1"
onclick="window.open('example1.html','example','resizeable, scrollbars, width=650, height=700');">
here</a> for another example.</p>

<h1>What is Color?</h1>

<p>So far you've looked at stars and calculated their astronomical colors. But what 
exactly is this thing we've been calling "color"? What is it about a star that 
makes it red or blue or yellow? Click Next to find out.</p>

</td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><A href="definition.aspx"><IMG src="../../images/previous.jpg" align=left></A>
<A href="whatis.aspx"><IMG src="../../images/next.jpg" align=right></A></td></tr>


</table>

</div>
</asp:Content>
