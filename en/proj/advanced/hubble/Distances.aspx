<%@ Page Title="" Language="C#" MasterPageFile="HubbleMaster.master" AutoEventWireup="true" CodeBehind="Distances.aspx.cs" Inherits="SkyServer.Proj.Advanced.Hubble.Distances" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HubbleContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<a name="galaxies"></a>
<h1>Estimating Distances to Galaxies</h1>

<table align=right border=1 bordercolor=#ffffff cellpadding=0 cellspacing=0><tr>
          <td>
   <IMG src="images/magnitude.jpg">
</td></tr></table>

<p>In the last section, you used magnitude as a substitute for relative distance. 
But magnitude can also be converted into a direct measure of relative distance.
To find the relative distance, first convert the magnitude from logarithmic units
to real units. The quantity that magnitude actually measures is radiant flux - the 
amount of light that arrives at Earth in a given time. The formula for finding
the radiant flux F from magnitude m is:</p>

<p>F = 2.51<sup>-m</sup>.</p>

<p>F is a relative number that compares the arriving radiant
flux to a standard: the star Vega in the northern constellation Lyra. But since we 
are only looking for relative distance, we can use the relative radiant flux. Now, take 
the square root of the radiant flux. Take the inverse of the square root. The result is 
a relative distance to the galaxy. To make it easier to understand these relative 
distances, you should "normalize" them so that the nearest galaxy has a relative 
distance of 1. Then a galaxy twice as far away as the nearest galaxy will have a relative 
distance of 2.</p>

<p>To normalize the relative distances, set up a ratio between the relative 
distances of the nearest galaxy (1) and the second nearest (2) so that
d<sub>1</sub> / d<sub>2</sub> = 1 / x, then solve for x: the normalized distance 
to galaxy 2. Repeat to find the normalized relative distance to farther galaxies. 
This technique will accurately measure the true relative distances to galaxies.</P>
   
<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td>
            <P><STRONG>Exercise 7</STRONG>: Find the relative distances between 
            the six galaxies whose magnitudes you found in Exercise 1. Use a 
            scientific calculator that can display numbers in scientific 
            notation (that is, as 1.5 million = 1.5E+06).</P>
            <p>Use this <a href="workbooks/exercise7.xls">SkyServer workbook</a> to help 
            you with your calculations.</p>
            </td></tr></table>

<p></p>

<p>An alternative way to estimate the distance to a galaxy is to look at its apparent
size. The farther away a galaxy is, the smaller its image will appear. To
find relative distance using this technique, measure the distance across the galaxy's 
image in any convenient units: inches, minutes of a degree, or something else. If 
you assume that all galaxies have approximately the same true size, the inverse 
of that number will tell you the relative distance to the galaxy.</p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><STRONG>Exercise 8</STRONG>: Write the two techniques for finding relative distance
as algebraic equations. Derive them using geometrical or physical principles.</p></td>
</tr></table>

<p></p>

<table class=question width=600 cellpadding=5>
        <TBODY><tr><td>
<p><strong>Question 2</strong>: Suppose the relative distances 
      for a number of galaxies using brightnesses don't agree with the relative 
      distances using apparent sizes. What would you conclude?</p></td></td></tr></table>

<p>But even if you know the correct relative distance to a galaxy, you still run into the 
problem you saw in Exercise 5: different galaxies have different properties. Suppose a 
certain galaxy is twice as large as an average galaxy. On Earth, the only information 
we could get from the galaxy is what we could see in its image. When we saw the larger 
image, we would have no way of knowing the galaxy actually was larger: we would assume
that it was simply closer to us. Because we lacked knowledge of the galaxy's true 
properties, we would misjudge its actual distance from us. Because we misjudged the 
galaxy's distance, if we used it in a Hubble diagram, we would not get the correct 
results. To overcome this problem, we need to look not just at individual galaxies, but
also at clusters of galaxies.</p>


<a name="clusters"></a>
<h1>Estimating Distances to Clusters</h1>

<table align=right border=1 bordercolor=#ffffff cellpadding=0 cellspacing=0><tr>
          <td>
   <IMG src="images\abell168.jpg">
</td></tr></table>

<p>The key to overcoming our lack of knowledge about galaxy properties is to recognize 
that clusters can be thought of as statistical units or populations of galaxies: small 
groups might have a dozen member galaxies, and rich clusters could have more than a 
thousand member galaxies. Even if the properties of individual galaxies vary widely, the 
average properties of galaxies in the cluster should come close to the average properties 
of galaxies in the universe. The larger the cluster's population, the more confident we 
are that statistical measures are meaningful.</p>

<p>Galaxies in a cluster are effectively 
      all at the same distance (both relative and absolute) from us. This means 
      that their apparent sizes and brightnesses are in the same proportions as 
      their intrinsic, or "true," sizes and brightnesses. In other words, if 
      galaxy A in a cluster looks 3.5 times brighter than galaxy B, then it 
      really emits 3.5 times as much light. By looking at the galaxies in a 
      cluster, we can get a picture for the variations between galaxies in a 
      population.

