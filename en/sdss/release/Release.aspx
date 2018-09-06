<%@ Page Title="" Language="C#" MasterPageFile="../SdssMaster.master" AutoEventWireup="true" CodeBehind="Release.aspx.cs" Inherits="SkyServer.SDSS.Release" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SdssContent" runat="server">
<div id="title">SDSS Data Releases</div>

<div id="pdflink">
  <a href="swf/release.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/release.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">

<tr><td><h1>SDSS-III Data Releases</h1></td></tr>

<tr><td><h2>Data Release 8</h2></td></tr>
<tr><td>
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>
<a href="<%=globals.SdssUrl%>">Data Release 8 (DR8)</a> is the first data
release for SDSS-III.  DR8 contains a reprocessing of all the DR7 data,
new imaging data, plus SEGUE-2 spectra.  There is nearly 3000
sq.deg. more of sky coverage in DR8, mostly in the Southern Galactic
Cap, and the database is more that twice as big as the BEST dataset in DR7.
</td></tr>
</table>


<tr><td><h1>SDSS-I and -II Data Releases</h1></td></tr>

<tr><td><h2>Data Release 7</h2></td></tr>
<tr><td>
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>
<a href="http://www.sdss.org/dr7">Data Release 7 (DR7)</a> is the final data release for SDSS-II.  DR7 contains several datasets:
<a href="http://cas.sdss.org/dr7">BestDR7, TargDR7, SegueTargDR7</a>, 
<a href="http://cas.sdss.org/stripe82">Stripe82</a> and <a href="http://cas.sdss.org/runs">Runs</a>.  
Details of each dataset can be found on the <a href=
"http://www.sdss.org/dr7/products/">DR7 Data Products Web page</a>, including links to the CAS sites corresponding
to each dataset.  You should also look at the <a href="http://www.sdss.org/legacy/">SDSS Legacy Survey page</a> for 
information about data in the DR7 legacy survey. 
</td></tr>
</table>


<tr><td><h2>Data Release 6</h2></td></tr>
<tr><td>
	<table align="right" border=0 cellspacing="5" cellpadding="5">
		<tr><td align="middle"><a href="http://www.sdss.org/dr6/dr6photo_big.gif"><img src='images/dr6photo.gif' width="300" height="145"></a></td></tr>
		<tr><td align="middle" class="smallbodyText">Sky coverage of imaging data in <%=globals.Release%></td></tr>
		<tr><td align=middle><a href="http://www.sdss.org/dr6/dr6spectro_big.gif"><img src='images/dr6spectro.gif' width="300" height="145"></a></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of spectroscopic data in <%=globals.Release%></td></tr>
		<tr><td align=middle><a href="http://www.sdss.org/dr6/seguephoto_big.gif"><img src='images/seguephoto.gif' width="300" height="145"></a></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of SEGUE imaging data in <%=globals.Release%></td></tr>
		<tr><td align=middle><a href="http://www.sdss.org/dr6/seguespectro_big.gif"><img src='images/seguespectro.gif' width="300" height="145"></a></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of SEGUE spectroscopic data in <%=globals.Release%></td></tr>
	</table>
The Sixth Data Release (DR6) of the Sloan Digital Sky Survey was announced
on June 29, 2007.  The spatial coverage of DR6 is about 7% larger than that of DR5.
The photometric data in DR6 are based on five-band imaging observations 
of 8520 square degrees of sky, and include measures of 300 million 
unique objects.
<p>
Based on these photometric data, objects were selected for spectroscopy 
over a footprint area of 6860 square degrees. DR5 includes derived spectroscopic 
parameters for 1,163,520 spectra, classified into 792,680 galaxies, 154,925 stars
and 104,140 quasars.
<p>
DR6 also contains the first release of data from the <a href="http://www.sdss.org/segue/abousegue.html">SEGUE (Sloan Extension for Galactic Understanding and Exploration) program</a>, 
which is one of the three components of <a href="http://www.sdss.org/">SDSS-II</a>: the <a href="http://www.sdss.org/legacy/aboutlegacy.html">Legacy Survey</a>, 
<a href="http://www.sdss.org/segue/aboutsegue.html">SEGUE</a> and the <a href="http://www.sdss.org/supernova/aboutsprnova.html">SuperNova Survey</a>.  

