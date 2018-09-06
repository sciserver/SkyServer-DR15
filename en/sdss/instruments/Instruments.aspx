<%@ Page Title="" Language="C#" MasterPageFile="../SdssMaster.master" AutoEventWireup="true" CodeBehind="Instruments.aspx.cs" Inherits="SkyServer.SDSS.Instruments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SdssContent" runat="server">
<div id="title">The SDSS Instruments</div>
<div id="pdflink">
  <a href="swf/instruments.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/instruments.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="640"><tr><td><p>
The SDSS survey collects data with modern, digital detectors. An enormous array of
CCD detectors takes images, and a pair of spectrographs, fed by optical fibers,
collects spectra.</p>
<br><p>
<a name="camera"></a>
<h1>The CCD Camera</h1><p>
<img src="images/cam_face.web1.jpg" align="left">The inner sanctum of the SDSS telescope contains what may be the most complex camera ever built. 
The camera includes 30 electronic light sensors called charge-coupled devices (CCDs) like the one at left, each two inches square. The CCDs are arranged five
to a column, and scientists encase each column in a vacuum-sealed chamber. To 
enhance sensitivity, liquid nitrogen cools each chamber to -80 degrees Celsius.</p>

<p>Each CCD is made up of more than four million picture elements (pixels) that release 
electrons when they absorb light. The electrons are then amplified into 
electronic signals that can be digitized, recorded on tape and ultimately 
fed into a computer.  Each of the five rows of CCDs receives light through 
a different colored filter, so each row records the brightness of objects in a 
different color. A night of observing will produce up to 200 gigabytes of 
data on a dozen tapes.
<br><p>
<table border=0 align="right">
<tr><td align=center><a href="images/dsscam.gif"><img src="images/dsscam_mini.jpg" 
align="center"></a></td></tr>
<tr><td align=center><a href="images/dsscam.gif"><em>The arrangement of CCDs.<br>
Click for a larger image.</a></em></td></tr>
</table>
<p>The drawing to the right shows a schematic view of the camera. Unlike a typical
camera, this one doesn't snap a still picture. Instead, the telescope is parked 
in a given position, and as the earth rotates, the sky moves over the camera, from
top to bottom. The electrons released by the incoming light are moved 
(or clocked) along the CCDs at the same rate that the sky moves over the camera, 
ensuring that the signal is always gathered from the same objects. When a 
moving electron hits the edge of a CCD, it is read out through amplifiers. This 
readout is done continuously, resulting in long, skinny strips of sky imaged 
in one observation. Because the CCDs have spaces between them, to make a 
full picture, the telescope must be moved a little bit, and a second, 
slightly offset strip is imaged. A pair of strips is then combined into 
a single stripe, which has no empty areas.</p>
<br><p>
<a name="spectrographs"></a>
<h1>The Spectrographs</h1><p>

<table border=0 align="left">
<tr><td><img src="images/pluggingplate.jpg" align="center"></td></tr>
<tr><td><em>Plugging spectrograph fibers<br>into the pre-drilled plate</em></td></tr>
</table>

<table border=0 align="right">
<tr><td align=center><a href="images/instruments.jpg"><img src="images/instruments_sm.jpg" 
align="center"></a></td></tr>
<tr><td align=center><em>The back side of the telescope,<br> with
the main camera<br> (center, black)	 and 
the two <br>spectrographs (green boxes).<br>
Click for a larger image.</em></td></tr>
</table>

<p>A spectrograph, a prism-like device that disperses light into many colors, measures
how much light objects emit at different wavelengths. This information, called
a "spectrum," can be used to analyze the distance, composition and age of 
each celestial object. SDSS astronomers drill 640 holes in an aluminum plate, with 
each hole corresponding to the position of a selected star, galaxy, or quasar. 
Scientists plug the holes with optical fiber cables (right). The fibers 
capture light from the 640 objects simultaneously and send it into the 
two spectrographs. The spectrographs split the light form each object into 
composite colors, and the resulting spectra are recorded using CCDs. Each 
spectrum is measured from 3800&Aring; (blue) to 9200&Aring; (near infrared) <br>
[1 &Aring;=10<sup>-10</sup> meters] on 2048 x 2048 CCDs.
 To increase the resolution of the spectrographs' data, 
light from each object is split into a blue half and a red half, and the spectrum 	
from each is recorded on a separate CCD. The splitting is done by
a beamsplitter with a special coating. The coating reflects the
blue half of the spectrum while allowing the red half to be transmitted.<br></p>
<p><center><img SRC="images/dichroic.jpg" height=312 width=550></center><br clear="all"></p>

<p>Because the light is split, four images are created for each spectroscopic
observation:&nbsp; both a red and blue image for spectrograph #1 and also 
for spectrograph #2. The plug plates are placed at the focal plane of 
the telescope, just like the CCD camera. On a good night, SDSS astronomers will use six 
to nine plates, obtaining spectra for up to 5,000 objects! 
<br><p>
The spectrograph observes all galaxies seen by the imaging survey at magnitude 
        17.8 or brighter and also targets quasars, stars and many other objects, such as X-ray and radio sources.

<br><p>&nbsp;<p>
</td></tr></table>
</div>
</asp:Content>
