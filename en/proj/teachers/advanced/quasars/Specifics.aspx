<%@ Page Title="" Language="C#" MasterPageFile="QuasarsMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Quasars.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="QuasarsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Quasars - Teacher's Guide to Specific Sections</h1>
      
      <a name="radio"></a>
      <p><font size=4>Radio Astronomy</font></p>
      <p>Let the students read through this section on their own. It might 
      be a good chance to review the electromagnetic spectrum with your students. 
      Remind them that radio waves are much longer than visible light, meaning that it 
      is much more difficult to pin down the exact location of their source. 
      That is why it took so long to identify the first active galaxies and 
      quasars. In this section, you might also review the concept of redshift 
      and how it is used to help estimate the distances to objects.</p>
      <p>You might also wish to mention that some of these radio sources are so 
      strong that they can be picked up be amateur radio astronomers using 
      dishes no larger than an average satellite dish!</p>
      
      <a name="vlafirst"></a>
      <p><font size="4">VLA FIRST</font></p>
      <p>VLA FIRST is a companion survey to SDSS. FIRST is mapping the sky in the 
      radio band with a wavelength of 21 cm. Distant galaxies and quasars 
      may appear as normal stars in a visual-light photograph, but they give us 
      clues to their true nature by their strong radio emissions.</p>
      <p>In SDSS's visible images, the quasars are classified as stars or galaxies 
      and look rather unremarkable. The radio images reveal a source. 
      Two of the sources have particularly interesting 
      structures. One of the sources has two faint jets emanating from the 
      source; another actually has two lobes. The two lobes 
      are due to the jets interacting with gas clouds - a well-understood, yet 
      interesting, phenomenon.</p>
      
      <a name="compare"></a>
      <p><font size=4>Comparing Spectra</font></p>
      <p>Quasars are distinguished from stars and galaxies by their emission 
      lines. Most galaxy and star spectra are dominated by absorption 
      lines. Some active galaxies do have emission lines in their spectra 
      and are sometimes misclassified as quasars. To tell the 
      difference, you need to look at the width of the emission lines. Due 
      to their great distances and to the rapid rotation of gas around their central black 
      holes, quasars have very wide emission lines. Emission lines from 
      active galaxies tend to look like spikes. There are formal 
      mathematical definitions based on the widths of the lines, but these are 
      beyond the scope of this lesson.</p>
      
      <a name="whatare"></a>
      <p><font size="4">What are Quasars?</font></p>
      <p>In this section, students will look at the spectra of a variety of quasars up to a 
      redshift of about 5, the most distant quasar in SDSS's Early Data Release. 
      The quasars on the list in Exercise 2 are ordered by increasing redshift. As 
      students look at higher-redshift quasars, they will see the emission lines 
      march to the right in the spectra (i.e. longer 
      wavelength, or red end of the spectrum). Some emission lines will 
      disappear off the right side of the graph and new ones will appear on the 
      left side.</p>
      <p></p>
      
      <a name="power"></a>
      <p><font size="4">Power Source of Quasars</font></p>
      <p>No one has ever actually seen the heart of a quasar. The best model we have for the 
      power source of a quasar is a supermassive black hole. A black hole 
      is a region of space with gravitational fields so large that not even 
      light can escape from it. The black holes in the center of quasars are surrounded by huge disks of 
      gas and dust. As this gas and dust fall into the black hole, they 
      are subjected to enormous pressure and heat up to millions of degrees. 
      The gas and dust are so hot that they give off huge amounts of thermal 
      radiation, including radio waves, visible light, and x-rays.</p>
      <p>There is a limit to how bright a quasar can be. As the gas heats up, 
      its pressure increases. The pressure limits the rate at 
      which gas can fall into a black hole, and hence, the luminosity of the 
      quasar. It is similar to a large number of people trying to exit a 
      room. There are only so many people that can get though the door per 
      unit time. If more people try to push through, the &quot;pressure&quot; they exert 
      prevents them from doing leaving.</p>
      <p>One of the most important facts about quasars is that they all have a 
      high redshifts. The closest quasar is about 800 million light years 
      away, meaning that the youngest quasars ceased to exist about 800 million years 
      ago. The universe is not static; it changes as time goes on. 
      For most of the history of astronomy, people assumed the universe was 
      constant and unchanging. So the discovery of quasars led to a major shift in our 
      understanding of the universe. </p>
      
      <a name="sdss"></a>
      <p><font size="4">SDSS Quasars</font></p>
      <p>In the next section, students look at quasars from SDSS. Looking for them one 
      by one with the Navigation tool would not work, since the Navigation tool usually 
      misclassifies quasars as stars. To look at many objects, students need to run a 
      query on the SkyServer data. Ask students to name advantages of querying 
      a database to retrieve information on thousands of objects at once.</p>
      <p>Most large databases can be searched using Structured Query Language, or 
      SQL. There is a SQL search engine in SkyServer. This engine limits students 
      to searches lasting 30 seconds and returning 1000 objects. 
      If you want more objects, you can always break down your query into 
      multiple smaller queries. For example, if you wanted to find more quasars, 
      you could search for all quasars with z &lt; 0.5, and then another query for 
      z &gt; 0.5. Both queries would return up to 1000 entries.</p>
      <p>Students do not need to understand SQL to search the database; they can 
      copy the query directly from the page and past it into the 
      query box. Be sure they erase what is already in the box.</p>
      <p>However, students should have a basic understanding of SQL if they want 
      to attempt the final challenge. An SQL query consists of three parts:</p>
      <p><br>
      In the SELECT block, the user specifies what data to return. In 
      this query, we ask for the plate number, the mjd number, the fiber number, 
      the red shift, the magnitudes in all five filters, the RA, the Dec, and 
      the object ID.</p>
      <p>The FROM block specifies which part of the database to search. 
      Instead of searching the entire database of <%=globals.NObj%> objects, we tell 
      the computer to focus on the approximately <%=globals.NSpec%> objects for which we 
      have spectra. It is a lot faster to search a smaller database.</p>
      <p>The WHERE block tells the computer what features to look for.
      We are looking for objects with spectra and well-measured redshifts that 
      are classified as quasars (class = 3).</p>
      <p>Students can have the data returned as a HTML file in their browser or 
      a comma separated value file (csv). If they choose HTML, they can 
      select the data in the table and paste it into an Excel spreadsheet. 
      If they choose a csv file, they will have to save the file to a disk and 
      open it using Excel. Neither method is significantly faster or 
      easier, and you should consider what your students are comfortable doing on 
      the computer.</p>
      
      <a name="research"></a>
      <p><font size=4>Research Using Quasar Data</font></p>
      <p>In the next section, students attempt two advanced projects students. Exercise 4 
      has students create color-redshift diagrams for quasars. These 
      diagrams can be used to determine the redshift of a quasar from its 
      colors rather than from its spectrum. Since we do not take spectra 
      of every object, we can obtain approximate quasar redshifts even when no spectra 
      are available.</p>
      
      <p>In Exercise 5, students make color-color diagrams of quasars. Quasars with 
      similar redshifts tend to have similar colors. Students can examine these 
      diagrams and find what colors quasars with low redshifts have, and 
      what colors quasars with high redshifts have. Students who are good at using 
      spreadsheets can even use different colors to represent different red shifts on 
      their graphs.</p>
      
      <p>Both of these exercises reproduce an SDSS paper that was published 
      in <i>The Astronomical Journal</i> in May 2001. This paper is also available 
      online in PDF format. 
      
      <a name="conclusion"></a>
      <p><font size="4">Conclusion</font></p>
      <p>Students can try their own queries of the 
      data to see what else they can find. Possible ideas are looking at 
      quasars in a certain ranger of colors or in a certain range of redshifts. 
      They can also look at quasars for which we do not have high confidence 
      redshift measurements.</p>
      
      <p>The final challenge, Exercise 6, will challenge students to do 
      scientific inquiry and find the data necessary to answer their question. 
      They may need to do some research on how to structure an SQL query. 
      This page is an excellent <a target="_blank" href="http://w3.one.net/~jhoffman/sqltut.htm">
      SQL Tutorial</a>. When students finish the final challenge, encourage them 
      to <a href="mailto:raddick@pha.jhu.edu?subject=Quasars final challenge">E-mail 
      us</a> their research questions, the queries they write, their data analysis, 
      and their conclusions, and we will put them up on the project web site!</p>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx">
      <img align="left" src="images/previous.jpg"></a>
      <a href="correlations.aspx">
      <img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