<p></p>
<table class=question width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><strong>Question 3</strong>: Why can we assert that galaxies in a cluster are all at the same 
distance?</p></td></tr></table>
      
<p></p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><STRONG>Exercise 9</STRONG>: Show that the 
      fractional error in the assumption that galaxies in a spherical cluster 
      are all at the same distance is equal to the cluster's angular size: the angle 
      of the sky that it takes up when viewed from Earth.</p></td></tr></table>

<p></p>
  
<p>The trick in estimating galaxy distances, however, is knowing which galaxies are
actually part of the cluster. Just because two galaxies are in the same area of the sky
doesn't mean that they are in a cluster; they could be in the same general direction, but
at very different distances.</p>

<p>The following analogy might help you figure out how to place galaxies in clusters.
Suppose that galaxies are like buildings, and groups and clusters are like towns and cities.
Suppose you were standing on a very tall platform at Fermilab in Batavia, Illinois. You 
look out over the large, flat plains of central Illinois with a telescope. Your task is 
to survey the landscape for buildings, towns, and cities, and make a map that shows their
positions with respect to you at the center. You are not allowed to use any
information other than what you can see through your telescope.</p>

<p>In principle, a small town in the relative foreground could look like a large 
      city that is farther away: a one-story building will have the same 
      apparent height as a ten-story building that happens to be ten times 
      farther away. But it is unlikely that you would confuse the small town for 
      the large city - there are enough other bits of information at your 
      disposal to get these populations of buildings in their correct relative 
      positions.</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><strong>Question 4</strong>: What are some of those clues and cues? 
      Would any of those techniques apply to estimating relative distances for 
      galaxies in space?</p></td></tr></table>

<p></p>

<table class=exercise width=600 cellpadding=5 cellSpacing=0><tr>
          <td>

<a name="ex10"></a>
<STRONG>Exercise 10</STRONG>: Look at SDSS images for the following clusters:</td></tr>
<tr><td>
                     
<table border=1 cellpadding="3" align=center>

<tr>
<td>
            <P class=caption align=center>Cluster name</P> </td>
<td>
            <P class=caption align=center>Run</P></td>
<td>
            <P class=caption align=center>Camcol</P></td>
<td>
            <P class=caption align=center>Field</P></td></tr>

        <TR>
          <TD>
            <P align=center><A 
            href="../../../tools/chart/navi.aspx?ra=258.25844&dec=64.05230" target="tools">
	    Abell 2255</A>  </P></TD>
          <TD>
            <P align=center>1356</P></TD>
          <TD>
            <P align=center>2</P></TD>
          <TD>
            <P align=center>32</P></TD></TR>

        <TR>
	    <TD>
            <P align=center><A 
            href="../../../tools/chart/navi.aspx?ra=118.95583&dec=33.72884" target="tools">Abell 
            603</A> </P></TD>
          <TD>
            <P align=center>756</P></TD>
          <TD>
            <P align=center>3</P></TD>
          <TD>
            <P align=center>748</P></TD></TR>
        <TR>
          <TD>
            <P align=center><A href="../../../tools/chart/navi.aspx?ra=211.48287&dec=58.69432" target="tools">
            Abell 1865</A></P></TD>
          <TD>
            <P align=center>752</P></TD>
          <TD>
            <P align=center>3</P></TD>
          <TD>
            <P align=center>468</P></TD></TR>
        <TR>
          <TD>
            <P align=center><A href="../../../tools/chart/navi.aspx?ra=252.398&dec=64.484" target="tools">
            Unnamed</A></P></TD>
          <TD>
            <P align=center>1339</P></TD>
          <TD>
            <P align=center>3</P></TD>
          <TD>
            <P align=center>11</P></TD></TR>
        <TR>
          <TD>
            <P align=center><A href="../../../tools/chart/navi.aspx?ra=358.38439&dec=0.65433" target="tools">Unnamed</A></P></TD>
          <TD>
            <P align=center>756</P></TD>
          <TD>
            <P align=center>1</P></TD>
          <TD>
            <P align=center>728</P></TD></TR>

        <TR>
          <td colSpan=4>
            <P class=caption align=center>Click on&nbsp;a link for a 
            picture of the cluster</P></td></TR></table>
         </td></TD>  
      <tr><td>
      <P>For each cluster, think about how we know that the 
      galaxies are actually part of the same cluster. What properties are 
      similar between galaxies in the same cluster? What properties show a wide 
      range? How might you be able to tell - using just these images - if any 
      particular galaxy is actually in the cluster, as opposed to being at a 
      different distance along the same line-of-sight?</P>
          
      </td></tr></table>

<p>Once you know which galaxies are members of clusters, you can compare the properties
of individual galaxies in different clusters. For example, the average size of a galaxy
in one cluster should be about the same as the average size of a galaxy in another 
cluster. Or, the brightest galaxy in one cluster should have about the same true 
brightness as the brightest galaxy in another cluster.</p>

