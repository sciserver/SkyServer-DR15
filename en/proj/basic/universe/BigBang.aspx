<%@ Page Title="" Language="C#" MasterPageFile="UniverseMaster.master" AutoEventWireup="true" CodeBehind="BigBang.aspx.cs" Inherits="SkyServer.Proj.Universe.BigBang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UniverseContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<a name="bigbang"></a>
<h1>The Big Bang</h1>

<table align="right" border=1 cellpadding=0>
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


<p>The animation to the right shows schematically what the expanding universe looks like. Each galaxy, represented by a white dot, is getting farther away from every other galaxy. (You saw the same effect with dots on the balloon.)</p>

<p>If the universe is expanding today, as the animation shows, then at some point in the past it must have been smaller. If you go far enough back in time - if you rewind the animation far enough - then at some point the universe must have had zero size and started expanding. Astronomers call the start of expansion the "big bang."</p>

<p>The "big bang" was not an explosion - it was just the time when the universe started expanding. Many modern astronomers and physicists are trying to understand what happened in the few minutes after the big bang.</p>

      <H1>Absolute and Relative Distances</H1>
      
      <table align="right" border=1>
      <tr><td align="center"><img src="images/quasar.jpg" cellpadding=5 border=1><br>
      <span class='caption'>A quasar found by SDSS at redshift 5.8,<br> 
      or about 28,000 Mpc.
      </span></td></tr>
      </table>
      
      <P>What you measured in this project was relative, not 
      absolute, distance. Having an absolute distance means we know the 
      value of d in light-years, meters, or some other distance.</p>

      <p>Measuring absolute distances in astronomy is extremely difficult, but you can use the equation</p>

      <p>c z = H<sub>0</sub> d</p>

      <p>to estimate the distance to a distant galaxy from its redshift. If you use the equation, you can go from a measurement of a galaxy's redshift (which has no units) to its distance in light-years. But to find the distance, you need a value of the Hubble constant. If we measure c in meters per second and d in light-years, then 
H<sub>0</sub> has units of meters per second per light-year.</p>


      <p>The numerical value for the Hubble constant has been the subject of many experiments and much debate among astronomers. The currently favored value is about H<SUB>0</SUB> = 0.0215 m/sec/light-year. 
      The error associated with this number is about 10%, which reflects 
      the uncertainty in measuring absolute distances to galaxies.</p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr><td>
     <p><strong>Exercise 1.</strong> If a galaxy has redshift 0.1, how far away is it in light-years? Remember that c = 3.0 x 10<sup>8</sup> m/s, and assume H<sub>0</sub> = 0.0215 m/s/light-year.<br>
     What about a galaxy with redshift 0.2?</p>
</td></tr></table>

<p>The Hubble constant measures the expansion rate of the universe, so the inverse of the Hubble constant (1/H<sub>0</sub>) measures the amount of time that the universe has been expanding. In other words, 1/H<SUB>0</SUB>, tells us the time 
      since the Big Bang.</P>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr><td>
     <p><strong>Exercise 2.</strong> If you assume that H<sub>0</sub> = 0.0215 m/s/light-year, what is the age of the universe? If the age of the universe is subject to the same 10% uncertainty as the Hubble constant, what is the range of ages the universe could have?</p>

<p><b>Hints:</b><br> 1 light-year = 9,460,800,000,000 kilometers<br>
Look up the speed of light in a textbook or on the Internet</p>
</td></tr></table>

<p></p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr><td>
     <p><strong>Question 5.</strong> Recent measurements have shown that the oldest stars we can see are about 12 billion years old. Are these ages consistent with the age of the universe you calculated in Exercise 2?</p>

</td></tr></table>

</td>
</tr>
<tr><td>

      <P>&nbsp;</P></td></tr>
<tr><td></td></tr>

<tr><td><A href="interpreting.aspx" ><IMG align=left src="../../images/previous.jpg" ></A>
<A href="bad.aspx" ><IMG align=right src="../../images/next.jpg"></A></td></tr>

</table>

<P></P>

</div>
</asp:Content>
