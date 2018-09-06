<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="Tips.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.Scavenger.Tips" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Scavenger Hunt</h1>
      <h1>Teaching Tips</h1>

<p>This section contains specific tips for teaching the project – preparation shortcuts, key points to emphasize, classroom management suggestions, and some important information about the Navigation Tool.</p>

<a name="preparation"></a>
<h2>Preparation</h2>

<p>If this is your first exposure to the SkyServer website and the Sloan Digital Sky Survey (SDSS), an efficient way to dig into this rich resource and prepare to have your students get the most out of the Scavenger Hunt is to read the following in order:</p>

<ol>
  <li>SkyServer brings you the entire public database of the Sloan Digital Sky Survey free of charge. The site includes a variety of Tools to view and download SDSS data, and Projects that let you use these data to teach science.</li>

  <li>Read the first section on the <a href="../../../../sdss/">About SDSS</a> web page (click the link): “What is the Sloan Digital Sky Survey?”; skim the remainder of the page.</li>

  <li>Skim the information about the <a href="../../../../sdss/telescope/telescope.aspx">SDSS telescopes</a> and <a href="../../../../sdss/instruments/instruments.aspx">instruments</a>.</li>

  <li>Look at the images of the kinds of objects to be found in this project with the <a href="../../../../tools/places/">Famous Places</a> tool.</li>

  <li>Now do a quick run through of the <a href="../../../basic/scavenger">student Scavenger Hunt project</a>.  See the tips below for using the Navigation Tool.</li>
</ol>

<a name="keypoints"></a>
<h2>Key Points to Present to Your Students</h2>

<p>Share with your students your appreciation for the beauty of the images and the variety of celestial objects. Emphasize the fact that they are accessing the data and technology used by professional astronomers to do cutting edge research. At the same time, be sure your students realize that the wonders of the night sky in far less detail are available to amateur astronomers and sky watchers. Be sure your students understand that the objects they identify and record will be subject to peer review in the same way scientists must present their work to their peers for review.</p>

<a name="management"></a>
<h2>Classroom Management</h2>

<p>Students will be motivated by the game nature of the project, by your enthusiasm in presenting the project, and by confidence in their ability to be successful. It will help to show students the grading rubric so that they understand what is expected of them as members of their groups as well as the fact that their performance is being evaluated based on effort and accuracy and not on the number of objects found. Be sure students know that you will be evaluating their participation throughout the activity.</p>

<a name="navigation"></a>
<h2>The Navigation Tool</h2>

<p>The Navigation Tool opens to show one of the images shown in "Famous Places": two galaxies that appear to form a pair, but are actually at different distances.  Try increasing and decreasing magnification while centered on this identifiable image to see how different the screen looks at different magnifications. Zoom=-3 is a good magnification for searching for most of the Scavenger Hunt objects. Move your mouse over the rectangles in the zoom bar to see the various zoom levels.</p>

<p>The project text warns students that the program sometimes does not identify objects correctly. The most common misidentification is classifying a bright star as a galaxy. To see one such misidentification, enter the coordinates ra=18.705, dec=–0.9736 in the ra and dec textboxes of the <a href="../../../../tools/chart/navi.aspx" target="tools">Navigation tool</a>.</p>

<p>The reason this mistake occurs is that SDSS software identifies points of light as stars and extended, fuzzy objects as galaxies. But stars like this one are so bright that their light spills out and is recorded in neighboring pixels. This makes the star look like a big circle instead of a single point - so it is identified as a galaxy.</p>

<p>Note the bright spikes going off in four directions from the bright star. These are called <em>diffraction spikes</em> and, if you see them, the object is a star even if it has been classified as a galaxy.</p>

  
      
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="lesson.aspx"><img src="../../../images/previous.jpg" align=left></a>
<a href="assess.aspx"><img src="../../../images/next.jpg" align=right></a></td>
    </tr>
  </table>
</div>
</asp:Content>
