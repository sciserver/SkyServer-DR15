<%@ Page Title="" Language="C#" MasterPageFile="UniverseMaster.master" AutoEventWireup="true" CodeBehind="Lesson.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.Universe.Lesson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UniverseContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>The Universe</h1>
      <h1>Lesson Plan</h1>

      <h2>Goals</h2>

<p>By the end of the project, students should be able to:

<ul>
  <li><p>Understand the vast scale of the universe</p></li>
  <li><p>Describe what scientists mean by an "expanding universe" in their own words</p></li>
  <li><p>Explain how scientists know the universe is expanding</p></li>
  <li><p>Understand how theory and experiment come together to create scientificevidence</p></li>
  <li><p>Explain what the big bang is, and how it relates to the expanding universe</p></li>
  <li><p>Look up data using several interfaces</p></li>
  <li><p>Understand the relationship between magnitude, brightness, and distance in astronomy</p></li>
  <li><p>Explain the concept of redshift, and give examples</p></li>
  <li><p>Make a simple x-y graph</p></li>
  <li><p>Understand the concept of statistical fit</p></li>
  <li><p>Judge the precision and accuracy of scientific data</p></li>
  <li><p>Understand Hubble's Law, c z = H0 d</p></li>
</ul>

      <h2>Prerequisites</h2>

<p>To begin this project, students should have a basic familiarity with astronomical ideas. They should know that the universe consists of many
objects, including stars, planets, galaxies, and clusters of galaxies. They should know that light is composed of waves with definite wavelengths and frequencies. They should have some experience with scientific reasoning. They should also have basic computer skills. They should know how to look
up information using a Web-based interface. It is helpful to know how to
use Microsoft Excel or some other graphing program, but not necessary.</p>

      <h2>Vocabulary</h2>

<p><b>Lesson 1:</b></p>
<ul>
  <li><em>Universe</em> - all of space and everything that is</li>
  <li><em>Scientific notation</em> - A method of writing or displaying numbers in terms of a decimal number between 1 and 10 multiplied by a power of 10. The
scientific notation of 10,492, for example, is 1.0492 × 10<sup>4</sup>.</li>
   <li><em>Light-year</em> - the distance that light travels in one year
   <li><em>Galaxy</em> - a giant structure that contains hundreds of billions of stars
</ul>

<p><b>Lesson 2</b></p>

<ul>
  <li><em>Velocity</em> - speed in a given direction</li>
  <li><em>Apparent magnitude</em> - the brightness of a star or galaxy as seen from Earth</li>
  <li><em>Absolute magnitude</em> - the brightness a star or galaxy would have if it
were a standard distance from Earth</li>
  <li><em>Electromagnetic radiation</em> - energy that can travel directly through space in the form of waves; includes radio waves, infrared radiation, visible
light, ultraviolet radiation, X-rays, and gamma rays</li>
  <li><em>Relative distance</em> - how far something appears to be from Earth</li>
  <li><em>Absolute distance</em> - how far something actually is from Earth</li>
  <li><em>Magnitude</em> - a measure of how bright a star or galaxy looks to us - how much light from that star or galaxy reaches Earth. In magnitude, higher numbers correspond to fainter objects, lower numbers to brighter objects; the very brightest objects have negative magnitudes</li>
  <li><em>Redshift</em> - when objects are receding from us, as evidenced by wavelengths that are lengthening</li>
  <li><em>Blueshift</em> - when objects are moving toward us, as evidenced by wavelengths that are foreshortening</li>
  <li><em>Doppler Effect</em> - A change in the observed frequency of a wave, as of sound or light, occurring when the source and observer are in motion relative to each other, with the frequency increasing when the source and observer approach each other and decreasing when they move apart.</li>
  <li><em>Spectrum</em> (the plural is "spectra") - measures how much light an object
gives off at different wavelenths
</ul>

<p><b>Lesson 3</b></p>

<ul>
  <li><em>"x" axis</em> - the horizontal axis on a graph,  usually used to plot the independent variable</li>
  <li><em>"y" axis</em> - the vertical axis on a graph, usually used to plot the dependent variable</li>
  <li><em>trend line</em> - a line on a graph indicating a statistical trend</li>
</ul>

<p><b>Lesson 4</b></p>

<ul>
  <li><em>Hubble constant</em> - where c is the speed of light, z is the redshift, d is
the distance, and H0 (The value of H0 depends on the units used to measure the distance d. The subscript 0 tells us "measured at the present time,"
which suggests that its value may have been different earlier.)</li>
  <li><em>Formula</em> - A statement, especially an equation, of a fact, rule,
