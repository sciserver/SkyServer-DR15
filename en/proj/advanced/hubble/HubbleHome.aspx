<%@ Page Title="" Language="C#" MasterPageFile="HubbleMaster.master" AutoEventWireup="true" CodeBehind="HubbleHome.aspx.cs" Inherits="SkyServer.Proj.Advanced.Hubble.HubbleHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HubbleContent" runat="server">
<div id="transp">

<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>
<h1>The Hubble Diagram</h1>
<p></p>


<table align=right border=1 bordercolor=#ffffff cellpadding=0 cellspacing=0><tr>
          <td>
   <IMG align=right src="images\abell0957.jpg">
</td></tr></table>
<p>               
      The idea that we live in an expanding
 universe is one of the most unexpected and important discoveries of 20th century physical science. For tens
 of thousands of years, everyone, including astronomers, had assumed that the universe
 was a stable, unchanging stage on which astronomical events played themselves out. But in
 the 1910s and 1920s, several physicists and astronomers made several discoveries that defied easy explanation. These 
 discoveries started to come together in the late 1920s, and finally in 1929, an astronomer named 
 Edwin Hubble published a paper that helped to explain thse results. In this project, you will retrace Hubble's 
 steps, seeing the same bizarre phenomena that&nbsp;he saw. You will discover for yourself that
 the universe is expanding.</p>
 
 
      <H1>The Discovery of the Expanding Universe</H1>
      <P>Hubble's&nbsp;paper came after 15 years of lucky alignment of 
      theory and observation. In 1915, Albert Einstein developed the General 
      Theory of Relativity, which explained how gravity works. When Einstein 
      applied the theory to the whole universe, he found that it made a strange 
      prediction: all of space should be dynamic, either contracting or 
      expanding. Einstein refused to believe his own equations - like all 
      astronomers for thousands of years, he had assumed that the size of the 
      universe was not changing.</P>
      
<table border=1 align="right" cellpadding=0 cellspacing=0>
<tr><td align="middle"><IMG align=center src="images/sombrero.gif"></td></tr>
<tr><td align=middle><span class=caption>The Sombrero Galaxy</span></td></tr>
</table>

<p>     Meanwhile,&nbsp;on another continent,&nbsp;Vesto Slipher, an astronomer at
the Lowell Observatory in Flagstaff, Arizona, was finishing a detailed study of the night
sky. He examined several of the faint, fuzzy "nebulae" that he saw in
his telescope. He carefully measured the nebulae's spectra - the amount of light 
they emitted at different wavelengths. He found that the spectra of nearly all of them
were "redshifted" - their light was redder than it should have been. Slipher knew that
when an object's light was redshifted, it was moving away from Earth, and that the object's
speed was proportional to the redshift. He calculated the nebulae's speeds, and found they
were all moving away from us incredibly quickly: one, the Sombrero Nebula (known today as the Sombrero Galaxy), moved away at
2.5 million miles per hour.</p>

<table border=0 align="left">
<tr><td><IMG align=center src="images/hubble.jpg"></td></tr>
<tr><td align=middle><p class=caption>Edwin Hubble</p></A></td></tr></table>


      <P> Meanwhile, astronomers in California were building the largest telescope in 
      the history of the world - a new telescope on top of Mount Wilson, near Pasadena,
      with a mirror 100 inches (2.5 meters) across. In 1923, Edwin Hubble used this new 
      telescope to prove that some of the nebulae, including the Sombrero, are actually 
      other galaxies similar to our own Milky Way. He spent the rest of the decade looking 
      through the telescope, trying to find creative ways to measure the distances to 
      hundreds of galaxies.</P>

<p>In 1929, Hubble compared his distances to Slipher's measurements of redshift and made a famous plot,
which today is called a Hubble diagram. Hubble's diagram showed that a galaxy's redshift
increased linearly with its distance from Earth. The farther away a galaxy is, the faster
it moves away from us. The simplest explanation for this observation is that the entire universe is expanding, just as 
Einstein's equations predicted it should. When Einstein heard about Hubble's results, he 
said that not realizing the expansion of the universe was his "greatest blunder."</p>

<p></p>
<h1>The Big Bang</h1>
<p></p>

<table align="right" width=275 border=1 cellpadding=0>
<tr><td align="center">
<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
    codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"
 WIDTH=275 HEIGHT=200 id=ShockwaveFlash1 align=right>
 <PARAM NAME=movie VALUE="bigbang.swf"> 
 <PARAM NAME=quality VALUE=high> 
 <PARAM NAME=bgcolor VALUE=#000000> 
  <EMBED src="bigbang.swf" quality=high bgcolor=#000000  WIDTH=275 
 HEIGHT=200 align=right TYPE="application/x-shockwave-flash" 
 PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED></OBJECT></td></tr>

<tr><td>

<p class=caption align=center>Click on animation to play</p>

</td></tr></table>


<p>If the universe is expanding, then at some time in the past, it must have 
started from a single point&nbsp;- an idea known as the big bang. The discovery 
of the expanding universe, and the later development of other parts of the 
big bang theory, changed astronomy forever.</p>

<p>The big bang picture was based on Hubble's plot of distances
and redshifts of other galaxies, but the theory also makes several other
predictions,&nbsp;each of which has been&nbsp;found to be true by astronomers since. 
Among the most important are:<p>

<p> 1) the oldest stars in the universe are all a little younger than the big bang<br>
    2) the amount of hydrogen and helium, the lightest elements in the periodic table,
       are consistent with the amount that would have been produced soon after the big
       bang<br>
    3) scientists have found a dim field of microwave radiation that fills the universe 
    almost equally in all directions - a faint remnant of the radiation of the big bang</p>

<p>Observation 1 is a necessary consequence of the big bang
theory, but it could be argued that it is just a coincidence. But there are no
viable alternative models to account for observations 2 and 3. Good theories
are useful theories - they make connections between diverse sets of information
and help to illuminate a wide range of phenomena. On this basis, the big bang
picture has been one of the most successful theories in astronomy.</p>

<p></p>
<h1>The Hubble Diagram Project</h1>
<p></p>

<p>In the pages that follow, you will retrace Hubble's steps to
make one of the most important discoveries of 20<sup>th</sup> century astronomy.</p>

<p>First, you will look at a few galaxies in the 
      SkyServer database. You will measure their magnitudes to get a rough idea 
      of their distances. You will use these
distances, along with SkyServer's measurements of the galaxies' redshifts, to make a
simple Hubble diagram.</p>

<p>Then, you will look in detail at some of the ways astronomers calculate the distance
to galaxies, and you will learn how to find redshifts yourself. You will put this 
knowledge together to make a Hubble diagram the same way that Hubble did. Last, you will
go back to the SkyServer database and look for galaxies on your own, making a Hubble
diagram that no one else has ever made.</p>

<p>              
               
               
               
  Click "Next" to begin the journey.</p>

</td>
</tr>
<tr><td>
      <P>             
             &nbsp;</P></td></tr>
<tr><td></td></tr>
<tr><td align=right><A href="simple.aspx" ><IMG src="../../images/next.jpg" ></A></td></tr>

</table>

</div>
</asp:Content>
