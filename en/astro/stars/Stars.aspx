<%@ Page Title="" Language="C#" MasterPageFile="../AstroMaster.master" AutoEventWireup="true" CodeBehind="Stars.aspx.cs" Inherits="SkyServer.Astro.Stars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AstroContent" runat="server">
<div id="title">Stars and Nebulae</div>
<div id="pdflink">
  <a href="stars.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="stars.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600"><tr><td>
<img src="images/1359-1-54.jpg" align="right" width="200" height="200">
<p>
Most of the things you can see in the night sky are stars: a few thousand 
are visible to the unaided eye. A star is a hot ball of mostly hydrogen gas;
the Sun is an example of a typical, ordinary star. Gravity keeps the gas 
from evaporating into space, and pressure due to the star's high 
temperature and density keeps the ball from shrinking. In the core of the 
star, the temperature and densities are high enough to sustain nuclear fusion 
reactions, and the energy produced by these reactions works its way to the 
surface and radiates into space as heat and light. When the fuel for the fusion
reactions is depleted, the structure of the star changes. The process of 
building up heavier elements from lighter ones by nuclear reactions, and adjusting 
the internal structure to balance gravity and pressure, is called stellar evolution.
<br><p>
Looking at a star through a telescope can tell us many of its important properties. 
The color of a star tells us its temperature, and the temperature 
depends on some combination of the star's mass and evolutionary phase. Usually,
observations also allow us to find the luminosity of the star, or the rate at which
it radiates energy as heat and light.
<br><p>
All stars visible to the unaided eye are in our galaxy, the Milky Way.
The Milky Way is system of roughly 100 billion stars, along with a great deal of
interstellar material. The galaxy is shaped like a flattened disk
embedded in a round, faint halo. Gravity keeps the stars from 
drifting away, and the motions of the stars keep the system from falling in 
on itself. The Milky Way has no distinct edge - the distribution of 
stars tapers off gradually with increasing distance from the center. The 
SDSS detects stars more than a million times fainter than can be 
seen with the unaided eye, far enough to see the outer structure of the 
Milky Way. 
<br><p><br />
<a name="hrdiagram"></a>
<h1>Star Colors and Luminosities: The H-R Diagram</h1>


<table align="right" border=1 cellpadding="2" cellspacing="2">
  <tr>
    <td class="sml" align="center"><b>Type</b></td>
    <td class="sml" align="center"><b>Temp (&deg;K)</b></td>
  </tr>
  <tr>
    <td>O</td>
    <td align="center">&gt;25,000</td>
  </tr>
  <tr>
    <td>B</td>
    <td align="center">11,000-25,000</td>
  </tr>
  <tr>
    <td >A</td>
    <td align="center" >7,500-11,000</td>
  </tr>
  <tr>
    <td >F</td>
    <td align="center" >6,000-7,500</td>
  </tr>
  <tr>
    <td >G</td>
    <td align="center" >5,000-6,000</td>
  </tr>
  <tr>
    <td >K</td>
    <td align="center" >3,500-5,000</td>
  </tr>
  <tr>
    <td >M</td>
    <td align="center" >2,200-3,500</td>
  </tr>
  <tr>
    <td >L</td>
    <td align="center" >1,600-2,200</td>
  </tr>
  <tr>
    <td >T</td>
    <td align="center" >&lt;1,600</td>
  </tr>
</table>

<p>
Astronomers often make plots of the luminosities of stars compared to their 
colors. The first such plots were made in the early twentieth century, when
astronomers took spectra of thousands of stars, then placed the spectra into
a sequence of <em>spectral classes</em> based on the appearance of several different features. The classes
of stars were given different letters as names; in order of decreasing temperature, they 
are <em>OBAFGKMLT</em>.

<p>The table to the right shows the spectral classes and the temperatures of stars that 
belong to each class. The hottest stars are class O, while the coolest are class T.
Two astronomers, Ejnar Hertzsprung and Henry Norris Russell, independently started to
wonder what would happen if they compared stars' luminosities to their spectral 
classifications (or, alternatively, to their temperatures). They knew that some stars
were hotter and more luminous than the sun, and that others were cooler and less luminous.
Hertzsprung and Russell found that 90% of the stars fell into a narrow band they termed 
the "main sequence." Today, we call this type of plot a <em>Hertzsprung-Russell</em>
(or <em>H-R</em>) diagram. The graph below is a sample H-R diagram for two star clusters, with 
temperature/spectral class on the x-axis and luminosity on the y-axis. The main sequence is the 
thick band running from the middle left of the diagram to the bottom right.</p>

