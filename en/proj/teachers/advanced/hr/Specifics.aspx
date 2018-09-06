<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.HR.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Teacher's Guide to Specific Sections</h1>

<a name="intro"></a>
<p><b>Introduction</b></p>

<p>The H-R diagram is one of the fundamental tools astronomers use to classify stars. 
You can clearly see several different types of stars on an H-R diagram. In 
this lesson, students will look at the H-R diagram as a snapshot of all stars at a 
particular point in time. In a future lesson on stellar evolution, they will 
look at how stars evolve and move around the H-R diagram as they age.</p>

<a name="brightest"></a>
<p><b>The Brightest Stars</b></p>

<p>The first H-R diagram is very straightforward. Students will make a 
graph of absolute magnitude vs b-v. The quantity b-v is a measure of color, which in 
turn is a measure of a star's temperature. A lower b-v value corresponds 
to a higher temperature. The graph may seem backwards, since hotter stars 
are on the left and cooler stars are on the right.</p>

<p>The H-R diagram for the brightest stars in the sky is biased toward red and 
blue giant stars. These stars are the most luminous, so they will be the most 
easily visible in our night sky. Most of the stars close to Earth are much 
smaller and less luminous. They appear fainter in our night sky in spite 
of their proximity. Our Sun looks fainter than average when you compare it 
to the brightest stars.</p>

<a name="nearest"></a>
<p><b>The Nearest Stars</b></p>

<p>For the closest stars, students will make a graph of absolute magnitude 
vs. spectral type, which is also a measure of temperature. 
Emphasize that they really are making the same type of graph, although the axes 
are labeled differently. A useful analogy might be that they are using 
different units than the first graph.</p>

<p>When you look at the closest stars, you see a lot fewer giants and a lot more 
main sequence and dwarf stars. The stars that are closer to us are less 
luminous, so they do not appear as bright in the night sky. Our Sun has above 
average luminosity when compared to the closest stars. You can clearly 
see the main sequence on this graph - a diagonal line across the diagram. Stars on 
the main sequence have hydrogen-burning cores.</p>

<a name="thehr"></a>
<p><b>The H-R Diagram</b></p>

<p>A star's position on the H-R diagram tells you a great deal of information 
about it. The diagonal strip is called the main sequence. Main 
sequence stars are hydrogen-burning stars like our Sun. More massive main sequence 
stars are hotter, and are found at the top left of the strip. Less massive stars are 
cooler, and are found at the bottom right.</p>

<p>Massive stars burn through all their hydrogen quickly, in only 
a few million years. Smaller stars burn their 
hydrogen relatively slowly. Our Sun has been a main sequence star for 
about five billion years and will stay on the main sequence for another four to 
five billion years. </p>

<p>When stars have exhausted all their hydrogen fuel, they evolve to red giants. Their outer  
layers of gas expand and cool; therefore, the stars move to the right on the H-R diagram. 
Although a star cools when it becomes a red giant, it grows so large its luminosity 
(or total power emitted) increases. Therefore, the star also moves up the H-R diagram. 
The region above and to the right of the main sequence is occupied by the red giants.</p>

<p>When a red giant exhausts its fuel, its fate depends on its mass. 
Large red giants become neutron stars or black holes. Neutron stars are 
too faint to see in SDSS data and black holes, well, they are black!</p> 

<p>Smaller stars, like our Sun, become white dwarf stars. White dwarfs are 
the cores of stars that have exhausted all their nuclear fuel. They are very 
hot when formed, but they are not very luminous because they are so small. White 
dwarfs are less luminous and hotter than main sequence stars, so they lie below and 
to the left of the main sequence on the H-R diagram. They will not be commonly 
seen in the data for this project, but there may be a few.</p>

<a name="hipparcos"></a>
<p><b>The Hipparcos Data</b></p>

<p>The most difficult part of finding the absolute magnitude of a star is 
determining its distance. A bright star far away looks very similar to a 
faint star nearby. Unless you know the distances to both stars, you can't know 
how bright the stars actually are - their absolute magnitudes.</p>

