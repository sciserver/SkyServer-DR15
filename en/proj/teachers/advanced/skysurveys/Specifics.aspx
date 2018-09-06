<%@ Page Title="" Language="C#" MasterPageFile="SkySurveysMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.SkySurveys.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkySurveysContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Sky Surveys - Teacher's Guide to Specific Sections</h1>
      
      <a name="introduction"></a>
      <p><font size="4">Introduction</font></p>
      <p>The concept of mapmaking should be familiar to most students. 
      Discuss the need for maps to help us find objects in the night sky as 
      well, especially objects that are not visible to the naked eye. You 
      may wish to look at some simple star charts with your students that show 
      the familiar constellations and bright stars. You can find such star 
      charts in many books and magazines about astronomy.</p>
      
      <a name="poss"></a>
      <p><font size="4">POSS</font></p>
      <p>The Palomar Sky Survey (POSS) was carried out in the 1950's with the 48-inch 
      Schmidt Telescope on Mount Palomar in southern California. Data were recorded on 
      photographic plates. A second Palomar Sky Survey (POSS II) was 
      carried out in the 1980's with better emulsions. Scientists are still working 
      on converting POSS II to digital format; therefore, the students will be 
      looking at data from the first POSS.</p>
      <p>Images can be retrieved from the POSS by either entering the object name, such 
      as Pal 3 for the Palomar 3 globular cluster, or by entering the right ascension (RA) and 
      declination (Dec) of the object. If you enter the object name, another web 
      site with a search engine called SIMBAD will look up the coordinates for 
      the students. This process is automatic and requires no work on the 
      part of the students.</p>
      <p>Be sure that the students are retrieving .gif files instead of .fits 
      files. FITS files are a format used by astronomers, and the files require special 
      viewers. The default for the field of view should be adequate for 
      this project.</p>
      <p>The images from the POSS and the SDSS are oriented differently. If 
      you want to orient them the same, take the SDSS image and rotate it 90 
      degrees counterclockwise. Next, flip it across the vertical axis. 
      This technique only works for objects near the celestial equator (0 
      degrees declination). A lot of the Early Data Release lies in this 
      part of the sky, including all four supernovae.</p>
      <p>For the first supernova, the picture has been rotated and flipped for 
      the students. When they call up the plates on their own, they will 
      need to perform the transformation on their own. The supernovae are subtle, and you 
      have to look very close to find them. Shown below are the fields 
      with the supernovae marked.</p>
      
      <a name="sup1"></a>
      <p><b>Supernova #1</b></p>
      <table align=center border=1 width=554>
        <tr>
          <td><a href="#sup1" 
          onclick="window.open('images/supernovasolution1.jpg','','width=1024,height=745,resizable,scrollbars');">
          <img border="0" src="images/supernovasolution1_small.jpg"></td>
        </tr>
        <tr>
          <td align=center><p><span class=caption>Click on the image for a larger view</p></td>
        </tr>
      </table>
      <p></p>
      
      <a name="sup2"></a>
      <p><b>Supernova #2</b></p>
      <table align=center border=1 width=567>
        <tr>
          <td><a href="#sup2" 
          onclick="window.open('images/supernovasolution2.jpg','','width=1024,height=745,resizable,scrollbars');">
          <img border="0" src="images/supernovasolution2_small.jpg"></td>
        </tr>
        <tr>
          <td align=center><p><span class=caption>Click on the image for a larger view</p></td>
        </tr>
      </table>
      <p>The supernovae are very difficult to find. If you have an image viewing program 
      that allows you to zoom in on an area, rotate and flip the object, the supernovae will be 
      much easier to find. Let students enjoy the search, but don't take too 
      much time on this section.</p>
      
      <a name="2mass"></a>
      <p><font size="4">2MASS</font></p>
      <p>You may wish to discuss infrared light here. Remind 
      students that all objects give off electromagnetic waves due to their temperature. 
      If the object is too cool to emit visible light, it will emit longer 
      wavelength light such as infrared. Night vision scopes work by 
      detecting infrared light. Since some objects are too cool to give 
      off visible light, you can see some objects in the infrared that cannot be 
      seen at other wavelengths.</p>
      <p>Another advantage of infrared light is that, unlike visible light, infrared light 
      is not scattered by dust clouds. Therefore, dust is transparent to infrared light but 
      opaque to visible light. Several of the images have dust clouds that are 
      not visible in the infrared images, most notably NGC 4753.</p>
      
      <a name="rosat"></a>
      <p><font size="4">ROSAT</font></p>
      <p>ROSAT, the x-ray survey, reveals a different class of objects. Some 
      objects are so hot they give off a lot of energy as x-rays instead of as 
      visible light. Objects that look ordinary in the visible spectrum 
      may be giving off vast amounts of energy. However, since most of the 
      energy is x-rays we may not notice how bright these objects are in a 
      normal photograph.</p>
      <p>ROSAT cataloged about 60,000 x-ray sources. Each energy of x-rays 
      is assigned a different color. The objects will not look like 
      objects familiar to the students. Frequently, the x-ray sources are 
      located within galaxies or quasars. A black hole pulling in gas is 
      an excellent source of x-rays. Cygnus X-1, a star being ripped apart 
      by a black hole, gives off strong x-rays. If it were not for the 
      x-ray emission, this ordinary star may have escaped notice.</p>
      <p>Students will look at the x-ray sources and try to find the object that 
      is giving off the x-rays. Once they get the RA and Dec of an x-ray 
      source, they can look up those coordinates in the SDSS database and see 
      what may lie there.</p>
      <p>Students will frequently discover that active 
      galaxies and quasars correspond to x-ray sources. They may 
      occasionally find an x-ray source with no visible counterpart. They 
      did not necessarily make a mistake. Sometimes the source is too 
      faint in the visible part of the spectrum to find. The SDSS uses a 
      good-sized telescope, so this will be rare in our data, but it wouldn't 
      hurt to mention the possibility to students.</p>
      <p>&nbsp;</p>
      <p>&nbsp;</td>
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
      <a href="correlations.aspx"><img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
