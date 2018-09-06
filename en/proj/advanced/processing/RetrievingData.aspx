<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="RetrievingData.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.RetrievingData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Retrieving SDSS Images</h1>

      <table align=right width=185 border=1><tr><td>
      <img src="images/cam_face.web1.jpg" align="right"></td></tr>
      <tr><td><p class=caption>Each camera column of the SDSS camera consists of 
      five CCDs covered by five filters</p></td></tr>
      </table>
      <p>Astronomical images are usually saved in a format called the Flexible 
      Image Transport System, or FITS. Unlike the GIF or JPEG images you have probably 
      viewed before, FITS images can't be viewed in web browsers. You need a special 
      viewer to see them - that's why you downloaded Iris! As you retrieve images 
      from SDSS, you will be retrieving FITS files.</p>
      <p>The SDSS camera takes images through five filters called u 
      (ultraviolet), g (green), r (red), i and z (both infrared). 
      Each of these images is a grayscale image. To make a color 
      image, you must combine three of these grayscale images. Iris will 
      help you make tri-color images.</p>

	  <p>To practice using Iris, we'll start with a beautiful SDSS image of a 
	  spiral galaxy, NGC 1087. To get the image, open the <a href="../../../tools/explore/obj.aspx" target="_blank">
	  Object Explorer<img src="../../../images/new_window.png" alt=" (new window)" /></a>. You will see a screen like this:</p>
	  
	  <p>&nbsp;</p>
	  <img src="images/explore_init_2.jpg" alt="Object explorer screenshot" />
	  
	  <p>Click the "Ra,dec" link in the left column; a small window will pop up. 
	  Enter the coordinates of NGC 1087: ra = 41.606, dec = -0.499. A new window 
	  will pop up containing the Object Explorer entry for NGC 1087.</p>
	  
	  <p>To get the FITS images, click "FITS" under "PhotoObj" in the left column. 
	  You will see a screen like this:</p>
	  
	  <img src="images/explore_fits_2.jpg" alt="Screenshot of the Object Explorer FITS page" />
	  
	  <p>"Corrected frames" are the final step in processing SDSS images, so those 
	  are the images you want. To get a corrected frame image, RIGHT-click (Ctrl-click on a Mac) on one 
	  of the filter names (u, g, r, i, or z) and select "Save Link As" or "Save Target As." Save 
	  the file(s) in the directory where you have your Iris images.</p>
	  
	  <p>The files will save as .bz2 files, which are a type of compressed file that cannot be 
	  opened by all programs. 
	  <a href="http://www.stuffit.com">StuffIt<img src="../../../images/offsite.png" alt=" (offsite)" /></a> 
	  can open .bz2 files; you can download it as evaluation 
	  shareware from <a href="http://www.stuffit.com">www.stuffit.com<img src="../../../images/offsite.png" alt=" (offsite)" /></a>. 
	  Even compressed, the files are still more than 2 MB, so they may take 
	  a while to download.</p>

      <p>The files will have long and tedious filenames, so you may wish to 
      rename them. You might rename the files NGC1087red, NGC1087green, etc. Choose names that 
      are easy to remember.</p>
      <p>Now let's open these images up and see what they look like.</p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="iris.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="maxandmin.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