<p>One method used to find distances to stars is called parallax. Parallax involves making  
two observations at different points, then using the distance between those points 
and the angle between the observations to determine the distance. 
As the photo in the student project shows, our eyes effectively use parallax to 
enhance our depth perception. Each eye sees a slightly different image. The brain 
combines the two images to give a sense of depth. </p>

<p>Stars are so far away that their parallax angles are very small. 
Astronomers use the orbit of the Earth to give a large baseline to 
increase the parallax angle. They observe a star at two different 
occasions separated by six months. For the second observation, the Earth is 
on the opposite side of the Sun, giving an effective baseline of about 186 million miles. </p>

<p>Stars are so far away that even this enormous baseline produces very little change in 
their positions. Only the very closest stars can have their distances 
determined using this technique. The blurring caused by Earth's atmosphere 
put severe restrictions on using parallax to find the distance to stars.</p>

<p>In 1989, the European Space Agency launched the Hipparcos satellite. 
Above the blurring effects of the atmosphere, Hipparcos was able to get much more 
accurate parallax measurements to a large number of stars. The satellite also 
measured the visual magnitudes and b-v colors for each star.</p>

<p>Students use a point and click interface to retrieve Hipparcos data. 
The interface opens in a new window. They must first click on a star to select it. 
Then, clicking on the "Get Info" button will retrieve data for 
that star. Practice using the interface yourself, so you can help students with 
any difficulties in using the interface.</p>

<p>After Exercise 5, there is a brief section where students are asked to find the 
distances to a few stars and then find their absolute magnitudes. This section serves are 
practice for using Hipparcos data to make an H-R diagram. You may wish to 
check students' work at this point to be sure they understand the mathematics.</p>

<a name="pleiades"></a>
<p><b>The Pleiades Data</b></p>

      <p>Working with the Hipparcos data involves a lot of mathematical manipulation;  
      this section is where good spreadsheet skills come in handy. 
      Students need to calculate the distances to stars. Using the 
      distances, they then need to calculate absolute magnitudes. The 
      b-v value for each star is given in column T37 of the star's data table.</p>
      
      <p>If students want information for more stars, they can widen the field of view. 
      Alternatively, you may want to have each student look at a different star 
      cluster, rather than having them all look at the Pleiades.</p>

      <p>The Pleiades are a rather young star cluster with a lot of hot stars.  
      When students make an H-R diagram, they will see a strong main sequence with 
      some red giants. 
      It's OK if students pick up a couple of foreground stars in this 
      section, since they will calculate the stars' distances absolute 
      magnitudes in the next few exercises.</p>

      <p>Here are a few other star clusters you may use in this section as well, 
      if you would like to see some different H-R diagrams.</p>

<table border="1" cellpadding="1" cellspacing="1" style="border-collapse: collapse" width="100%" id="AutoNumber1">
  <tr>
    <td width="33%"><font face="Arial" color="#F5F5F5"><em>Cluster</em></font></td>
    <td width="33%"><font face="Arial" color="#F5F5F5"><em>RA</em></font></td>
    <td width="34%"><font face="Arial" color="#F5F5F5"><em>Dec</em></font></td>
  </tr>
  <tr>
    <td width="33%"><font face="Arial" color="#F5F5F5">Hyades</font></td>
    <td width="33%"><font face="Arial" color="#F5F5F5">66.73</font></td>
    <td width="34%"><font face="Arial" color="#F5F5F5">15.52</font></td>
  </tr>
  <tr>
    <td width="33%"><font face="Arial" color="#F5F5F5">M41</font></td>
    <td width="33%"><font face="Arial" color="#F5F5F5">101.73</font></td>
    <td width="34%"><font face="Arial" color="#F5F5F5">-20.44</font></td>
  </tr>
  <tr>
    <td width="33%"><font face="Arial" color="#F5F5F5">NGC 457 (The Blair Witch 
    Cluster)</font></td>
    <td width="33%"><font face="Arial" color="#F5F5F5">19.78</font></td>
    <td width="34%"><font face="Arial" color="#F5F5F5">58.20</font></td>
  </tr>
  <tr>
    <td width="33%"><font face="Arial" color="#F5F5F5">Double Cluster</font></td>
    <td width="33%"><font face="Arial" color="#F5F5F5">34.75</font></td>
    <td width="34%"><font face="Arial" color="#F5F5F5">57.15</font></td>
  </tr>
  <tr>
    <td width="33%"><font face="Arial" color="#F5F5F5">NGC 2451</font></td>
    <td width="33%"><font face="Arial" color="#F5F5F5">116.35</font></td>
    <td width="34%"><font face="Arial" color="#F5F5F5">37.97</font></td>
  </tr>
  <tr>
    <td width="33%"><font face="Arial" color="#F5F5F5">M34</font></td>
    <td width="33%"><font face="Arial" color="#F5F5F5">40.5</font></td>
    <td width="34%"><font face="Arial" color="#F5F5F5">42.78</font></td>
  </tr>