<p>
The SEGUE imaging data is available in a 
separate database in the CAS, SegueDR6, whereas the SEGUE spectra are part of the main database, BestDR6.  You can browse
SEGUE imaging data on the <a href="http://cas.sdss.org/seguedr6/">SEGUE SkyServer site</a>.  The SEGUE spectra are in the 
<a href="http://www.sdss.org/dr6/products/spectra/special.html#SEGUE">special SEGUE plates in the BestDR6 database</a>.
<p>
Further details of the Data Release 6 can be found at 
<a href="http://www.sdss.org/dr6/">http://www.sdss.org/dr6/</a>.
</td></tr>

<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">

<tr><td><h2>Data Release 5</h2></td></tr>
<tr><td>
	<table align="right" border=0 cellspacing="5" cellpadding="5">
		<tr><td align="middle"><img src='images/dr5photo.gif' width="300" height="145"></td></tr>
		<tr><td align="middle" class="smallbodyText">Sky coverage of imaging data in the DR5</td></tr>
		<tr><td align=middle><img src='images/dr5spectro.gif' width="300" height="145"></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of spectroscopic data in the DR5</td></tr>
	</table>
Data Release 5 (DR5) was publicly available as of June 28, 2006.
The spatial coverage of DR5 is about 20% larger than that of DR4.
The photometric data in DR5 are based on five-band imaging observations 
of 8000 square degrees of sky, and include measures of 215 million 
unique objects.
<p>
Based on these photometric data, objects were selected for spectroscopy 
over a footprint area of 5740 square degrees. DR5 includes derived spectroscopic 
parameters for 1,048,960 spectra, classified into 674,749 galaxies, 192,982 stars
and 90,611 quasars.
<p>
Details of the Data Release 5 can be found at 
<a href="http://www.sdss.org/dr5/">http://www.sdss.org/dr5/</a>.

</td></tr>

<tr><td><h2>Data Release 4</h2></td></tr>
<tr><td>
	<table align="right" border=0 cellspacing="5" cellpadding="5">
		<tr><td align="middle"><img src='images/dr4photo.gif' width="300" height="145"></td></tr>
		<tr><td align="middle" class="smallbodyText">Sky coverage of imaging data in the DR4</td></tr>
		<tr><td align=middle><img src='images/dr4spectro.gif' width="300" height="145"></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of spectroscopic data in the DR4</td></tr>
	</table>
Data Release 4 (DR4) went public on June 27, 2005. 
The spatial coverage of DR4 is about 25% larger than that of DR3.
The photometric data in DR4 are based on five-band imaging observations 
of 6670 square degrees of sky, and include measures of 180 million 
unique objects.
<p>
Based on these photometric data, objects were selected for spectroscopy 
over a footprint area of 5320 square degrees. DR4 includes these spectra, 
with derived spectroscopic parameters, for 672,640 objects. DR4 also includes
on additional 133,760 spectra of objects selected using a variety of
alternative algorithms.
<p>
Details of the Data Release 4 can be found at 
<a href="http://www.sdss.org/dr4/">http://www.sdss.org/dr4/</a>.

</td></tr>

<tr><td><h2>Data Release 3</h2></td></tr>
<tr><td>
	<table align="right" border=0 cellspacing="5" cellpadding="5">
		<tr><td align="middle"><img src='images/dr3photo.gif' width="300" height="145"></td></tr>
		<tr><td align="middle" class="smallbodyText">Sky coverage of imaging data in the DR3</td></tr>
		<tr><td align=middle><img src='images/dr3spectro.gif' width="300" height="145"></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of spectroscopic data in the DR3</td></tr>
	</table>