principle, or other logical relation</li>
  <li><em>"Big Bang" theory</em> - the initial explosion that resulted in the formation and expansion of the universe</li>
</ul>



      <h2>Materials</h2>

<p><b>Lesson 1</b></p>

<ul>
  <li>Paper/journal for students to record responses to questions and exercises</li>
  <li>Pen/pencil for each student</li>
  <li>Chart paper/chalkboard to create a “KWL” chart (What We Know-What We Want to Know- What We Learned)
  <li>Markers/chalk to record responses to KWL chart
  <li>Computer/ Computers with Internet access (one classroom computer with Internet and ability to project image for whole class to see (TV monitor, projector) ideal for this lesson
  <li>Balloons (one for each pair of students)
  <li>Permanent markers (one for each pair of students)
</ul>

<p><b>Lesson 2</b></p>

<ul>
  <li>Enough computers with Internet access for students to work either individually or in pairs</li>
  <li>Paper/journal for students to record responses to questions and exercises</li>
  <li>Pen/pencil for each student</li>
  <li>Graphing software available on computers or graph paper for each student</li>
</ul>

<p><b>Lesson 3</b></p>

<ul>
  <li>Enough computers with Internet access for students to work either individually or in pairs</li>
  <li>Paper/journal for students to record responses to questions and exercises	Pen/pencil for each student</li>
  <li>Graphing software available on computers or graph paper for each student</li>
</ul>

<p><b>Lesson 4</b></p>

<ul>
  <li>Enough computers with Internet access for students to work either individually or in pairs</li>
  <li>Paper/journal for students to record responses to questions and exercises</li>
  <li>Pen/pencil for each student
  <li>Graphing software available on computers or graph paper for each student</li>
</ul>

<p><b>Lesson 5</b></p>

<ul>
  <li>Enough computers with Internet access for students to work either
individually or in pairs</li>
  <li>Paper/journal for students to record responses to questions and
exercises</li>
  <li>Pen/pencil for each student</li>
  <li>Graphing software available on computers or graph paper for each student</li>
</ul>




      <h2>Preparation</h2>

<p>It would be very helpful to make time to go over all of these activities yourself before using them with your students to allow you to familiarize yourself with the content and allow you to anticipate where your particular students may encounter difficulties.</p>

<p><b>Lesson 1</b></p>

<p>Prepare the “KWL” chart by titling a piece of chart paper, transparency,or chalkboard with a data table. Title the chart "The Universe."  Make three columns, and title the first column, "Know," the second, “Wonder," and the third "Learned."  Draw lines down the whole page so you can enter the students’ responses under each of these columns.</p>

<p>For this first lesson, it would be ideal to keep the students in the regular classroom and have the Internet hooked up to a class computer with
some method of projection (television screen, projector).After the first lesson, it would be ideal to take the students to a computer lab to allow
them to work at their own pace on this project.  Working on separate computers will greatly increase your ability to differentiate for all learning and ability levels in your classroom.</p>

<p>Ideally, a teacher would use a whole class presentation set-up to model what the students were
going to do and to review the directions, and would then allow them to work at their own pace on their own computers.</p>

<p>Depending on your students’ ability to perform exercises involving scientific notation, solve problems involving distance, and create graphs,this activity could take two class periods.</p>

<p><b>Lesson 2</b></p>

<p>Ideally, a teacher would use a whole class presentation set-up to model what the students were going to do and to review the directions, and would then allow them to work at their own pace on their own computers·	Students will need to know how to collect data in a data table and how to create a graph using that data.  For those students who might have difficulty doing this, you can differentiate this lesson by providing them with a data table to complete, and giving them a ready-made graph onto which they will enter the data points.</p>

<p><b>Lesson 3</b></p>

<p>If students are having difficulty finding the correct data (magnitude in green wavelength and redshift from the spectrum image), develop a directed mini-lesson to demonstrate how they can do this.  Some students may require this same sort of directed mini-lesson to assist them in creating their Hubble diagram. (See more suggestions in the procedure section).</p>

<p><b>Lesson 4</b></p>

<p>As you circulate around the class during these activities, you can get a feel for which concepts and skills most of your students need additional assistance to grasp. Prepare directed “mini-lessons” to meet their learning needs. Information on possible lesson content is offered in the "Procedure" section. You may need to prepare materials ahead of time depending on your students’ needs.</p>

<p><b>Lesson 5</b></p>

<p>As you circulate around the class during these activities, you can get a feel for which concepts and skills most of your students need additional assistance to grasp. Prepare directed “mini-lessons” to meet their learning needs. Information on possible lesson content is offered in the "Procedure" section. You may need to prepare materials ahead of time depending on your students’ needs.</p>



     <h2>Classroom Time</h2>

<p>This project has been broken down into five 45-minute classroom sessions. Depending on your students’ math and graphing skills, the first lesson
might take place over two class sessions to allow for some reteaching to occur.</p>

      <h2>Procedure</h2>

<p><b>Lesson 1</b></p>

<p>Begin by checking the students’ knowledge about what the universe actually is. This will be accomplished by doing the first two parts of  "KWL" chart (see Preparation for more detail).  Have this chart ready, and direct the students to give information on what they already know about the universe. Record these responses in bulleted items, and accept most responses for this part of the lesson.</p>

<p>Students may engage in group discussion about whether these answers are right or wrong. You can assure them that they will be able to find out the accurate answers later in this lesson and that for now you are engaged in a brainstorming process.  After they have completed telling what they know, move on to the next section of this chart. Ask them what they wonder about, what they would like to learn about the universe, and record their answers in a similar fashion on this chart, under the “Wonder” heading.</p>

<p>Give them a little background information about this project (see either "Teacher Notes" or "Overview"). Explain that they will be able to work at
their own pace as they interact with the questions, exercises, and
activities in this project.</p>

<p>Tell them that they must record their answers to the questions and exercises on paper or in their journals, and that you will be checking these for accuracy. Encourage them to raise their hand for assistance if they have questions while working with these activities.</p>

<p>Do the first three "pages" - "Your Cosmic Address," "The Universe- How Big is It?," and "The Expanding Universe" - as a whole class. You will need to divide the students into pairs as they work with their balloons and
complete the model of the expanding universe.</p>

<p>Depending on your students’ ability to perform exercises involving scientific notation, solve problems involving distance, and create graphs, this activity could take two class periods. This might be an excellent juncture to improve your students’ graphing skills.  If using computer graphing programs is too time-consuming for your particular circumstances, you can have the students graph their data using regular graph paper.</p>

<p>You can choose whether or not to have your students graph their distance data from their expanding universe model. This is a good place to
differentiate to meet the academic needs of your students.</p>

<p><b>Lesson 2</b></p>

<p>Ideally, a teacher would use a whole class presentation set-up to model
what the students were going to do and to review the directions, and would then allow them to work at their own pace on their own computers. Today you would use this system, if available, to show them the "How Do We Know?," "Distances," "Magnitudes and Distances," and "Redshifts" pages.</p>

<p>Explain to your students that today they will begin to work at their own pace as they interact with the rest of the activities in "The Universe" project. Tell them that today they will begin to create their own Hubble diagrams based on real data. Explain that their first step will be to look at how bright six galaxies are in order to get a rough idea of how far away from Earth they are. Next, they will use these distances, along with SkyServer's measurements of how red the galaxies are, to make a simple
Hubble Diagram to show the universe's expansion.</p>

<p>Show the whole class one of the “galaxy information pages” (by clicking on “object ID” in the table in the “explore 4” activity) and demonstrate how to find each galaxy's magnitude (g) and redshift. The magnitude is the number (usually expressed to two decimal places) below the 
"g" label.</p>

<p>Next, scroll down in the main frame until you see a miniature spectrum. This is the spectrum of the galaxy. Click the spectrum to see it full size. Click "Summary" in the left-hand frame to
return to the main display. Just above the spectrum, you should see a data entry called "z" This z is NOT the z you saw in Explore 4).</p>

