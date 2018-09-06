<%@ Page Title="" Language="C#" MasterPageFile="../SdssMaster.master" AutoEventWireup="true" CodeBehind="Telescope.aspx.cs" Inherits="SkyServer.SDSS.Telescope" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SdssContent" runat="server">
<div id="title">The SDSS Telescopes</div>
<div id="pdflink">
  <a href="swf/telescope.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/telescope.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="640"><tr><td><p>
Before astronomers can make a map of the sky, they need a telescope. Past surveys,
such as the Palomar Sky Survey, were done with Schmidt telescopes with correcting
lenses 48 inches (1.5 m) across. To map more distant, fainter objects, Sloan 
astronomers decided to build a brand new telescope with lenses 2.5 meters (100 inches) 
across.
<br><p>
<a name="apo"></a>
<h1>Apache Point Observatory</h1><p>
<img src="images/nm_map_sm.gif" align="left">The SDSS telescopes are located at 
<a href="http://www.apo.nmsu.edu/" target="offsite">Apache Point Observatory (APO)</a> 
in Sunspot, New Mexico. The observatory is surrounded by the Lincoln National 
Forest in the Sacramento Mountains, and sits on a mountain 9,200 feet above sea level,
where the atmosphere contains little water vapor and few pollutants. Because the site
 is so high and so far from major cities, the night sky seen from APO is among the 
darkest in the United States.
<br><p>
In addition to the SDSS telescopes, the APO also houses a 3.5-meter telescope and 
<a href="http://charon.nmsu.edu" target="offsite">New Mexico State University</a>'s 1.0-meter telescope.
<br><p>
<a name="mainscope"></a>
<h1>The Main 2.5-meter Telescope</h1><p>
<img src="images/scope_dusk.web1.jpg" align="left">Because the SDSS telescope will make
a map of the whole sky, it must produce in-focus images over a large field of view. 
Most modern telescopes, like the huge 10-meter 
<a href="http://www.keckobservatory.org/" target="offsite">Keck telescopes</a> in
Hawaii, are used to observe small patches of sky at a time. To see a large area of sky
at once, the SDSS telescope required a different and complex design. 
<br>
<table border=0 align="right">
<tr><td align="center"><img src="images/lens_schematic.gif"></a></td></tr>
<tr><td align="center"><em>Schematic of the<br>inside of the SDSS<br>telescope</em></td></tr>
</table>
<p>The inside of the telescope is 
dominated by two reflecting mirrors. Light reflects from the mirrors into a focusing 
system that includes two corrective lenses, which minimize distortion. The diagram 
at right shows how that incoming starlight strikes the 2.5-meter primary mirror, 
bounces back and strikes the smaller (1.08-meter) secondary mirror, then is 
reflected back through a hole in the primary mirror. The light passes through 
the first correcting lens and then through the second lens on top of the camera. 
The telescope can take sharply focused images from an area of three degrees,
equal to the diameter of about 30 full moons.
<br><p>
<table border=0 align="right">
<tr><td align="center"><img src="images/scopeanddome.jpg" align="center"></td></tr>
<tr><td><em>The SDSS telescope (left) outside its housing.</em></td></tr>
</table>
<p>Although this design looks like a typical Cassegrain telescope, the mirror 
surfaces are of a different shape, and the focusing system uses an additional 
corrective element. The telescope's housing is also unique. Most telescopes 
are kept inside domes, with only a small slit in the dome for observing. 
However, this arrangement often causes heat become trapped inside the dome during
the day. When the heat is released at night, the escaping heat causes air turbulence
that blurs the telescope's images. To avoid this problem, the SDSS telescope is 
completely removed from its enclosure, and carries its own wind baffle 
(the metallic box around the telescope tube).
<br><p>
<a name="photoscope"></a>
<h1>The Photometric Telescope</h1><p>
<table border=0 align="left">
<tr><td align="center"><a href="images/photoscope2_large.jpg"><img src="images/photoscope2_sm.jpg"></a></td></tr>
<tr><td align="center"><em>The photometric<br> telescope dome</em></td></tr>
</table>
<table border=0 align="right">
<tr><td align="center"><img src="images/dfm1.web1.jpg"></td></tr>
<tr><td><em>The photometric telescope</em></td></tr>
</table>
<p>In addition to the main telescope, the SDSS uses this 0.5-meter Photometric 
Telescope to monitor subtle changes in the atmospheric temperature and pressure
during the course of the survey. This information allows astronomers to calibrate 
an object's brightness as measured with the main telescope. 
</td></tr></table>
<p>
&nbsp;
<p>
&nbsp;
<p>
</div>
</asp:Content>