<p>There is no "best" way to measure relative distances to
galaxies, but some may be arguably more effective than others. Edwin Hubble and
his co-worker Milton Humason tried a number of schemes, mostly related to the
value of the apparent brightness of the brightest galaxies in rich clusters, 
and other astronomers tried others. But today, you have much better and more extensive 
data available to you!</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><strong>Question 5</strong>: What would tell astronomers that one 
      approach was better than another?</p></td></tr></table>

      <p>Any 
      technique for measuring distances will have associated errors - that's why 
      we speak of estimates. As long as there are enough galaxies in our 3-D 
      map, a structure in the map may be apparent even if your distances are only 
      approximate. You do want to avoid a type of error called a systematic bias, 
      that is, where all the distances are incorrect by an unknown factor that 
      depends on distance. If your distance estimates suffer from this problem, 
      you won't get a useful Hubble diagram.</p>

<p>Because the properties of galaxies vary so widely, you should use the same measure of 
relative distance for each cluster you examine. Some examples of things that astronomers have 
tried as indicators of relative distances are:</p>

<p>1) the apparent 
      sizes of face-on galaxies with high-contrast spiral patterns<br>

2) the apparent size of the rings in ring galaxies<br>

3) the apparent sizes of edge-on disk galaxies<br>

4)&nbsp;the apparent brightnesses of the brightest galaxy in a
rich cluster of galaxies<br>

5) the apparent brightness of the 10th-ranked (or
3rd-ranked, or 5th-ranked) galaxy in a rich cluster of galaxies<br>

6) the apparent size of the cluster itself<br>

7) the value of a feature in the histogram of the apparent
brightnesses (or sizes) of galaxies in a cluster<br>

&nbsp;</p><![if !supportEmptyParas]><![endif]>

<a name="sample"></a>
<h1>Relative Distances for Sample Galaxies</h1>

<p>Now that you have identified some of the ways to determine
relative distances to galaxies and clusters, you are ready to use these ways to find the
relative distance to some real galaxy clusters. </p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>

<p><STRONG>Exercise 11</STRONG>: Look at the SDSS image below. The image shows three galaxy clusters in the  
same area of the sky. 
<p></p>

<table align=center>
 <tr>
  <td><a href="images/three-clusters-big.jpg" target="_blank"><img src="images/three-clusters.jpg" alt="Three overlapping clusters from the SDSS" /></a></td>
 </tr>
</table>


<p></p>
     
      <p>Look closely at the image and decide which galaxies belong to which clusters. 
Make some notes for yourself about which galaxies belong where.</p>

<p>Click on the image for a larger view (opens in a new window).</p>

      <p>Use this <a href="workbooks/exercise11.xls">SkyServer workbook</a> to record your data.</p>
</td></tr></table>

<p></p>

<a name="ex12"></a>
<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>      
<p><strong>Exercise 12</strong>: Now, find the relative distances to the galaxies 
you studied in<br>Exercise 11.</p>
<p>Open the <a href="../../../tools/chart/navi.aspx?ra=178.27&dec=1.025" target="tools">Navigation Tool</a> window. The tool will open in the area of the image shown above: RA = 178.27, Dec = 1.025. Use the zoom buttons (the magnifying glasses and 
 blue rectangles on the left side of the window) to zoom in our out. Click on the NWSE buttons 
 to shift the part of the sky shown in the main window. Use the zoom and NWSE buttons until what you 
 see in the main Navigation Tool window looks like what you saw in Exercise 11. Then, click the 
 "specObjs" checkbox. The main window will reload with red squares around all galaxies for 
 which the SDSS has measured a spectrum.</p>

 <p>Measure one property of each galaxy you see marked by a red square. From your 
 measurement, calculate the relative distance of each galaxy with respect to the
 closest one (which would have a relative distance of 1). Record your galaxy
 measurements as a table with the following format: object ID, right ascension,
 declination, measurement, relative distance. Then, click "Add to Notes" to save 
 each galaxy to your notebook.</p>
 
 <p>Use the same workbook you used in the last exercise.</p>
                  
 <p></p>
 
<p><a href="../../../tools/chart/navi.aspx" target="tools">
Launch the Navigation Tool</a><br>
(the tool will open in the same window that held the Object Explorer tool)</p>


</td></tr></table>

<p></p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
<p><STRONG>Exercise 13</STRONG>: Repeat Exercise 12 for the same clusters using
a different measured quantity leading to another estimate of relative distance. Add 
two columns to the right edge of your table for your second measurement and second 
relative distance. How do your independent estimates of the cluster distances compare? 
Which is better? Why?</p></td></tr></table>


<P>&nbsp;</P></TD></TR>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td><A href="simple.aspx" ><IMG align=left src="../../images/previous.jpg" ></A>
<A href="redshifts.aspx" ><IMG align=right src="../../images/next.jpg" ></A></td></tr></TBODY></TABLE>

</div>
</asp:Content>