<table width="561" border="0" cellpadding="2" cellspacing="2" align="center">
  <tr>
    <td><img src="images/hrdiagram2.jpg" alt="An H-R diagram of two star clusters" /></td>
  </tr>
  <tr>
    <td align="center"><p><em>A sample H-R diagram with temperature on the x-axis and luminosity on
         the y-axis*</em></p></td>
  </tr>
</table>

<p>
Astronomers further divide each letter into ten categories from 0 to 9, with 0 
being the hottest star in that spectral class and 9 being the coolest. So, a B1 
star is hotter than a B2 star, and a B9 star is hotter than an A0 star. 
Our own sun is at the "hot" end of the G range with a surface temperature of 
5,770&deg; K; therefore, it's called a G2 star.
<br><p>
Spectral classes give us a convenient way to refer to most types of stars - from O0,
the hottest at over 25,000&deg; K, down to T9, the coolest failed stars at 1,000&deg;
K. Each spectral type of star is associated with a specific color: G-type 
stars like the sun are yellow, M-type stars appear red, and B-type stars 
are bluish. Thus, this system of letters and numbers tells us where a star is on 
the horizontal (color or temperature) axis of the H-R diagram.
<br><p>

Two alternative systems tell us approximately where on the vertical (luminosity) axis 
a star can be found. One system uses absolute magnitude, a measure of luminosity 
derived from the apparent magnitude, or brightness of the star seen from Earth. A star's 
absolute magnitude is how bright it would appear when seen from a distance of 10 parsecs (33 light-years). 
The other system uses roman numerals, with the lowest numeral (I) for the most luminous stars 
(supergiants) and the highest numeral (V) for the less luminous (main sequence).
<br />

<!--
This was what the page looked like, but we didn't know who had the rights to the image, so we had to rewrite it using 
only images from Wikimedia Commons, which are Creative Commons licensed.
                                        -Jordan Raddick, 5/8/07

<table align="center" border=1>
<tr>
<td colspan=3 class="sml" align="left"><b>Temperature/<br>Spectral Classes</b></td>
<td rowspan=10><img src="images/hr_diagram.gif" align="center" width=400></td>
<td>&nbsp;</td><td colspan=2 class="sml" align="left"><b>Luminosity Classes</b></td>
</tr>
<tr><td class="sml"><b>Name</b></td><td class="sml" width="80" align="middle"><b>Temp (&deg;K)</b></td><td>&nbsp;</td><td>&nbsp;</td><td class="sml"><b>Class</b></td><td align="left" class="sml"><b>Star Type</b></td></tr>
<tr><td class="sml">O</td><td align="center" class="sml">&gt;25,000</td><td>&nbsp;</td><td>&nbsp;</td><td class="sml">I</td><td class="sml">Supergiant</td></tr>
<tr><td class="sml">B</td><td align="center" class="sml">11,000-25,000</td><td>&nbsp;</td><td>&nbsp;</td><td class="sml">II</td><td class="sml">Bright Giant</td></tr>
<tr><td class="sml">A</td><td align="center" class="sml">7,500-11,000</td><td>&nbsp;</td><td>&nbsp;</td><td class="sml">III</td><td class="sml">Giant</td></tr>
<tr><td class="sml">F</td><td align="center" class="sml">6,000-7,500</td><td>&nbsp;</td><td>&nbsp;</td><td class="sml">IV</td><td class="sml">Subgiant</td></tr>
<tr><td class="sml">G</td><td align="center" class="sml">5,000-6,000</td><td>&nbsp;</td><td>&nbsp;</td><td class="sml">V</td><td class="sml">Main Sequence, Dwarf</td></tr>
<tr><td class="sml">K</td><td align="center" class="sml">3,500-5,000</td><td>&nbsp;</td><td>&nbsp;</td><td class="sml">VI</td><td class="sml">Subwarf</td></tr>
<tr><td class="sml">M</td><td align="center" class="sml">2,200-3,500</td><td>&nbsp;</td><td>&nbsp;</td><td class="sml">VII</td><td class="sml">White Dwarf</td></tr>
<tr><td class="sml">L</td><td align="center" class="sml">1,600-2,200</td><td>&nbsp;</td></tr>
<tr><td class="sml">T</td><td align="center" class="sml">&lt;1,600</td><td>&nbsp;</td><td align="center"><em>A schematic plot of the H-R diagram.</em></td></tr>
</table>
-->

