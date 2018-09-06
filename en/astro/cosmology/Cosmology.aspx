<%@ Page Title="" Language="C#" MasterPageFile="../AstroMaster.master" AutoEventWireup="true" CodeBehind="Cosmology.aspx.cs" Inherits="SkyServer.Astro.Cosmology" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AstroContent" runat="server">
<div id="title">Modern Cosmology</div>
<div id="pdflink">
  <a href="cosmology.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="cosmology.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>
</div>

<div id="transp">
<table border=0 width=600>
<tr><td></td></tr>
<tr><td align='middle'>	<table>
		<tr><td>Man hath weav'd out a net, and this net throwne</td></tr>
		<tr><td>Upon the Heavens, and now they are his owne.</td></tr>		<tr><td align='right'><i>John Donne</i></td></tr>	</table>
<p></p>
<a name="gravity"></a>
</td>
<tr><td><h1>Gravity and Ducks</h1>
<p>If you look at a map of the distribution of galaxies in the local universe, 
you might be surprised to find that the galaxies do not seem to be laid down uniformly,
but seem to cluster together. But it is not that surprising that the galaxy 
distribution is not uniform; if galaxies were uniform, the universe would be
organized like a huge crystal. No known laws of physics would lead to such a
crystalline universe.
<table align="left" border=0 width="380" cellpadding=10>
<tr><td align="center">
<img src="images/thumb-lss.jpg"><br>
<span class='caption'>The distribution of galaxies in a slice of the SDSS
spectroscopic survey</span>
</td></tr>
</table>
<p>

<p>
To understand how galaxies cluster, consider a distribution of ducks on a pond. Some 
ducks wander off by themselves, but most ducks, most of the time, are found in 
small groups of two or three or more that tend to travel together. Ducks tend to 
cluster, and this clustering is not a result of chance. Ducks tend to want to be 
near one another.
<p>
Like ducks, galaxies cluster not out of chance, but because they want to be near
one another. Of course, unlike ducks, galaxies have no desires; the thing
that makes them "want" to be together is the force of gravity. Since gravity is 
always attractive, it will attract galaxies toward one another.  So as the universe 
ages and evolves, you would expect that galaxies would become more and more 
clustered.
<p>
Clustering is understood and measured in terms of statistics. For example, if a 
biologist wants to study the clustering behavior of ducks, he or she must study many 
groups of ducks, at many different times on many different ponds. If an astronomer 
wants to study the clustering of galaxies, he or she must have a very large 
systematic survey - a map - of where galaxies are. The Sloan Digital Sky Survey will
provide such a map.
<p>
With the SDSS's map, astronomers will be able to answer an important question about 
the large-scale structure of the universe: at how big a scale do you have to look
before the universe starts to look uniform?
<p>
Astronomers were not very surprised to find that our own galaxy, The Milky Way, 
was a member of a group of some twenty galaxies. They were also not surprised to
find that that our local group was a member of a cluster of some two 
thousand galaxies. But when looking on larger scales, they expected to 
find well-ordered and sensible phenomena. They did not expect to find the perfectly
ordered universe the ancient Greeks envisioned, but they believed that once they 
looked out beyond their local neighborhood, within a few hundred million light-years, 
the average properties of the universe would become predictable.
<p>

<table border=1 align='right' cellpadding='5'>
   <tr><td><IMG height=240 src="images/group.jpg" width=240></td></tr>
   <tr><td><IMG height=240 src="images/cluster.jpg" width=240></td></tr>
   <tr><td><IMG height=240 src="images/scluster.jpg" width=240></td></tr>
   <tr><td align='center'><span class='caption'>Clustering at three<br> 
   increasing scales:<br>group, cluster, <br>
   supercluster</span></td></tr>
</table>
<p>

<a name="biggest"></a>
<h1>The Biggest Structures?</h1>

<p>
But as larger and deeper sky surveys were done in the 1980s and 1990s, astronomers 
were surprised to find that there were clusters of clusters, or superclusters, of 
galaxies that formed huge walls and thin sheets that surrounded large areas with very
few galaxies, called voids. On the largest scales seen so far, the distribution of 
galaxies looks like a gigantic foam of soap bubbles.
<p>
One of astronomy's basic questions today is, "What is the largest 
structure in the universe?" We have found clusters and superclusters, and now even clusters of superclusters,
but are there superclusters of superclusters, and so on? In other words, at what 
scale do galaxies, or clusters or galaxies, appear to be randomly distributed?
<p>
This question is important for understanding the birth and evolution of the universe. 
Some of the most basic predictions of theories of the early universe concern how 
matter was initially distributed. Since the distribution of galaxies seen today 
evolved from this initial distribution, knowledge of the large-scale distribution 
and clustering of galaxies today is one of the few tests that can distinguish between
different theories of the early Universe.
<p>
The Sloan Digital Sky Survey was designed to make precisely this fundamental 
measurement. By systematically observing a wide area to great distances,
scientists should be able to measure the amount of clustering on all these scales 
and use their results to constrain theories of the early universe.
<p>

<a name="noise"></a>
<h1>Noise and Galaxy Clusters</h1>

<p>
But if the SDSS proves astronomers right, and the universe is uniform over the largest
scales, then why do galaxies form clusters and superclusters at smaller scales? 
The answer to this question lies in "random noise processes," which have analogous
examples in everyday life.
<p>
Examples of random noise processes are the sound of static on an old radio, or 
the sound of a waterfall, or the distribution of waves on the surface of the sea. In 
each of these cases, every time you listen or look, what you hear or see is 
different than what you heard or saw before. However, it is also obvious that
you are hearing the same waterfall or radio, or looking at the same sea.
<p>
In all of these cases, the statistical properties of the sounds or waves are the same. 
Taking the sea as an example, although the water surface is always changing, the 
distribution of the number of waves and their heights have some well-defined average 
properties.  By observing a very large portion of the sea at once, or a small portion 
for a long time, you can figure out the general properties of ocean waves.
<p>

<table align="left" border=0 width="380" cellpadding=10>
<tr><td align="center">
<img src="images/powerspec.gif"><br>
<span class='caption'>A power spectrum shows how waves with different wavelengths 
contribute to a whole. Random noise processes show up at shorter wavelengths. A power
spectrum like this could be used to analyze ocean waves - or the structure of the 
universe.</span>
</td></tr>
</table>

<p>
Astronomers working with data from the Sloan Digital Sky Survey will perform a similar 
analysis on the distribution of galaxies revealed in their map of the Universe.  
Just as the waves in a part of the sea can give information about the water depth and 
wind strength, the way galaxies cluster can tell cosmologists a lot about how matter
was distributed in the early universe, and what physical processes have worked to change
the clustering since then.
<p>
Knowing how galaxies cluster can give cosmologists information on other fundamental 
properties of the universe as well. For example, cosmologists will be able to use these
data to measure the density of the universe. Knowing the universe's density will help 
them decide between various theories of dark matter, which will allow them to predict 
the ultimate fate of the universe.</p>
        

</td></tr></table>
</div>
</asp:Content>
