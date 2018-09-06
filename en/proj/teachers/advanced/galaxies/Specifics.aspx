<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Galaxies.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Teacher's Guide to Specific Sections</h1>

      <a name="classifying"></a>
      <p><font size="4">Classifying Galaxies</font></p>
      <p>Let the students try to classify galaxies on their own. Remind 
      them that there may be subtle differences in galaxies. Most students will 
      recognize the difference between elliptical and spiral galaxies, but not 
      everyone will make subdivisions. Ask if there are more subtle 
      distinctions between the galaxies that might make a more useful 
      classification system.</p>
      <p>When students compare their classifcation schemes, they will probably 
      find some similarities and some differences. Put a firm time 
      limit on this section so they debate does not drag on.</p>
      
      <a name="tuningfork"></a>
      <p><font size="4">The Hubble Tuning Fork</font></p>
      <p>Let the students read the section and discuss the different types of 
      galaxies. There are formal mathematical definitions for the 
      differences between E0, E1, etc. involving the ellipticity (major axis/minor axis) 
      of the galaxy, but they are beyond the scope of this 
      lesson. Let the students estimate which type of galaxy they have. 
      If they are off by one, it is not a big deal. Some of the elliptical types are 
      diffiuclt to tell apart.</p>
      <p>There are also precise definitions for the different types of spiral 
      galaxies. Again, they are beyond the scope of this lesson. 
      Since there are fewer types of spirals and larger differences between 
      them, students will probably find it easier to classify spirals (although 
      the bar can sometimes be sutble!)</p>
      <p>Lenticular galaxies are often mistaken for ellipticals. The disk 
      can be subtle, and the galaxies have no distinctive spiral arms.</p>
      <p>Make sure students realize that the terms "early" and "late" galaxies have 
      nothing whatsoever to do with the galaxies' ages. Hubble used the terms 
      because he thought that galaxies evolved from elleipticals to spirals on the 
      tuning fork. He turned out to be wrong, but the terms have been 
      kept for historical reasons. The terms are actually quite confusing because 
      elliptical galaxies have used up all their gas and have more old stars than spirals.</p>
      
      <a name="clusters"></a>
      <p><font size="4">Galaxy Clusters</font></p>
      <p>If your students have not completed the Colors and Spectral Types projects, 
      show them the picture of Abell 2255 and tell them that galaxies are found in 
      clusters. Tell them that studying clusters gives astronomers an easy way to 
      learn about the properties of galaxies, because clusters give astronomers a 
      large statistical sample of galaxies. It's like taking a poll of people - the 
      more people you ask, the more certain you can be that the responses the people 
      give are like the true average responses in the population.</p>
      <p>If students know how to make color-color diagrams, move on to the "Using 
      Clusters in Astronomy" section. SDSS astronomers looked at many 
      galaxies in the Early Data release. 
      After plotting a color-color diagram, they found they could separate the 
      early and late type galaxies based on their colors. Classifying thousands of 
      galaxies by color is much faster than trying to classify the galaxies visually.</p>
      <a name="gabell"></a>
      <p>In this section, students recreate this diagram for a galaxy 
      cluster. First, they use the 
      Navigation tool to look up colors of a few galaxies. Have them select about ten 
      galaxies, and keep a record of which galaxy types each point on the diagram 
      corresponds to. Next, they use one of two search tools to find information on all the galaxies in Abell 2255. The Radial Search tool is a little simpler, but students must take the extra step of filtering out stars with Excel (which will teach them valuable technology skills). The SQL Search tool is a little more complicated, but it allows students to do sophisticated astronomy research on SkyServer. Which tool you have students use is up to you. Click <a href="#gabell"
onclick="window.open('abell.aspx','','resizeable, width=620, height=160');">
here</a> for more information on the Abell catalog of 
      galaxy clusters.</p>
      <p>Many of the galaxies students see are background (behind the cluster) 
      or foreground (in front of the cluster) galaxies. In Exercise 3, ask students 
      how they know which galaxies are actually part of the cluster - cluster 
      galaxies have similar sizes, magnitudes, and colors. 
      In Exercise 4, we are concerned about the properties of large numbers of galaxies, so 
      using foreground and background galaxies that come from the MAST tool is all right.</p>
      <p>After drawing the separator line, students will see the galaxies separated 
      into ellipticals and spirals. Instead of trying to count the numbers of 
      galaxies, they can use the Sort feature (under the Data menu in Excel) to sort the data 
      according to u-r values. They can then see the 2.2 separator 
      clearly.</p>
      <p>Students may also need to change the scale to see the graph clearly. A few 
      outliers can give the graph an inapprorpriate scale.</p>
      
      <a name="spectra"></a>
      <p><font size="4">Galaxy Spectra</font></p>
      <p>The galaxies in this section are arranged from the bluest galaxies to 
      the reddest. The blue galaxies have lots of hydrogen emission lines 
      characteristic of star-forming regions of gas and dust called HII regions. 
      As the students go down the list, the hydrogen lines will diminish and 
      lots of absorption lines will become visible including hydrogen, sodium, 
      and the H and K calcium lines. For more background on what spectra are and how 
      astronomres use them, see <a href="#spectra" onclick=
      "window.open('http://www.astro.uiuc.edu/~kaler/sow/spectra.html');">Spectra</a>, 
      a web page by James Kaler.</p>
      
      <a name="collisions"></a>
      <p><font size="4">Galaxy Collisions</font></p>
      <p>This section lets students see some of the spectacular galaxy 
      collisions the SDSS has captured. Remember that even when galaxies 
      collide, the stars in them are so far apart that they rarely 
      collide. When a small galaxy collides with a large galaxy, the small galaxy 
      is frequently swallowed. This process is thought to lead to the giant elliptical 
      galaxies we see.</p>
      <a name="galcrash"></a>
      <p>You may want students to learn a little about how galaxies collide using 
      the <a href="#galcrash" 
      onclick="window.open('http://burro.astr.cwru.edu/JavaLab/GalCrashWeb/');">GalCrash</a> Java
      applet to model the collisions of galaxies. You should try the 
      applet out before your class does the project, so you can guide them in 
      using it.</p>
      <p>Tell students that GalCrash is a very simple program that models galaxy 
      collisions. Teach them the idea of a scientific simulation - a simple model 
      that incorporates only the most basic features of a real situation, but can 
      produce results similar to those observed in nature. Many fields of science 
      include models as part of their research.</p>
      
      <a name="conclusion"></a>
      <p><font size="4">Conclusion</font></p>
      <p>Exercise 8 is a difficult final challenge. There are many different effects 
      that students could see. They may see the 
      galaxies reddened as the redshift increases. Students may also see 
      different ratios of elliptical and spiral galaxies. They need to remember 
      that the separator line may move at different redshifts as the spectra 
      shift!</p>
      <a name="end"></a>
      <p>When students finish their projects for Exercise 8, have them 
      <a href="mailto:raddick@pha.jhu.edu?subject=Galaxy evolution">E-mail us</a> a 
      description of their results, as well as any graphs they made. We can use 
      .gif and .jpg images, which can be created with Adobe Photoshop, or with 
      shareware image converters like <a href="#end"
      onclick="window.open('http://www.webattack.com/get/imageconverter.shtml');">
      Image Converter.</a> We can also use Microsoft Excel (.xls) spreadsheet files.</p>

      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img align="left" src="images/previous.jpg"></a>
      <a href="correlations.aspx"><img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
