<%@ Page Title="" Language="C#" MasterPageFile="../AstroMaster.master" AutoEventWireup="true" CodeBehind="Structures.aspx.cs" Inherits="SkyServer.Astro.Structures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AstroContent" runat="server">
<div id="title">Cosmic Structures</div>
<div id="pdflink">
  <a href="structures.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="structures.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>
</div>

<div id="transp">
<table border=0 width="600">
<tr><td>
<p>
Matter in the universe is not distributed randomly. Galaxies, quasars, and 
intergalactic gas outline a pattern that has been compared to soap bubbles - large 
voids surrounded by thin walls of galaxies, with dense galaxy clusters where walls
intersect. One of the primary goals of the SDSS is to map this structure in great 
detail, out to large distances. Scientists have many theories about how the universe 
evolved, and the theories predict different large-scale structures for 
the universe. The SDSS's map may tell us which theories are right - or whether we 
will have to come up with entirely new ideas.
<br><p>
<a name="clusters"></a>
<h1>Galaxy Clusters</h1><p>
Galaxies are usually found near each other, in galaxy clusters. The distribution 
of these clusters, and how this distribution evolves with time, are important 
tests of cosmological models: for instance, different cosmological models predict 
different numbers of galaxy clusters at different redshifts. Additionally, not 
only are galaxies clustered, but the clusters themselves are clustered! 
The degree to which both galaxies and clusters tend to group together is also 
a test of different theories. By studying the masses, distributions, and evolution
of galaxy clusters, we can learn something about the formation of mass in the universe, 
a fundamental goal of cosmology.
<br><p>
<table align="right" border=0>
<tr><td><img src="images/clusim.gif" align="center"></td></tr>
<tr><td><em>An optical image of a galaxy cluster <br>with an X-ray emission map superimposed.</em></td></tr>
</table><p>
Because galaxy clusters can be very massive (up to 10<sup>14</sup> times the mass of the 
Sun), their gravity is strong enough to hold on to extremely hot gas, with temperatures 
of millions of degrees. This gas emits radiation at X-ray wavelengths, which can 
be observed by X-ray satellites like <a href="http://chandra.harvard.edu" target="offsite">Chandra</a>,
<a href="http://heasarc.gsfc.nasa.gov/docs/rosat/rosgof.html" target="offsite">ROSAT</a>, and 
<a href="http://sci.esa.int/xmm/" target="offsite">XMM</a>. These satellites have shown that a 
large fraction of clusters have structure and complicated internal motions, 
which indicate that they are still evolving. Also, satellite observations have shown 
that the X-ray emitting gas makes up the largest fraction of the visible mass 
in clusters, greater than the sum of all the galaxies. This is a very 
interesting result - remember that galaxy clusters were discovered as overdensities 
of galaxies, and now we know that galaxies are but a small part of the total mass of 
clusters. Some astronomers have even suggested clusters without galaxies may also exist - 
just huge clumps of gas.
<br><p>
Galaxy clusters have huge mass, and the Theory of General Relativity says massive
objects bend light as it passes by them, a phenomenon known as gravitational lensing. 
The amount of lensing caused by a galaxy cluster depends on the cluster's total mass,
so by measuring the amount of lensing, we can weigh the clusters. These measurements 
can be compared to other mass estimates, like the amount of X-ray gas and the 
velocities of galaxies in the cluster. With these mass estimates, we can compute 
the mass-to-light (<em>M/L</em>) ratios for clusters. This ratio allows us to estimate 
the <em>bias</em>, which tells us how galaxies are distributed relative to the rest of 
the matter. The M/L ratios also help put constraints on the total mass in the universe.
<br><p>
If we add up the mass of the galaxies that we can see, plus the mass of X-ray gas we 
have observed, and compare it to the total mass estimated for the cluster, we 
find that most of the matter is in some other form! This extra mass is called 
<em>dark matter</em> because it does not emit light. In fact, it turns out that most 
of the universe seems to be made of dark matter, which we can't see directly, but whose
existence we can infer due to its gravity. Scientists have several theories about what
dark matter could be, but no one knows for sure. The discovery of dark matter is 
one of the greatest and most intriguing discoveries of the last decade.
<br><p>
<table align="left" border=0>
<tr><td><img src="images/ms1054_hst.jpg" align="center"></td></tr>
<tr><td><em>A very distant galaxy cluster, observed with <br>the Hubble Space Telescope.
Note the large<br> number of old, red galaxies.</em></td></tr>
</table>
<p>
Most elliptical and S0 galaxies are found in clusters, and more such galaxies
are found in denser clusters. Amazingly, astronomers do not have good explanations 
for why most clusters contain elliptical galaxies. They also have a poor understanding
of how galaxies in clusters evolve. We know that there are apparently more blue 
galaxies in clusters as we look back in time, suggesting that there used to be 
more star formation. Yet, we also see clusters with significant numbers of old,
red galaxies even at redshifts of about 1, when the universe was only a few 
billion years old. Using the SDSS, we will be able to study these the types and masses
of galaxies in thousands of clusters, far more than have ever been studied before.
<br><p>
<p>&nbsp;</p>

<p>&nbsp;</p>
<a name="superclusters"></a>
<h1>Superclusters</h1><p>
Superclusters are simply clusters of galaxy clusters. Whereas clusters are typically 
found in the filaments and walls of the universe's "soap bubble," superclusters are 
at the intersections of the walls. Superclusters are the largest known 
structures in the universe, with some as large as 200,000,000 light-years! However, 
because these structures are very rare, only a few are known. The most famous superclusters
are nearby, including the Great Wall and the Perseus-Pisces supercluster. There has 
been recent evidence for superclusters at redshifts of about 1, which places 
important constraints on structure formation and cosmological models. Additionally, 
the M/L ratios of superclusters are similar to those of clusters. This discovery implies 
that the mysterious dark matter cannot contribute more to the mass of the universe 
than it contributes to the mass of clusters.
<br><p>
<a name="voids"></a>
<h1>Voids</h1><p>
The image below shows the distribution of 10,853 galaxies in a small slice of the 
SDSS main survey, along with another 486 "luminous red galaxies", chosen 
to map out structure to higher redshifts. This sample constitutes only 1% of the 
expected final spectroscopic data! The bubble-like network of walls, filaments, and 
voids is clearly visible. The amount of space covered by the empty areas (voids) is different in different 
cosmological models; thus, accurate maps of the large-scale structure in the universe 
provide clues to the type of universe we live in.<br>
<table align="center" border=0 width=550>
<tr><td><img src="images/lss.gif" align="center"></td></tr>
<tr><td align="center"><em>The distribution of galaxies in a slice of the SDSS 
spectroscopic survey.</em>  <br /><font size=-1>(A. Pope, JHU)</font></td></tr>
</table>
<br><p>

&nbsp;
<p>
</td></tr></table>
</div>
</asp:Content>