<p>Have students record the magnitude and redshift for each galaxy, then use the "Save in notes" tool to save the galaxy to return to later. Be sure to circulate around the room as they are working to answer questions and individualize instruction for those who need assistance.</p>

<p>Make sure the students are finding an organized way of collecting the data that they will need Students will need to know how to collect data in a data table and how to create a graph using that data. For those students who might have difficulty doing this, you can differentiate this lesson by providing them with a data table to complete, and giving them a ready-made graph onto which they will enter the data points. Students are instructed to save each galaxy in their online notebook by
scrolling to the bottom of the left-hand frame and clicking "Save in Notes”.  Be sure they understand how to do this.</p>

<p>If you have the students using individual/paired computers, you can let them work at their own pace. Be sure to check their work and ask questions to ensure that they comprehend the content.  For those students who move ahead rapidly, there is an additional research activity that they can complete as the other students work on the activities in this project.</p>

<p><b>Lesson 3</b></p>

<p>At this point, you should assume that most students will be completing their simple Hubble diagram by the end of this class period.</p>

<p>To assess how students are progressing with their understanding of the expansion of the universe, begin this class requesting that students offer some suggestions to place on the “KWL” chart under the heading of "Learned."  Write a few of these down, and have the students elaborate on the concepts as they give them.

<p>Review the vocabulary terms from lesson 2, and be sure that the students grasp their meaning. Ask a student who has completed their data table and who is ready to begin/has completed their Hubble diagram to offer some strategies and
suggestions they implemented to complete their work.</p>

