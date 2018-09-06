<%@ Page Title="" Language="C#" MasterPageFile="SkySurveysMaster.master" AutoEventWireup="true" CodeBehind="POSS.aspx.cs" Inherits="SkyServer.Proj.Advanced.SkySurveys.POSS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkySurveysContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>The Palomar Sky Survey</h1>
      <p>First, let's compare the SDSS to an earlier map of 
      the sky. The First Palomar Sky Survey (POSS I) was carried out in 
      the 1950's using the 48-inch Oschin Schmidt telescope at Mount Palomar in 
      southern California. This survey was carried out using photographic 
      plates. It has since been converted into a digital format and is easily 
      accessible on the Internet.</p>
      <table align=right border=1 width=282>
        <tr>
          <td align=center><img src="images/palomar48.jpg"></td>
        </tr>
          <td align=center><p><SPAN class=caption>The 48-inch Oschin Schmidt telescope 
          at <a href="http://www.astro.caltech.edu/observatories/palomar/" target="offsite">
          Mount Palomar Observatory</a></SPAN></p></td>
        </tr>
      </table>

      <p>During the 1970's, the U.K. Schmidt telescope, nearly identical to the  
      Oschin telescope, carried out the Southern Sky Survey. In the early 
      1980s, Palomar's Oschin telescope was upgraded and carried out a second sky 
      survey called POSS II. POSS II is currently being converted to 
      digital format. Portions of it are available on the web.</p>
      <p>Let's start finding out how this survey is different from the SDSS. 
      We will compare POSS I and the SDSS by looking at 
      images of the same portion of the sky taken by each survey.</p>
      <p>You can access the POSS I survey (and what is complete of the POSS II) 
      by clicking
      <a href="http://archive.stsci.edu/cgi-bin/dss_form" target="offsite">here.</a> 
      Launch the navigation tool for the SDSS by clicking
      <a href="../../../tools/chart/navi.aspx" target="tools">here.</a> 
      Both interfaces will open in new windows.</p>
      <p>Let's look at the field containing Pal 3, a globular cluster discovered 
      by POSS (also featured in SkyServer's <a href="../hr">H-R Diagram</a> project). In the POSS 
      interface, type Pal 3 in the field labeled "Object Name," then click 
      Get Coordinates. You will see the coordinates appear in the box 
      below. Click on File Format and change it to a .gif file (unless you 
      have a special viewer for .fits files and want to use it). Now click 
      on Retrieve Image.</p>
      <p>Now get the SDSS image. If you have not already, open the
      <a href="../../../tools/chart/navi.aspx" target="tools">Navigation tool</a>. When 
      the tool opens, you should see a screen like this:</p>
      
      <table border=0 align=center>
        <tr><td><img src="../../images/navi_init.jpg"></td></tr>
      </table>
      
      <p>In the "ra" and "dec" boxes, enter the coordinates for Pal 3: ra = 151.3801, dec = 0.072. 
      Click Get Image. A picture of Pal 3 will come up in the main window. You should now have two images of Pal 3: 
      one from POSS I and one from the SDSS.</p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Question 1.</strong> What differences do 
          you notice between the pictures? Are the pictures 
          oriented the same way, or are the rotated and/or flipped? Does 
          one picture show fainter stars than the other? Does one show 
          more detail? Does one show better color?</p></td>
        </tr>
      </table>
      <p></p>
      <p>Now, use the zoom buttons (the magnifying glasses below "Get Image") 
      and the directional controls (the NWSE buttons) to scroll through the Navigation tool 
      until you find an area you think is interesting. Click on the area and note its ra and dec, 
      which is displayed next to the green square. Use the ra and dec to find the same 
      field in the POSS I survey by entering the ra and dec into the form.</p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><strong>Question 2.</strong> 
          Compare the new images you obtained from the SDSS and the POSS I. 
          What do you think are the most important differences between the 
          images?</td>
        </tr>
      </table>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="supernova1.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