</table>

<a name="radius"></a>
<p>You can find more open clusters
<a target="_blank" href="http://www.arval.org.ve/OClust.htm">here</a>.</p>

<p><b>Radius of a Star</b></p>

      <p>The link below Question 9 leads to an optional section on calculating 
      the radius of a star. This section involves a lot of mathematical manipulation, 
      but students may find it rewarding to be able to calculate the size of a star. 
      The stars given in the table will always be in the middle of the field of view. 
      Except for Barnard's star, they will also be the brightest. Students 
      can identify Barnard's star by carefully checking the coordinates.</p>

<a name="globular"></a>
<p><b>Globular Clusters</b></p>

<p>The two star clusters in the SDSS data are both old and distant globular 
clusters. When students try to make an H-R diagram for these clusters by 
hand, they will probably not find much of a discernable pattern. There are 
so many stars in the field, some of which are foreground stars, that it would be 
difficult to take enough data by hand to create a good H-R diagram. 
Literally hundreds of stars are needed. That observation leads naturally to the next section: 
using a search tool to retrieve the data for many stars at one time.</p>

<a name="searching"></a>
<p><b>Searching for Data</b></p>

<p>Students will use the cluster Pal 5 for this section, since Pal 3 does 
not have enough stars to create a good diagram. Students have two options for retrieving the 
data: SkyServer's Radial Search tool plus Excel's data filters, or SkyServer's SQL Search tool. 
Both tools should give the same results, so which tool they use is up to you. Learning the 
SQL Search tool will open up many new possiblities for SkyServer, and will enable students to 
do much more sophisticated independent research. Using the Radial Search tool is simpler, and will 
allow students to learn to use Excel, which can be a valuable technology skill.</p>

<p>Microsoft Excel will open .csv files, so students can import data directly into 
an Excel spreadsheet. See SkyServer's <a href="../../../../help/howto/graph/open.aspx" 
target="help">Graphing and Analyzing Data</a> tutorial to learn how to properly open a CSV 
file with Excel. Instead of v and b-v, we use SDSS's r filter and g-r color. The diagram 
will be recognizable as an H-R diagram. Most of the stars with g-r &gt; 1 
are not part of the cluster, and you will see some foreground stars in the field. 
Students should also notice what is called a "turnoff point" at around magnitude 17.5. 
The main sequence ends at around this magnitude and abruptly "turns off" onto the red 
giant branch. The cluster is so old that all of the brightest main sequence stars 
have exhausted their hydrogen fuel and have evolved into red giants.</p>

<a name="conclusion"></a>
<p><b>Conclusion</b></p>


<p>Students may send in their H-R diagrams of clusters that interest them. 
We'll evaluate the results we receive, and we will post the best 
of them on our web pages for others to see!</p>

<p>Students should <a href="mailto:raddick@pha.jhu.edu?subject=student H-R diagram">E-mail us</a> their results 
as Excel (.xls) or .csv files.</p>


<p>&nbsp;</p>


</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td align=center><A href="default.aspx" >
  <IMG align=left src="images/previous.jpg" ></A>
<A href="correlations.aspx" >
  <IMG align=right src="images/next.jpg" ></A></td></tr>

<tr><td>

</table>

<P></P>

</div>
</asp:Content>
