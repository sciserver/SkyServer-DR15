<%@ Page Title="" Language="C#" MasterPageFile="HubbleMaster.master" AutoEventWireup="true" CodeBehind="Conclusion.aspx.cs" Inherits="SkyServer.Proj.Advanced.Hubble.Conclusion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HubbleContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>
      <H1>The Hubble Diagram</H1>

      <P>As you examined galaxy clusters and spectra in the last two sections, you went
      through the same steps that astronomers like Edwin Hubble went through in 1929. Now, you have only
      one task left: you must make a Hubble diagram, pulling together your 
      data to learn something about the universe.</P>

      <P>&nbsp;</P>
      
      <a name=bigbang></a>
      <H1>The Hubble Diagram and the Big Bang</H1>

<table align="right" width=275 border=1 cellpadding=0>
<tr><td align="middle">
            <OBJECT align=right 
            classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
             codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=200 id=ShockwaveFlash1 width=275><PARAM NAME="_cx" VALUE="7276"><PARAM NAME="_cy" VALUE="5292"><PARAM NAME="Movie" VALUE="bigbang.swf"><PARAM NAME="Src" VALUE="bigbang.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="0"><PARAM NAME="Loop" VALUE="-1"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="000000"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
              <EMBED src="bigbang.swf" quality=high bgcolor=#000000  WIDTH=275  
 HEIGHT=200 align=right TYPE="application/x-shockwave-flash"  
 PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED></OBJECT></td></tr><tr><td>

<p class=caption align=center>Click on animation to play</p>
</td></tr></table>

      <P>The key breakthrough that led astronomers to the big bang picture was the linear
      relationship between distance and redshift on the Hubble diagram. Two important 
      observations led astronomers to this picture. First, the linear 
      relationship between distance and redshift does not depend on direction in 
      the sky - in one direction we see redshifts, as if galaxies are receding 
      from us, and in the opposite direction we also see redshifts, not 
      blueshifts. Everywhere it seems that galaxies are moving away from us, and 
      the farther they are, the faster they appear to be moving. Second, counts 
      of galaxies in various directions in the sky, and to various distances, 
      suggest that space is uniformly filled with galaxies (averaging over their 
      tendency to cluster).</P>

<p>  From  the second observation, we can infer 
      that our region of space is not special in any way - we don't see an edge 
      or other feature in any direction. While all galaxies appear to be moving 
      away from us, this does not mean that we are at the center of the universe.&nbsp;All 
      galaxies will see the same thing in a statistical sense - 
      an observer on any galaxy who makes a Hubble diagram would see a linear relationship 
      in all directions. This is exactly the picture you get if you assume that all of space 
      is expanding uniformly, and that galaxies serve as markers of the expanding, underlying 
      space. The expanding universe model would not have worked if astronomers had found
anything except a linear relation between distance and redshift. </p>

<p>    The term "big bang" implies an explosion at some location in space,
with particles propelled through space. If this were true, then&nbsp;with respect to
the site of the explosion, the fastest-moving particles will have traveled furthest,&nbsp;leading
to a linear relationship between distance and velocity. But this is
NOT the concept behind the big bang cosmological picture. The explosion model is
actually more complex than the big bang cosmological model - you need to say why there
was an explosion at that location and not some other location; what
distinguishes the galaxies at the edge as opposed to closer to the center, etc.
In the cosmological picture, all locations and galaxies are equivalent
- everybody sees&nbsp;the same thing, and there is no center or edge. </p>

<p>   Hubble did 
      not measure the redshifts himself - those were already measured for a 
      few dozen galaxies by Vesto Slipher. Hubble's key contribution was to 
      estimate&nbsp;the distances to galaxies and clusters and to realize that the 
      data in his diagram could be represented by a straight line.</p>

<IMG align=right src="images/zdgraph.jpg">
<p>The linear relation between redshift and distance is
expressed as </p>

<p>c z = H<sub>0</sub> d , </p>

<p>where c is the speed of light, z is 
      the spectroscopic redshift, d is the distance, and H<SUB>0</SUB> is a 
      constant of proportionality called the Hubble constant whose 
      value&nbsp;depends on the units used 
