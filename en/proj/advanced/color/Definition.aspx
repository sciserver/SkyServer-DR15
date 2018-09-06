<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="Definition.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.Definition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>The Definition of Color in Astronomy</h1>

<table width=200 align=right border=1>
  <tr><td><img src="images/multicolor2.jpg"></td></tr>
</table>

<p>In the last section, you looked at the colors of some stars in the SDSS database. 
You may have classified them as red, blue, yellow, or white. But you may have had trouble figuring 
out exactly what color some of the stars were. Was it red or orange? Yellow or white? 
Color is a subjective judgment; what one person calls "blue" may be a different 
shade than another person's "blue."</p>

<p>If astronomers are going to learn anything from star color, they first need to 
have a definition of color that everyone can agree on; a measurement that everyone can 
make to compare the colors of different stars. The measurement they chose is the one 
you found in the last section: color is the difference in magnitude between two filters.</p>

<h1>Magnitude</h1>

<p>Magnitude is a number that measures the brightness of a star or galaxy.
In magnitude, higher numbers correspond to fainter objects, lower numbers to brighter 
objects; the very brightest objects have negative magnitudes.</p>

<a name=try2></a>
<table align=left width=100 border=1>
 <tr>
   <td><a href="#try2" onclick="window.open('try2.html','sidebar','width=500,height=520,resizeable,scrollbars');">
   <img src="../../images/trythis.jpg" align=left></a></td>
 </tr>
</table>


<p>An increase of one 
number in magnitude corresponds to a decrease in brightness by a factor of about 
2.51 - a magnitude five object is 2.51 times fainter than a magnitude four object. 
The sun has magnitude <br>-26. The brightest star in the Northern sky, Sirius, has 
magnitude <br>-1.5. The faintest object you can see with your eyes has a magnitude of 
about 6; the faintest object the SDSS telescope can see has a magnitude of about 23. 
If you're curious about the magnitudes of other famous stars, take a look at this 
table of the <a href="#try2"
onclick="window.open('http://www.astro.utoronto.ca/~garrison/oh.html','offsite');">314 brightest stars</a>.</p>

<p>When you say that a star has a certain magnitude, you must specify the color 
that the magnitude refers to. The magnitudes given above are magnitudes for yellow light.</p>

<p>SDSS measures magnitudes in five different colors by taking images through five 
color filters. A filter is a kind of screen that blocks out all light except for 
light with a specific color. The SDSS telescope's filters are green (g), red (r), 
and three colors that correspond to light not visible to the human eye: ultraviolet (u), 
and two infrared wavelengths (i and z). On SkyServer, the five magnitudes (through the 
five filters) of a star are symbolized by u, g, r, i, and z. The astronomers who 
planned the SDSS chose these filters to view a wide range of colors, while 
focusing on the colors of interesting celestial objects.</p>

<p>Color is symbolized by subtracting the magnitudes: u-g, g-r, r-i, and so on. 
Remember that all these quantities involve magnitude, so they <i>decrease</i> with 
increasing light output. A star with a high g-r color is redder than a star with a low g-r color.</p>

</td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><A href="explore.aspx"><IMG src="../../images/previous.jpg" align=left></A>
<A href="amounts.aspx"><IMG src="../../images/next.jpg" align=right></A></td></tr>


</table>

</div>
</asp:Content>
