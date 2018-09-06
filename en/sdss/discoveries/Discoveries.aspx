<%@ Page Title="" Language="C#" MasterPageFile="../SdssMaster.master" AutoEventWireup="true" CodeBehind="Discoveries.aspx.cs" Inherits="SkyServer.SDSS.Discoveries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SdssContent" runat="server">
<div id="title">First Discoveries</div>
<div id="pdflink">
  <a href="swf/discoveries.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/discoveries.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="640"><tr><td>

<p>The Sloan Digital Sky Survey began operating on June 8, 1998. Since 
that time, SDSS scientists have been hard at work analyzing 
data and drawing conclusions. This page describes seven of the SDSS's most important 
discoveries so far. Many more discoveries are still waiting in the data.</p>
<table border=1 width=280 align="right">
<tr><td align="center"><img src="images/asteroid2.gif"></a></td></tr>
<tr><td align="center"><font class="caption">The colored dots in the center of 
this SDSS image mark an asteroid</font></td></tr>
</table>

<a name="asteroids"></a>
<h1>Asteroids</h1>
<p>Asteroids are small objects made of rock or metal that orbit the Sun. Most asteroids 
are found between the orbits of Mars and Jupiter, about 200 to 400 million miles from the Sun. 
They orbit the sun quickly enough, and close enough to the Earth, that they move 
during the five minutes it takes for the SDSS to scan a piece of sky. 
Very fast asteroids appear as colored streaks in SDSS images; slower asteroids appear 
as two or three colored dots close together. You can look for asteroids yourself in the 
<a href="../../proj/basic/asteroids/">Asteroids Project</a>.</p>

<p>In 2001, a team of SDSS scientists led by Zeljko Ivezic of Princeton used 
the imaging data pipeline to find over 10,000 asteroids in SDSS 
data. The team studied the asteroids' brightnesses to learn about their 
sizes, and the asteroids' colors to learn about their compositions. The team drew 
two important conclusions from this study.</p>

<p>First, the scientists concluded that the asteroid belt probably contains 
about 500,000 asteroids - only 25% as many as astronomers previously thought. Second, 
the SDSS scientists confirmed previous suggestions that the 
asteroid belt is actually two belts: an inner belt of rocky asteroids and an outer belt 
of icy asteroids. The scientists showed that asteroids can be classified into these two 
belts based only on their colors, a process significantly faster than other methods. The 
SDSS will continue to be a rich resource for scientists - the 
SDSS team estimates that the survey will eventually discover 100,000 asteroids!</p>

<a name="brown"></a>
<h1>Brown Dwarfs</h1>

<p>Brown dwarfs are missing links in the story of the universe: objects too big to be 
planets but too small to be stars. For forty years, scientists have known that they must 
exist, but since they do not emit light from nuclear reactions, they are very dim 
and hard to see.</p>

<p>Brown dwarfs come in two types. Class L dwarfs have about 50 to 80 times the mass of 
Jupiter, while class T dwarfs have about 20 to 50 times the mass of Jupiter. Class T 
dwarfs are cooler and fainter than class L dwarfs. By the time the SDSS began in 
1998, ten years of searching had produced a handful of class L brown dwarfs and only one 
class T brown dwarf.</p>
<p>But in 1999, SDSS astronomers Xiaohui Fan and Michael Strauss of Princeton found 
a faint red object in the SDSS data. When they looked at its spectrum, they found a line 
for methane - a clear signal of a class T dwarf. Two weeks later, Zlatan Tsvetanov and 
Wei Zheng of the Johns Hopkins University found another class T dwarf in the SDSS data. 
Astronomers are now studying both objects closely - although scientists now know 
for sure that brown dwarfs exist, they still know very little about them.</p>
<table border=1 width=500 align=center>
<tr><td align="center"><img src="images/dwarf1.jpg"></a></td></tr>
<tr><td align="center"><img src="images/dwarf2.jpg"></a></td></tr>
<tr><td align="center"><font class="caption">The white lines show the two 
class T brown dwarfs discovered by SDSS scientists - the second and third ever discovered</font></td></tr>
</table>

<a name="halos"></a>
<h1>Galactic Halos</h1>

<p>All galaxies, including our own Milky Way, have thin spherical "halos" of stars 
that surround them. Astronomers have two theories about where these halos came 
from. Either the halo formed first, and the galaxy condensed out of them, 
or the halo formed later, built up from smaller galaxies that crashed into the 
main galaxy.</p>