The Sloan Digital Sky Survey released its third Data Release (DR3) to the public on September 27, 2004. 
DR3 is about 1.6 times the size of DR2 in spatial coverage.
The photometric data in DR3 are based on five-band imaging observations 
of 5282 square degrees of sky, and include measures of 141 million 
unique objects.
<p>
Based on these photometric data, objects were selected for spectroscopy 
over a footprint area of 4188 square degrees. DR3 includes these spectra, 
with derived spectroscopic parameters, for 528,640 objects.
<p>
Details of the Data Release 3 can be found at 
<a href="http://www.sdss.org/dr3/">http://www.sdss.org/dr3/</a>.

</td></tr>

<tr><td><h2>Data Release 2</h2></td></tr>
<tr><td>
	<table align="right" border=0 cellspacing="5" cellpadding="5">
		<tr><td align="middle"><img src='images/dr2photo.gif' width="300" height="145"></td></tr>
		<tr><td align="middle" class="smallbodyText">Sky coverage of imaging data in the DR2</td></tr>
		<tr><td align=middle><img src='images/dr2spectro.gif' width="300" height="145"></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of spectroscopic data in the DR2</td></tr>
	</table>
The Sloan Digital Sky Survey released its second Data Release (DR2) on 
March 15, 2004. DR2 is about 1.5 times the size of DR1 in spatial coverage.
The photometric data in DR2 are based on five-band imaging observations 
of 3324 square degrees of sky, and include measures of 88 million 
unique objects.
<p>
Based on these photometric data, objects were selected for 
spectroscopy to a surface density of about 120 extragalactic candidates per 
square degree. DR2 includes these spectra, with derived spectroscopic 
parameters, for over 295,000 galaxies and quasars.
<p>
Details of the Data Release 2 can be found at 
<a href="http://www.sdss.org/dr2/">http://www.sdss.org/dr2/</a>.

</td></tr>

<tr><td><h2>Data Release 1</h2></td></tr>
<tr><td>
	<table align="right" border=0 cellspacing="5" cellpadding="5">
		<tr><td align="middle"><img src='images/dr1_imaging.gif' width="300" height="145"></td></tr>
		<tr><td align="middle" class="smallbodyText">Sky coverage of imaging data in the DR1</td></tr>
		<tr><td align=middle><img src='images/dr1_spectroscopy.gif' width="300" height="145"></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of spectroscopic data in the DR1</td></tr>
	</table>
The first official Data Release (DR1) of SDSS was on June 11, 2003. DR1 includes
reprocessed data from the Early Data Release.  (Reprocessing means that the
data are not exactly identical from the EDR, however.) The photometric data in
DR1 are based on five-band imaging observations of 2099 square degrees of sky,
and include measures of 53 million unique objects.
<p>
DR1 includes spectroscopic parameters for over 150,000 galaxies and quasars.
<p>
Details of the Data Release 1 can be found at 
<a href="http://www.sdss.org/dr1/">http://www.sdss.org/dr1/</a>.

</td></tr>

<tr><td><h2>The Early Data Release</h2></td></tr>
<tr><td>
	<table align="right" border=0 cellspacing="5" cellpadding="5">
		<tr><td align="middle"><img src='images/edr_imaging.gif' width="300" height="135"></td></tr>
		<tr><td align="middle" class="smallbodyText">Sky coverage of imaging data in the EDR</td></tr>
		<tr><td align=middle><img src='images/edr_spectroscopy.gif' width="300" height="135"></td></tr>
		<td align="middle" class="smallbodyText">Sky coverage of spectroscopic data in the EDR</td></tr>
	</table>
The Early Data Release of the Sloan Digital Sky Survey consists of five-band images
and measured parameters for all detected sources, as well as spectra, redshifts and 
other spectroscopic parameters. While these data are derived from commissioning
observing runs, the quality of the data and calibrations already support a wide 
range of scientific applications. 
<p>
The available data products include: a searchable catalog 
containing the detected objects and their associated image and spectral 
parameters or attributes, 3-color pictures in JPEG format, data images in FITS 
format, and spectra in both GIF and FITS format. The EDR covers about 462 square 
degrees. 
</td></tr>
</table>

</div>
</asp:Content>
