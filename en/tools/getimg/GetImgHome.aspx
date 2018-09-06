<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="GetImgHome.aspx.cs" Inherits="SkyServer.Tools.GetImg.GetImgHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<div id="title">Get Images/Data</div>


<div id="transp">
<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">
<tr><td><p>
The images from the SDSS project are organized into <em>stripes</em>. 
These are long images, 24,000 pixels (2.5 degrees) wide, and typically 
over 1 million pixels (120 degrees) long. The SDSS covers the northern 
sky with overlapping stripes. Each stripe is merged from two 
<em>runs</em>, taken on separate nights. The telescope can complete only 
a single 8-hour run in any given night. 
<p>
Each run consists of 6 <em>camcols</em> (camera columns); one camcol corresponds to 
each array of CCD detectors of our camera. Each camcol takes images in 
five colors, from the ultraviolet to the infrared.<p>
</td>
<td valign=top align=left><img src="../images/sdss-globe.gif">
<img src="../images/sdss-camera.jpg">
</td></tr>
<tr><td><p>
We have created color images by taking the middle three bands and assigning 
those to the blue, green and red channels of the screen. The 1 million
pixel long camcols are broken up into many <em>fields</em>. Each SDSS field 
is 2048 pixels wide by 1489 pixels high. The fields overlap along the scan direction 
by 128 pixels. The fields can be uniquely named by the run number, the camcol 
and the field number. The images of the fields can be downloaded by clicking on
<a href="fields.aspx">Fields</a> at the sidebar.
</td>
<td align=middle><a href="fields.aspx"><img src="../images/thumb-frame.jpg" border=0></a></td>
</tr>

<!-- Commented out mosaic stuff (Ani, 7/17/03)
<tr>
<td>
We have also built images of the stripes themselves. We call these <em>mosaics</em>.
The mosaic images are 2.5 degrees wide and 1 degree high. They cover the whole width of the
stripes. They are described by a stripe mosaic number and a mosaic number. They can be
downloaded by clicking on
<a href="mosaic.aspx">Mosaics</a> at the sidebar.
</td>
<td align=middle><a href="mosaic.aspx"><img border=0 src="../images/thumb-mosaic.jpg"></a></td>
</tr>
-->

<tr>
<td valign="top"><p>
The SDSS project uses the color images to detect millions of objects 
(over 300 million stars and galaxies) over the whole northern sky. 
As soon as these objects are observed, a sophisticated software algorithm
selects targets for further studies. Using another instrument, we take detailed
<em>spectra</em>, measurements of the energy given off by the object as a function of its 
wavelength. An object's spectrum tells much more about an object than its image. 
A spectrum can be used to estimate a galaxy's distance and chemical 
composition, or to determine a star's age. 
</td>
<td valign=top align=middle><a href="spectra.aspx"><img 
border=0 src="../images/thumb-spectro.png"></a></td>
<tr>
<td valign="top"><p>
Our system can measure many hundreds of spectra simultaneously over a 3 degree wide area, 
using a spectral <em>plate</em>. Each plate is an aluminum disc with either 640 or 1000 optical 
<em>fibers</em> connected; each fiber points to an object we are observing. 
By clicking on 
<a href="spectra.aspx">Spectra</a> at the sidebar, you can download
a picture of the spectrum of every object observed spectroscopically. By clicking 
on <a href="plate.aspx">Plate</a> you can browse through a list of all objects from
a given plate, by type and redshift, and look at them individually by
clicking at them.
</td>
<td align="middle"><a href="plate.aspx"><img border=0 src="../images/thumb-tile.gif"></a></td>
</tr>
</table>
<P>
</div>
<P>
</asp:Content>
