<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="Lesson.aspx.cs" Inherits="SkyServer.Proj.Teachers.Kids.Constellation.Lesson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Constellations</h1>
      <h1>Lesson Plan</h1>

      <a name="goals"></a>
      <h2>Goals</h2>

      <p>By the end of this project, students should be able to:</p>

      <ul>
        <li><p>"Connect the dots" to form constellations from stars
        <li><p>Compare their perspectives to the perspectives of other students and ancient peoples
        <li><p>Recognize a few famous constellations, and know the myths behind them
        <li><p>Look up and understand simple scientific data
        <li><p>Create simple stories about their constellations (follow-up activity)
      </ul>

      <a name="prereqs"></a>
      <h2>Prerequisites</h2>

      <p>Students should know what a star is. They should have a basic understanding of coordinates, both x and y and longitude and latitude. They should be able to use graph paper. They should be comfortable using web browsers, pointing and clicking, and navigating between windows.</p>

      <a name="vocab"></a>
      <h2>Vocabulary</h2>
      <ul>
         <li><p><em>Astronomer</em> - a person who studies the sky<br>
         <li><p><em>Constellation</em> - a shape in the sky, made by connecting stars<br>
         <li><p><em>Hemisphere</em> - half of the Earth<br>
         <li><p><em>Light-year</em> - the distance light travels in one year (9,458,000,000,000 kilometers)<br>
         <li><p><em>Magnitude</em> - a number that describes how bright a star appears. Smaller numbers mean brighter stars.</p>
      </ul>


      <a name="materials"></a>
      <h2>Materials</h2>

      <p>Students will need two handouts to complete the activity: the simple dove/horse constellation picture, and a grid on which to outline their constellation. Print out enough copies of "The Dove Constellation" for half your students, and "The Horse Constellation" to the other half. Then show all the students the star pattern without the dove or horse name, either printed on a transparency or on the "Simple Made-Up Constellation" page of the project. All three versions of the handout are listed below.</p>

      <p>When students make their constellations to find in SkyServer, they will need to plot their stars on a regular grid. Students can use graph paper, or they can use the Grid file below. Print out one copy of the grid for each student.</p>

      <p>All these handouts are PDFs, which require <a href="http://www.adobe.com/products/acrobat/readstep2.html" target="offsite">Adobe Acrobat Reader</a>.</p>

      <p><a href="materials/dove.pdf" target="materials">The Dove Constellation</a><br>
      <a href="materials/horse.pdf" target="materials">The Horse Constellation</a><br>
      <a href="materials/starpattern.pdf" target="materials">The Dove/Horse Star Pattern (no labels)</a><br>
      <a href="materials/grid.pdf" target="materials">Grid for Student Constellations</a></p>


      <a name="preptime"></a>
      <h2>Preparation Time</h2>

      <p>You should be able to set up this project quickly. Before the project starts, print out enough copies of the dove handout for half your students, and the horse handout for the other half. Print out a copy of the constellation grid for each student. Before students arrive in the computer lab, load the <a href="../../../kids/constellation/">front page of the student project</a> on each computer. You should also spend a few minutes practicing using the Navigation tool, so you can help students who have problems.</p>


      <a name="classtime"></a>
      <h2>Classroom Time</h2>

      <p>Allow two 45-minute class sessions for this project. In the first class, students study the Simple Made-Up Constellation, learn about Orion and other constellations, and outline their constellations. In the second class, students use the Navigation tool to search SkyServer for their constellations. The first class can be done entirely without computers if necessary.</p>


      <a name="procedure"></a>
      <h2>Procedure (see <a href="tips.aspx">Teaching Tips</a> for more info)</h2>

      <p>Begin by checking student knowledge about constellations. They have most likely heard of a few of the most famous constellations, like Orion or the Big Dipper. (The Big Dipper is not strictly a constellation - see the <a href="tips.aspx#intro">Teaching Tips</a>). Students may have misconceptions that constellations are real astronomical groups of stars, or that all stars in constellations are the same. Explain that this activity will show students what constellations are, and that they will find their own constellations.</p>

       <p>Give half the students the "Dove Constellation" handout, and the other half the "Horse Constellation." Give the students a moment to study their handouts, but do not tell them that the other half of the class has a different handout. Then, show the star pattern on the web page or on a transparency. Ask a student to describe what he or she sees. The student will say a dove (or a horse). A student from the other half of the class should disagree, and the students should begin arguing.</p>

      <p>Encourage the students to point out specific parts of the constellation (the dove's beak, the horse's hooves, etc.), and eventually the students should realize what was happening. Tell the students that they were like two ancient cultures seeing two different shapes in the same pattern of stars. This is the main point of the project. (It's also a small moral lesson - students should see that just because someone else sees something different, that doesn't mean that the other is wrong!).</p>

      <p>Show students the picture of Orion. Point out Orion's shoulders, knees, and belt on the picture. Ask students if they can see the hunter. Then, explain magnitude and light-years (see the <a href="tips.aspx#orionstars">Teaching Tips</a> for advice on how to explain these tough concepts). As students read the table of stars, point out each star on a picture of Orion. Make sure that students notice that the stars, which look similar, have different magnitudes and distances. Ask why Rigel looks brighter than Betelgeuse, even though it's twice as far away.</p>

       <p>When students read about other shapes in Orion, ask them if they can see the deer, soldier, or kimono. As they read about other constellations, ask if they can see the crown in Corona or the microscope in Microscopium (some students in the field test class thought Microscopium looked like an umbrella).</p>

       <p>Give the students the grid handout or graph paper. Tell them to think of a familiar object or person that would make a good constellation. Tell them to outline the object by drawing 6-10 stars on the grid or graph paper. Demonstrate for the students so they have an idea of what they should do. Then, have the students go to SkyServer's Navigation tool, keeping their constellation outlines next to them. Show them how to use the tool, then let them look for their constellations. Tell them it's OK if some of the "dots" in their constellations are galaxies instead of stars.</p>

       <p>When students find a constellation, tell them to click on each star or galaxy in the constellation, one by one, and click "Add to Notes." After they have saved each star or galaxy, tell them to click "Show Notes" to see each star/galaxy's data. RA/Dec are a measure of position (longitude and latitude in the sky), and u,g,r,i,z are magnitudes. Tell students to click "Export" to save the notebook to their computers (as HTML). The example of the Rudolph constellation should help students get the idea.</p>

       <p>When students finish their constellations, we strongly encourage you to send them to us to put up on the site. See the <a href="tips.aspx#find">Teaching Tips</a> for information on what file formats and names to use. When we receive your constellations, we'll send you a free SDSS poster as a thank-you.</p>


      <a name="followup"></a>
      <h2>Follow-up activities</h2>

      <p>One very useful extension to this project is to have students write a story about their constellation. Tell the students to think about the legend of Orion and the scorpion. Ask them their  constellation got into the sky. Have the students write a short story or legend describing how their constellations got there. The length can vary from a paragraph to a few pages, depending on your preference and your students' writing abilities.</p>

      <p>You could also have students write a report on one of the 88 constellations, describing both the mythology of the constellation and the stars it contains. Artistic students could draw pictures of the constellations as well.</p>


      <a name="fewcomp"></a>
      <h2>Few or no computer classrooms</h2>

      <p>As it is written, the project is intended for each student on his or her own computer. However, you can easily assign the project to teams of two or more students. Each team designs a constellation together, than the team members work together to find their constellation in SkyServer.</p>

      <p>If you do not have access to computers, your class can still do the "Simple Made-Up Constellation" activity. You could also print out the photos of Orion from the project (save them to your computer by right-clicking them and selecting "Save Picture As") and show them to your students. You can describe what various cultures have seen in Orion, and ask students what they see.</p>


      <a name="homeschool"></a>
      <h2>Home schoolers</h2>

      <p>Home schoolers will not have other students to share results with in the Simple Constellation activity. If you are doing this project with your child in a home school, show him or her <i>either</i> the dove or horse picture, and ask what they see. Then, show the other picture. The rest of the activity can be done with no changes.</p>

      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td>
      <a href="background.aspx">
      <img align=left src="../../../images/previous.jpg"></a>
      <a href="tips.aspx">
      <img align="right" src="../../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