<br><p>

<a name="evolution"></a>
<h1>Stellar Evolution</h1>
<p>
Stars are not static objects. As a star consumes fuel in its nuclear reactions, 
its structure and composition changes, affecting its color and luminosity. Thus, the H-R 
diagram not only shows us the colors and luminosities of many stars, it shows these 
stars at different stages in their evolutionary histories.
<br><p>
All stars on the main sequence have interiors hot enough fuse four hydrogen 
atoms into one helium atom, and this one helium atom is 0.7% lighter than 4 hydrogen 
atoms were. The lost mass is converted into energy, and this energy is released, providing
the star's luminosity. Over billions of years, however, the residual helium in the star's 
core accumulates. When enough helium has accumulated, the helium can also undergo 
nuclear reaction. In this reaction, three helium atoms are converted into one carbon atom. 
The helium-burning nuclear reaction can occur only when the star's interior reaches a 
higher temperature, and this higher temperature causes the star's outer surface to 
expand to a much larger size than it was while it remained on the main sequence. Even 
though the core of the star is much hotter, the surface is now cooler, making the star 
redder. Thus, over time, a star becomes a red giant, moving from the main sequence area
in the center of the H-R diagram to the red giant area in the upper right. The diagram below 
shows how a Sun-like star evolves on the H-R diagram.
<br><p>

<table border=0>
<tr><td><!--- image replaced for copyright reasons, as described above <img src="images/starevol.jpg" hspace='20'>  -->
<img src="images/track.jpg" alt="The evolutionary track of a Sun-like star on the H-R diagram" /></td></tr> 
<tr><td align="center"><em>An H-R diagram showing the evolutionary track of a 
sun-like star*</em></td></tr>
</table>

<p>

The evolution from main sequence to red giant occurs at different times for different 
stars. Stars that are much heavier and hotter, like O-stars, become red giants in 
only 10 million years. Cooler, lighter stars like our sun take 10 billion years to 
become red giants. This fact actually provides a way of testing how old a group of
stars is - jut make an H-R diagram for the stars, and see which classes of stars have evolved
off the main sequence!
<br><p>

Eventually, all the helium in the core of the star is used up. At this point, what 
happens next depends on the mass of the star. The heaviest stars, over six to eight 
times as massive as our sun, have enough pressure in their cores to start fusing 
carbon. Once carbon is gone, they explode as supernovae, leaving behind neutron 
stars or a black holes. Less massive stars simply burn out, shedding their outer 
layers into beautiful planetary nebulae, and leaving the core as a hot white dwarf. 
White dwarfs lie in the lower left corner of the H-R diagram, a cosmic 
burial ground for dead stars.
<br clear="all"><p>
<br><p>
<a name="nebulae"></a>
<h1>Nebulae</h1>
<p>
<img src="images/orion.jpg" align="right">Originally, the word "nebula" referred to 
almost any extended astronomical object (other than planets and comets). The word "nebula"
comes from the Greek word for "cloud." Before astronomers knew that galaxies were distant
collections of stars, galaxies were also called nebulae because of their fuzzy appearance. 
Today, we reserve the word nebula for extended objects consisting mostly of gas and dust.
<br><p>
Nebulae come in many shapes and sizes, and form in many ways. In some nebulae, stars 
form out of large clouds of gas and dust; once some stars have formed inside the cloud, 
their light illuminates the cloud, making it visible to us. These <em>star 
formation regions</em> are sites of <em>emission</em> and <em>reflection</em> nebulae, 
like the famous Orion Nebula shown in the picture on the right.
<br><p>