<table border=1 width=280 align="right">
<tr><td align="center"><img src="images/halo.jpg"></a></td></tr>
<tr><td align="center"><font class="caption">A section of the Milky Way's 
galactic halo seen by the SDSS</font></td></tr>
</table>

<p>SDSS astronomers have been trying to decide between the two theories. 
A team led by Heidi Newberg of Rensselaer Polytechnic Institute and Brian Yanny of 
Fermilab carefully mapped a large part of the Milky Way's halo. They found five 
sections where the halo was unusually thick.</p>

<p>They made H-R diagrams of the stars in these thick areas - graphs that show 
how bright different types of stars shine (you can make your own diagrams in the
<a href="../../proj/advanced/hr/">H-R Diagram Project</a>.) The diagrams 
they made looked similar to diagrams for a small galaxy called the Sagittarius Dwarf 
Galaxy, which orbits the Milky Way. This discovery suggests that the stars in these 
five thick areas of the Milky Way's halo were pulled out of the Sagittarius Dwarf 
by the Milky Way's gravity. These areas lend support to the idea that galactic halos 
are built up over time as smaller galaxies crash into larger ones.</p>

<a name="dark"></a>
<h1>Dark Matter</h1>

<p>For about 25 years, astronomers have known that what we see is not all there is. 
In the mid-1970s, Vera Rubin, an astronomer at the Carnegie Institute of 
Washington, studied the rotation of galaxies and realized that they must 
contain much more matter than we could see. Further studies showed that about 90% of the 
matter in the universe does not emit light - it is "dark matter." Although scientists 
knew then that dark matter must exist, they still did not know what it was or where it 
was hiding.</p>

<table border=1 width=200 align="left">
<tr><td align="center"><img src="images/lens.jpg"></a></td></tr>
<tr><td align="center"><font class="caption">This nearby galaxy (NGC 6070) bends light 
from distant galaxies behind it.</font></td></tr>
</table>

<p>In 1999, a team of SDSS astronomers led by Phillippe Fischer and Timothy McKay of the 
University of Michigan set out to find dark matter in nearby galaxies. 
They used a technique called "gravitational lensing" predicted by 
Einstein's General Theory of Relativity. Massive objects like galaxies bend light 
rays that travel near them, just as a glass lens does. So when you look at a 
distant galaxy behind a nearby galaxy, light from the distant galaxy will be 
bent, and the distant galaxy will look smeared out. However, the amount of smearing 
is very small, less than 1% of the width of the galaxy. Since galaxies look fuzzy 
anyway, astronomers have a hard time telling how much of the smearing is 
due to gravitational lensing by the nearby galaxy.</p>

	<p>Fischer and McKay added up the smeared images of distant galaxies around 30,000 
nearby galaxies, guessing 
that the random variations in galaxy shape would cancel out, but the effect of 
gravitational lensing would add together. Then, they used a computer program to find 
what mass distribution in the nearby galaxies would be required to generate the 
observed lensing.</p>

<p>They found that the galaxies were twice as big as anyone had previously thought. In 
fact, the Milky Way's dark matter probably stretches out so far that it touches the 
dark matter of the Andromeda Galaxy, 2 million light-years (18,921,600,000,000,000,000 
kilometers) away!</p>

<p>So now astronomers know that much of the universe's dark matter 
forms a part of galaxies like our own. But they still do not know what dark matter is.</p>

<a name="quasars"></a>
<h1>Distant Quasars</h1>

<table border=1 width=304 align="right">
<tr><td align="center"><img src="images/qso62.jpg"></a></td></tr>
<tr><td align="center"><font class="caption">The most distant object ever seen is the 
faint red dot in the center of this picture.</font></td></tr>
</table>

<p>Quasars, galaxies with very active centers, are the most distant objects in the 
universe. A typical quasar is the size of our Solar System, but 
produces as much energy as an entire galaxy. Because quasars are so bright, we can 
see them on Earth even though they are very far away.</p>

<p>Because light travels at a finite speed of about 300,000 kilometers per second, it 
takes light a long time to get from quasars to us. Because of this time delay, when 
we see a quasar, we are looking at it as it was billions of years ago. Therefore, 
studying quasars can tell us many things about the early universe.</p>
 
<p>The SDSS was specially designed to find quasars. In fact, since 1998, the SDSS has found 26 of 
the 30 most distant quasars ever seen. In 2000, a team of SDSS scientists 
found the most distant quasar yet - a quasar that emitted its 
light when the universe was less than one-tenth of its current age. SDSS astronomers have found over 100,000 quasars - ten times as many 
as were known before the survey.</p>

