<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="ProcessingHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Processing.ProcessingHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<!--<script>
    function answers(id) {
        var link = "http://skyserver.pha.jhu.edu/register/answers/getanswer.asp?id=" + id;
        var w = window.open(link, "POPUP", "scrollbars,resizable,menubar,toolbar");
        w.focus();
    }
</script>-->
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Introduction to Image Processing</h1>
      <table width=232 border=0 align=right><tr>
      <td><img src="images/teache1.jpg" border=0></td></tr>
      </table>
      <p>This project introduces the students to the art of image processing. 
      They will learn how to adjust astronomical images to bring out interesting features. 
      Students will also learn how to make color images like the ones displayed 
      on SkyServer. Students will experiment with creating color images using 
      different filters to see what other features show up. They will 
      also learn how to &quot;blink&quot; images, a technique that can be used 
      to find asteroids, supernovae, or other changes in images.</p>
      <p><b>References</b></p>
      <p><a href="http://www.astrosurf.com/buil/us/iris/iris.htm">Iris Software 
      Homepage</a></p>
      <p><i>Introduction to Astronomical Image Processing</i>, by Richard Berry</p>
      
      <a name="goals"></a>
      <h1>Project Goals</h1>
      <p>By the end of the project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#F5F5F5">Retrieve raw images from the SDSS 
        database</font></li>
        <li><font face="Arial" color="#F5F5F5">Display images using IRIS, a 
        freeware image processing program</font></li>
        <li><font face="Arial" color="#F5F5F5">Adjust maximum and minimum brightness 
        to bring out desired features in an image</font></li>
        <li><font face="Arial" color="#F5F5F5">Create tricolor images</font></li>
        <li><font face="Arial" color="#F5F5F5">Describe the differences between 
        an image created with various filter combinations, such as 
        ugr and gri</font></li>
        <li><font face="Arial" color="#F5F5F5">Align two separate images by 
        shifting them until corresponding stars are aligned</font></li>
        <li><font face="Arial" color="#F5F5F5">Find changes in images by using 
        the &quot;blink&quot; command</font></li>
        <li><font face="Arial" color="#F5F5F5">Apply different color scales</font>
        </li>
        <li><font face="Arial" color="#F5F5F5">Understand log scaling and use it 
        when appropriate</font></li>
        <li><font face="Arial" color="#F5F5F5">Make a 3D view of an image</font></li>
      </ul>
      
      <a name="background"></a>
      <h1>Background Knowledge</h1>
      <p>Students should know the uses of color filters in astronomy. The 
      <a href="../../colors">Colors</a> unit provides a good introduction to 
      filters. Students should also be familiar with color mixing in light, 
      and with how three grayscale images can be combined to produce a color image.</p>
      <p>Computer skills are a major component of this project. Students 
      should know how to download files from the Internet and unzip them using a 
      program such as <a target="_blank" href="http://www.winzip.com">Winzip</a>. 
      They will need to know how to create 
      directories in Windows and how to move their files into appropriate 
      directories. Students also will need to know how to rename files (since the 
      default file names that SDSS uses are long and cumbersome). Computer skills will 
      probably be a major stumbling block to some students; you may wish to offer an 
      optional review session to teach these skills before starting the project.</p>
      
      <a name="structure"></a>
      <h1>Project Structure</h1>
      <p>The first page gives background information on how a CCD image is displayed 
      using image processing software. This process is used by all imaging 
      software and is not specific to Iris. You might wish to print out 
      the table of numbers and have your students fill it in with their own color palettes. 
      Tell them to use fewer colors, say four. They would then have to 
      make choices (for instance, one color could represent 0-2, another color could 
      represent 3-5, etc.) You could use this exercise to illustrate how different 
      image representations of the same data can convey different information. 
      This extra exercise would add about 10-15 minutes for the 
      students, plus another 10-15 minutes of discussion. You might have 
      students post their diagrams so they can compare with other groups. 
      Emphasize that the SDSS produces five of the images for each part of the 
      sky, one for each of our filters.</p>
      <p>The next section introduces students to Iris, the image processing 
      software they will use in this project. If you have time, you might download 
      and install the software for the students in advance. Iris is freeware. Use of the 
      software is free, but you may not decompile or modify the source code.</p>
      <p>The most important task for students in this section is to set up a directory for 
      their images and tell Iris what directory they are using. If the 
      students use a different computer the next day, they may need to set the 
      directory again. This section should not take more than 5-10 
      minutes.</p>
      <p>Next, students will download their first images. The first set of images are 
      atlas images, small cutouts of a specific 
      object. The images are fairly small files and download fairly quickly. 
      This section should not take more than a couple of minutes.</p>
      <p>Next, the students will look at the max and min features of the 
      software. These features allow the students to focus on bright areas 
      of the image or dark areas of the image. This exploration will 
      probably take 10 - 15 minutes.</p>
      <p>Next, the students will learn to make a tricolor image by combining 
      combine the g, r, and i images. The atlas images are already 
      aligned, so the students will not have to worry about aligning them for 
      this section. They will attempt to reproduce an image in our Famous 
      Places. Allow about 15 minutes for this section.</p>
      <p>The students will then make tricolor images using other filters to see 
      what other features stand out. Allow about 20 minutes for them to 
      create and explore these images.</p>
      <p>Next, they will try to find asteroids by blinking two images. Students 
      will download corrected frames for this section. These files 
      are large and take longer to download (you may retrieve them in advance 
      for your students if you have a slow internet connection). The 
      students will have to align the frames before blinking them. They 
      will then try to find asteroids in a randomly selected frame. 
      Allow about 45 minutes for finding asteroids.</p>
      <p>Students will then explore how to apply log scaling and color palettes 
      to their images. Allow about 20 minutes for this section.</p>
      <p>Next, they will learn alternate ways of viewing their images, such as 
      isophotes (lines of constant brightness) and 3D views. This section should 
      take 20-25 minutes.</p>
      <p>This exercise has two choices for a final challenge. The final challenge 
      is designed to let students conduct independent self-directed research. It should 
      not be done in the classroom, but you may wish to offer extra credit for 
      completing it. Students can 
      make tricolor images using 2MASS data, or they can look for "i dropout 
      candidates" in SDSS data.</p>
      
      <a name="questions"></a>
      <h1><span class="question">Questions</span> and <span class="exercise">
      Exercises</span></h1>
      <p>&nbsp;</p>
      <p>Questions are designed to get students thinking about the way 
      scientists work. Exercises are designed to get students to explore 
      SkyServer data. For answers to all 
      questions and exercises, 
          email us at <a href="mailto:<%=ConfigurationManager.AppSettings["helpdesk"].ToString()%>"> <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%></a>.
          <!--click <a onclick="javascript:answers(5);" href="#">here</a>. 
      To see the answers, you must have the Adobe Acrobat PDF reader installed 
      on your computer. The Acrobat reader is available for free download at
      <a onclick="window.open('http://www.adobe.com/products/acrobat/readstep2.html');" href="#">
      Adobe's web site</a>.--></p>
      
	  <p>Students should be evaluated based on their written answers 
	  to the questions and exercises. You may use our sample 
	  <a href="#questions" onclick="window.open('processingrubric_jhu.pdf');">scoring 
	  rubric</a> or develop your own. If you use our scoring rubric, 
	  print out a copy for each student and attach it when you return 
	  his or her work.</p>      
      
      <p>For specific information on any part of the project, click Next.</p>
      <p>&nbsp;</p>
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
      <td>&nbsp;<a href="specifics.aspx"><img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
