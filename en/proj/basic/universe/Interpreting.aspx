<%@ Page Title="" Language="C#" MasterPageFile="UniverseMaster.master" AutoEventWireup="true" CodeBehind="Interpreting.aspx.cs" Inherits="SkyServer.Proj.Universe.Interpreting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UniverseContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>
<a name="expand"></a>
<h1>The Hubble Diagram and the Expanding Universe</h1>

<p>When you made graphed magnitude vs. redshift in the last section, you went through steps similar to the ones Edwin Hubble went through in 1929. Now, you are at the same point Hubble was at in 1929: you must interpret your diagram to learn something useful about the universe.</p>

<!--
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

</td></tr></table>-->

      <P>Hubble made two other important 
      observations that led him from the straight line he saw in his data to the 
      picture of the expanding universe. First, the line in his 
      distance-redshift diagram does not depend on direction in 
      the sky - in one direction we see redshifts, as if galaxies are moving away 
      from us, and in the opposite direction we also see redshifts, not 
      blueshifts. Everywhere, galaxies are moving away from us, and 
      the farther they are, the faster they move.</p>

<p>Second, counts 
      of galaxies in various directions in the sky, and to various distances, 
      suggest that space is uniformly filled with galaxies. (Although galaxies cluster,
      the clusters average out over all of space).</P>


      <h1>The Center of the Universe?</h1>

      <p>Since we see all galaxies moving away from us, you might conclude that we are at the center of the universe. But this is not the case. Think back to the balloon - each point on the surface of the balloon got farther away from every other point, but no point was at the "center" of the balloon. All points move away from each other because of the expansion of the balloon's surface.</p>

      <p>Similarly, all galaxies in the universe move away from one another because of the expansion of space in the universe. There is no "center" to the universe - we would see the same straight line on the Hubble Diagram if we were observing from any other galaxy. Galaxies move away from each other because of the expansion of the universe.</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><strong>Question 4</strong>: You now know that we are not at the center of the universe - that we would see a straight line in the Hubble diagram from any place in the universe. So how does the straight line imply that the universe is expanding?</p></td></tr></table>

<h1>The Equation for the Line</h1>


<IMG align=right src="images/zdgraph.jpg">
<p>The line on the Hubble diagram that relates redshift to distance is 
expressed as </p>

<p>c z = H<sub>0</sub> d , </p>

<p>where c is the speed of light, z is 
      the redshift, d is the distance, and H<SUB>0</SUB> is called the <em>Hubble 
      constant</em>. The value of H<sub>0</sub> depends on the units used 
to measure the distance d. The subscript 0 tells us "measured at the
present time," which suggests that its value may have been different 
earlier.</p>

<p>If you were to ask an astronomer what the distance to some particular galaxy was, most likely she or he would measure the redshift z and use the formula above to compute d. This is not what you did: you were trying to establish that the formula itself was right, which means that you had to estimate d independently from your measurement of redshift. But assuming the universe is expanding, the equation above provides an easy way to measure the distance to any galaxy - as long as you know the value of H<sub>0</sub>, the Hubble constant.</p>



</td></tr>

</td>
</tr>
<tr><td>

      <P>&nbsp;</P></td></tr>
<tr><td></td></tr>

<tr><td><A href="making.aspx" ><IMG align=left src="../../images/previous.jpg" ></A>
<A href="bigbang.aspx" ><IMG align=right src="../../images/next.jpg"></A></td></tr>

</table>

<P></P>

</div>
</asp:Content>