Emission nebulae are clouds of high temperature gas. The atoms in the cloud are 
energized by ultraviolet light from a nearby star and emit radiation as they fall
back into lower energy states (neon lights glow in much the same way). Emission nebulae
are usually red, because hydrogen, the most common gas in the universe, most commonly
emits red light. Reflection nebulae are clouds of dust that simply 
reflect the light of a nearby star or stars. Reflection nebulae are usually blue, because  
blue light scatters more easily. Emission and reflection nebulae are often seen together 
and are sometimes both referred to as diffuse nebulae. In some nebulae, the 
star formation regions are so dense and thick that light cannot get through. Not 
surprisingly, these are called dark nebulae.
<br><p>
Another type of nebula, called a planetary nebula, results from the death of a star.
When a star has burned through so much material that it can no longer sustain its own
fusion reactions, the star's gravity causes it to collapse. As the star collapses, its
interior heats up. The heating of the interior produces a stellar wind that lasts for a few
thousand years and blows away the outer layers of the star. When the outer layers have
blown away, the remaining core remnant heats the gases, which are now far from the star,
and causes them to glow. The resulting "planetary nebulae" (so named because they look like
gas giant planets through a telescope) are shells of glowing gas that surround a small core.
Astronomers estimate that our galaxy contains about 10,000 planetary nebulae. 
Planetary nebulae are a common part of the normal stellar life cycle, but they are
short-lived, lasting only about 25,000 years.
<br><p>
<img src="images/crab.jpg" align="left">The life of a star whose mass is greater
than 1.4 times the mass of the Sun ends more violently, and leaves behind a 
different type of nebula called a supernova remnant. 
When such a star runs out of fuel and collapses, an enormous shock wave sweeps through
the star at high speed, blasting away various layers and leaving behind a core called
a neutron star and an expanding shell of matter known as a supernova remnant. A
supernova's shock wave is much more violent than the stellar wind that marks the 
end of a low mass star. Near the core of the remnant, electrons emit radiation called 
"synchrotron radiation" as they spiral toward the neutron star at speeds close to 
the speed of light. The ultraviolet portion of this radiation can strip electrons off, 
or "ionize" the outer filaments of the nebula, causing them to glow. 
In addition, the ejected matter sweeps up
surrounding gas and dust as it expands, producing a shock wave that excites and 
ionizes the gas in the supernova remnant nebula, which is at low density
but extremely hot (up to 1,000,000&deg; K!). The most famous supernova remnant is the 
Crab Nebula in Taurus (M1), shown in the image above. The light of the inner core 
is from synchrotron radiation, while the outer regions glow in many colors from emission 
of many gases, including red for hydrogen.
<br><p>

<a name="browndwarfs"></a>
<h1>Brown Dwarfs</h1>
<p>
<table border=0 align="right">
<tr><td align="center"><img src="images/bdspec.gif"></td></tr>
<tr><td align="center"><em>Spectra of two brown dwarfs (class T stars) discovered<br> by SDSS,
compared to the first one discovered,<br> Gliese 229B. Absorption due to methane<br>
(CH<sub>4</sub>) is evident.</em></td></tr>
</table>
<p>
Some stars fizzle out before their evolutionary life cycle begins; these failed stars are
called brown dwarfs. Brown dwarfs are balls of gas not heavy enough for fusion
reactions to ignite in their cores, so their energy output comes only from gravity. 
Although their existence has been predicted by theory for a long time, they are so cool,
dark, and hard to see that the first one was discovered only five years ago. The 
brown dwarfs with the lowest masses are actually very similar to Jupiter, showing 
absorption due to methane in their spectra. The last two letters in the temperature
classification system for stars, <em>L</em> and <em>T</em>, have been added recently 
to include brown dwarfs. The SDSS, in combination with near-infrared follow-up 
studies, has been found many brown dwarfs because it covers a large area of sky, 
it can see quite dim objects, and it has a filter in the red part of the spectrum 
(<em>z'</em>). Brown dwarfs are interesting for two reasons: first, they can tell us 
the lowest mass that an object must have to form a star, which can tell us about the 
conditions of star formation. Second, brown dwarfs may compose some of the 
missing mass, or "dark matter" in our galaxy.
<p>
&nbsp;
<div class="sml">
*Images from Wikimedia Commons:<br />
<a href="http://en.wikipedia.org/wiki/Image:Open_cluster_HR_diagram_ages.gif" target="offsite">H-R diagram of two star clusters</a><br />
<a href="http://cs.wikipedia.org/wiki/Soubor:HR-diagram_01.png" target="offsite">Evolutionary track of a Sun-like Star</a><br /><br />
Licensed under the <a href="http://en.wikipedia.org/wiki/Wikipedia:Text_of_the_GNU_Free_Documentation_License" target="offsite">GNU Free Documentation License</a></div>
</td></tr></table>
</div>
</asp:Content>