<p>Ask if any students have questions or are experiencing difficulty with
these activities, and work together as a class to generate some solutions to their problems or concerns. You might need to demonstrate how to find the magnitude and redshift in
the "galaxy information" pages 
with the whole group again (see lesson 2). Be sure to circulate around the room as they are working to answer
questions and individualize instruction for those who need assistance.</p>

<p><b>Lesson 4</b></p>

<p>As you did in the previous lesson, begin today’s lesson by assessing how students are progressing by requesting that students offer some
suggestions to place on the “KWL” chart under the heading of "Learned." Write a few of these down, and have the students elaborate on the concepts as they give them. Today the students should be working on the sections, "Diagram and Universe" and "Big Bang."</p>

<p>Ask students why Hubble compared galaxies’ magnitudes and redshift. Help them to understand how that information relates to the expansion of
the universe. Have a student share their Hubble diagram, and discuss the meaning of this graph and what the trend line demonstrates about the expansion of the
universe.  Be sure they are able to interpret these diagrams.</p>

<p>Go over the information that is presented in the first section of "Diagram and Universe," stressing that Hubble observed redshifts in <i>every</i> direction of the sky, suggesting 
that the universe was uniformly expanding like the balloon in Exercise 1.</p>

<p>Once you have covered these aspects and encouraged more capable students
to share their results and findings, allow the students to return to working on this project on the computers at their own pace. Be sure to circulate around the room as they are working to answer questions and individualize instruction for those who need assistance.</p>


<p><b>Lesson 5</b></p>

<p>As in the last two class sessions, begin this class requesting that students offer some suggestions to place on the "KWL" chart under the heading of "Learned." Write a few of these down, and have the students elaborate on the concepts as they give them.</p>

<p>Review the vocabulary terms from lesson 4, and assist students in
grasping this content. Go over the correct responses to Questions 4 and 5, and take time to explain the rationale behind the correct responses. Go over the correct responses to exercises 1 and 2 by having volunteer students (who got the answers correct!)  Work these problems out on the board/overhead.</p>

<p>Explain that today is the last day for working on this project. Encourage students to wrap their work up, and state your expectations for their submitting their completed work to you. Be sure to circulate around the room as they are working to answer
questions and individualize instruction for those who need assistance.</p>

<p>Assist those students who were able to work on the research challenges, and encourage them to submit their Hubble diagrams and Research Challenge Results to this project.  These will be displayed on this site!</p>


      <h2>Follow-up activities</h2>


<p>There are a great many opportunities for follow-up activities related to this project. This project offers a springboard to many directions of study that can meet the needs of a diverse group of learners.</p>

<p>Students who had difficulty collecting data and creating graphs could spend time working on the optional Hubble diagrams and research challenges in directed activities to focus on their areas of need. The value of using real data to solve real problems makes this a wonderful teaching tool to use to remediate a variety of mathematics, technology, and science skills.</p>

<p>On the other hand, students who were able to answer the Research Challenges might want to learn more about the expansion of the universe. They could do additional research on areas of interest, and could present
their findings to the class and/or the larger school community in the form
of Science Fair and Student Inquiry Projects.</p>


      <h2>Few or no computer classrooms</h2>

<p>This project could be used in a classroom that had only one or a few computers, provided they had internet access. The teacher could direct the lessons and allow the students to as a whole class on the activities, questions, exercises, and explore activities. While the opportunities for
differentiation would decrease in this environment, it would allow students to work simultaneously on the same content and skills. This might be very effective for classrooms with homogeneous groups who need more directed teaching opportunities.</p>

<p>Due to the nature of these activities, it would be difficult, though not impossible, to do this project without at least one computer with internet access. It could be done if the teacher printed out all of the necessary documents and accompanying data for the students to work with as they answered the questions, performed the exercises, and completed the Hubble
diagrams in these activities.</p>


      <h2>Home schoolers</h2>

      <p>Home schooled students could do the project with no major modifications, working 
independently on each part, as long as they had a computer with Internet access.</p>

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