<a name="gunn"></a>
<h1>The Gunn-Peterson Trough</h1>

<p>As soon as astronomers found distant quasars, they began to think of ways they could use 
them to understand the early universe. In 1965, Jim Gunn (who went on to work for SDSS) 
and Bruce Peterson of Caltech predicted that distant quasars should show evidence 
of the end of the cosmic dark ages. But until recently, no one had ever seen an 
object distant enough to check their prediction.</p>

<p>About a million years after the big bang, the universe was full of a thick gas of 
hydrogen atoms. Hydrogen atoms absorb ultraviolet light well, so any light traveling through early 
the universe was quickly absorbed by a hydrogen atom. The universe was dark. 
Over time, the gas clumped together to form the first stars, which began to 
emit light - but this light too was quickly absorbed. Eventually, the 
stars became bright enough that their light had enough energy to break the hydrogen atoms 
into protons and electrons. After this happened, light could pass freely through the 
universe. The cosmic dark age was over.</p>

<p>Gunn and Peterson realized that even a small amount of remaining hydrogen atoms - as 
little as 1 remaining atom for every 100,000 broken - should have enough of an effect 
to be noticed in the spectrum of a distant object. Gunn and Peterson predicted that 
astronomers should see a "trough" in the ultraviolet part of an object's spectrum - less light than 
expected - because of the remaining hydrogen atoms. This effect 
was called the "Gunn-Peterson trough," and astronomers began to look for it.</p>

<p>In the summer of 2001, Robert Becker from the Lawrence 
Livermore National Laboratory in California led a team of astronomers that 
examined the spectrum of the distant quasar shown above. Becker's team found an 
unmistakable Gunn-Peterson trough in the quasar's spectrum. Because the quasar was so 
far away, its trough was shifted from the ultraviolet into the infrared.</p>

<p>The team's discovery ended a nearly 40-year 
search. SDSS astronomers will now look for Gunn-Peterson troughs in other distant quasars 
to try to gain a better understanding of the effect.</p>

<table border=1 width=550 align="center">
<tr><td align="center"><img src="images/gp.jpg"></a></td></tr>
<tr><td align="center"><font class="caption">The spectrum of the very distant quasar&nbsp; (bottom spectrum) 
compared to the spectrum of a closer quasar (top spectrum). Note the height of the spectral lines 
on the left side of the spectrum. The bottom image shows the first Gunn-Peterson 
trough ever discovered.</font></td></tr>
</table>

<a name="lss"></a>
<h1>The Structure of the Universe</h1>

<p>The primary question that SDSS was designed to answer is: what is the large-scale 
structure of the universe? Scientists know that stars make up galaxies, galaxies 
make up clusters, and clusters make up superclusters. But do superclusters make up 
super-superclusters? At what point does the clustering stop?</p>

<p>Although the SDSS has only been operating since 1998, it already has a preliminary 
answer:</p>

<img src=images/lss.jpg>

<p>The graph shows the distribution of galaxies in a wedge-shaped section of the universe 
seen by the SDSS. RA stands for "right ascension," a measure of position in the sky, and 
z stands for redshift, which is related to distance from Earth. Each dot in the graph 
is one galaxy. The graph thins out at greater redshifts because galaxies farther away 
are harder to see.</p>

<p>The graph shows that galaxies organize into long, narrow walls with open spaces 
between. The universe looks a little like a mass of soap bubbles in a kitchen sink. 
Now that astronomers have this map, they can start to analyze it in detail. They are 
now looking at the spacing between the strips of galaxies. Different theories about 
the history of the universe predict different amounts of spacing, or "characteristic 
wavelengths." By carefully studying the characteristic wavelengths in the map the 
SDSS makes, astronomers can decide between different theories. That work will probably 
take many years.</p>

<h1>Further Reading</h1>

<p>The SDSS's public website keeps a News page that lists SDSS's press releases and collects links to articles about SDSS in the popular press. Click the link below to go to the SDSS News site.</p>
<p><a href="http://www.sdss.org/news/index.html" target="offsite">SDSS News</a></p>

<p>Most of the research described here has been described in detail in papers published in 
scientific journals. Click <a href="publications.aspx">here</a> for a list of 
publications.</p>


<p>

<p>
<br><p>&nbsp;<p>
</td></tr></table>
</div>
</asp:Content>