to measure the distance d. The sub-naught tells us "evaluated at the
present cosmic epoch," which suggests that its value may have been different at
an earlier cosmic time. Note that as we observe galaxies at progressively
greater distances, we are seeing them as they were progressively farther in the
past, because it has taken the light from them longer to reach us. In other
words, larger d means we are looking at things at earlier cosmic epochs. (For
sufficiently large d, we might expect a departure from the simple linear
relation, but that's another story.) </p>
<p>
   If you were to ask an astronomer what the distance to
a particular galaxy was, most likely she or he would measure the redshift z and use 
the formula above to compute d. This is not what we are going to do: we
are trying to establish that the formula itself is valid, which means that&nbsp;we
must&nbsp;estimate d independently from our measurement of redshift.</p>
      <H1>   &nbsp;</H1>
      <a name="absolute"></a>
      <H1>Absolute and Relative Distances</H1>

      <table align="left" border=0>
      <tr><td align="middle"><IMG border=1 src="images/quasar.jpg"  cellpadding="5"><br>
      <span class='caption'>A quasar found by SDSS at redshift 5.8,<br>       or about 2800 Mpc.
      </span></td></tr>
      </table>

      
      <P>What you measured in the <a href="distances.aspx">Distances</a> section was relative,&nbsp;not 
      absolute, distance.&nbsp;Having an absolute distance means we know the 
      value of d in inches or meters or something - astronomers use a unit 
      called the megaparsec (Mpc), where 1 Mpc = 3.1 x 10<SUP>22</SUP> m. (To 
      give you a sense of this distance, the Andromeda galaxy is a bit less than 
      1 Mpc away.) If we use such units, then H<SUB>0</SUB> has units of km per 
      sec per Mpc. The currently favored value is H<SUB>0</SUB> = 70 km/sec/Mpc. 
      The error associated with this number is about 10%, which reflects 
      the uncertainty in measuring absolute distances&nbsp;to galaxies.</P>   

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><STRONG>Exercise 18</STRONG>: Neglecting other elements of the cosmological model, 
the inverse of the Hubble constant, 1/H<SUB>0</SUB>, tells us the time since the Big Bang - 
the age of the universe. If H<sub>0</sub> = 70 km/sec/Mpc, then how old is the universe? 
This age is subject to the same 10% uncertainty as for H<sub>0</sub>. Given this uncertainty, 
what is the range of possible ages? Is this range consistent with the ages of the oldest 
stars, which are about 11 to 13 billion years old? (Hint: 1 Mpc = 3.06 x 10<sup>19</sup> 
km)</p></td></tr></table>

<p>Because you could 
      measure&nbsp;only relative distances in the <a href="distances.aspx">Distances</a>, you have no 
      information on the value of H<SUB>0</SUB>.
But your work is still a significant accomplishment: the linear relationship is
what motivated the big bang picture, not any particular value for H<sub>0</sub>. 
</p>

<p>&nbsp;</p>
      <a name=together></a>
      <H1>Putting it All Together</H1>




<table class=exercise width=600 cellpadding=5 cellspacing=0><tr><td>
<p><STRONG>Exercise 19</STRONG>: In the <a href="distances.aspx">Distances</a> section, you found 
      relative distances to several galaxies, in three clusters, at one point in 
      the sky. In the <a href="redshifts.aspx">Redshifts</a> section, you found redshifts for the same 
      galaxies. Now, use a graphing program to make a Hubble diagram of these galaxies. 
Graph redshift on the x-axis and distance on the y-axis. Label your axes clearly.
Can you fit a straight line through your points?</p></td></tr></table>

      
<p></p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><strong>Question 7</strong>: What are the logical steps in the argument that lead 
      from the straight line you see to the concept that the universe is expanding? What 
      assumptions do you need to make to argue this? Can any of those 
      assumptions be tested with SkyServer?</p></td></tr></table>

<p></p>
      <P>The data you have so far show a relationship 
      between distance and redshift, and imply that the universe is expanding. 
      This is an amazing result, but remember that you have only looked 
      at a few galaxies in one tiny part of the sky. Scientists 
      need a large amount of data to be convinced, and many 
      of them would be skeptical of your conclusions. They might 
      say that something strange was happening in that part of the 
      sky, or that&nbsp;what you&nbsp;found was only a statistical coincidence. 
      </P>
      <P>In fact, Edwin Hubble and other astronomers also had difficulty convincing scientists of this 
      discovery. After he announced his discovery in 1929, he teamed up with 
      astronomer Milton Humason and embarked on a systematic program to look 
      trace the diagram to larger distances and higher redshifts.&nbsp;They 
      looked at thousands of&nbsp;galaxies, trying to prove&nbsp;that the linear 
      characterization was really valid. They succeeded: by 1937, the 
      redshift-distance relation was firmly established by these observations. 
       </P>
      
      <table class=rchallenge width=600 cellpadding=5 cellspacing=0><tr>
          <td>
      <P><STRONG>Research Challenge</STRONG>: Return to the SkyServer data and repeat 
      the steps you went through in the <a href="distances.aspx">Distances</a> and 
      <a href="redshifts.aspx">Redshifts</a> sections. Choose&nbsp;galaxies or 
      clusters from the data and use several different methods to find their 
      relative distances. Then, find their redshifts, using either your 
      templates or the redshifts given by SkyServer. The easiest way to examine 
      large numbers of galaxies is to use the <a href="../../../tools/chart/navi.aspx" target="tools">
      Navigation Tool</a> or the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search Tool</a>. 
      For help using the SQL Search Tool, see the <a href="../../../help/howto/search" target="help">
      Searching for Data</a> tutorial.</p>
      
      <p>Make another Hubble 
      diagram, using all your new data. Try to make the diagram as detailed as 
      you can, and try to make the straight-line fit as accurate as you can. 
      When you finish, <A href="mailto:raddick@pha.jhu.edu?subject=Hubble diagram">E-mail your diagram 
      to us</A>&nbsp;(attach it a .gif or .jpg image, or as a .xls spreadsheet) 
      and we will review your work.</P></td></tr></table>

</td>
</tr>
<tr><td>

      <P>&nbsp;</P></td></tr>
<tr><td></td></tr>

<tr><td><A href="redshifts.aspx" ><IMG align=left src="../../images/previous.jpg" ></A>
<A href="diagrams.aspx" ><IMG align=right src="../../images/next.jpg"></A></td></tr>

<tr><td><p><FONT size=-3>Project designed by Rich Kron and 
      Jordan Raddick</FONT></p>       </td></tr>
<tr><td><p><FONT size=-3>Questions? 
      Comments? Suggestions? E-mail the <A href="mailto:raddick@pha.jhu.edu">web 
      designer</A>.</FONT></p></td></tr>
</table>

<P></P>

</div>
</asp:Content>
