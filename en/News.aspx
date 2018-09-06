<%@ Page Title="" Language="C#" MasterPageFile="HomeMaster.master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="SkyServer.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>
	SDSS SkyServer <%=globals.Release%></title>
<!-- pics label-->
<meta http-equiv="pics-label" content='(pics-1.1 "http://www.icra.org/ratingsv02.html" l gen true for "http://skyserver.sdss.org/" r (cz 1 lz 1 nz 1 oz 1 vz 1) "http://www.rsac.org/ratingsv01.html" l gen true for "http://skyserver.fnal.gov/" r (n 0 s 0 v 0 l 0))'>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Site News</h1>

<!-- Please add/delete news items to be displayed on the News page below.  Make
     sure they are between the <li> and </li> listitem tags.  If no news items,
     pl. uncomment the "no news items." line.
-->
<table>
<tr><td class='s'>
<p>
This page lists changes and additions to this site.  The changes include interface enhancements as well as updates to the data that is 
served by the site.
<!-- 
	<p> There are no news items. </p>
-->

<ul>
	<li><span class='t'><b>October 03, 2013</b></span>:
		  SkyServer now supports JSON, VOTable and FITS output
	formats for its query tools.  The HTML, CSV and XML output
	formats have also been upgraded to handle multiple output files.
	</li>
	<li><span class='t'><b>July 30, 2013</b></span>:
		  <b>DR10 Released!</b> <a href="http://www.sdss3.org/dr10/">Data Release 10</a> contains several
	new data products, the most prominent being APOGEE
	spectra. Please see the <a href="http://www.sdss3.org/dr10/whatsnew.php">What's New in
	DR10</a> page for the full list of DR10 data products, <br>
	The SkyServer site has undergone several updates for DR10:
	<ul>
		<li>Several SkyServer tools have been enhanced to include the
		capability to search <a href="http://www.sdss3.org/surveys/apogee.php">APOGEE</a> data.  These include the <a href="tools/search/Radial.aspx">Radial</a>, 
		<a href="tools/search/Rect.aspx">Rectangular</a> and <a href="tools/crossid/Crossid.aspx">Object CrossID</a> search forms.  There is a new <a href="tools/search/IRQS.aspx">Infrared 
        	Spectroscopy Query Form</a> to search specifically for <a href="http://www.sdss3.org/surveys/apogee.php">APOGEE</a> data.
		The <a href="tools/explore/">Explore tool</a> has also presents different and more detailed
        	data when it is invoked for an <a href="http://www.sdss3.org/surveys/apogee.php">APOGEE</a> object.
		<li>
		There is a new Google Maps-like draggable <a href="tools/chart/Navi.aspx">Navigate</a>
		interface available now, which enables seamless visual browsing
		of the image data.
		</li>
		<li>The <a href="tools/chart/Navi.aspx">Navigate</a>
	facility also enables browsing of <a href="http://www.ipac.caltech.edu/2mass/">2MASS
		all-sky</a> image data now, which is necessary to match <a href="http://www.sdss3.org/surveys/apogee.php">APOGEE</a>
		spectra with photometry.</li>  
		<li>Several new sample queries have been added to the <a
		href="help/docs/Realquery.aspx">Sample SQL Queries</a> page to
		demonstrate the use of the <a
		href="http://www.sdss3.org/surveys/apogee.php">APOGEE</a> data
		and also the <a
		href="http://wise2.ipac.caltech.edu/docs/release/allsky/">WISE all-sky</a>
		cross-match data.</li>
	</ul></li>
	<li><span class='t'><b>October 15, 2012</b></span>:
		  <b>XML output changes - </b> The XML output from
	SkyServer queries (when you set "Output Format" to XML) now formats the columns in each row as child
	elements of the row rather than attributes.  This allows
	duplicate column names in the output without causing parsing
	errors.  The XML document also has its content-type set
	correctly now, and includes a DTD.
	</li>
	<li><span class='t'><b>July 31, 2012</b></span>:
		  <b>DR9 released!</b>: Check the <a
	href="<%=globals.SdssUrlBase%>dr9">DR9 Website</a> for all the details on DR9.
	</li>
	<li><span class='t'><b>December 20, 2011</b></span>:
	    <ul>
		<li>Links for spectral line information, i.e. to the tables
	<a href="<%=url%>/help/browser/browser.aspx?cmd=description+sppLines+U">sppLines</a>, 
	<a href="<%=url%>/help/browser/browser.aspx?cmd=description+sppParams+U">sppParams</a>, 
	<a href="<%=url%>/help/browser/browser.aspx?cmd=description+galSpecLine+U">galSpecLine</a>, 
	<a href="<%=url%>/help/browser/browser.aspx?cmd=description+galSpecIndx+U">galSpecIndx</a> and 
	<a href="<%=url%>/help/browser/browser.aspx?cmd=description+galSpecInfo+U">galSpecInfo</a>
	have been added to the <a href="<%=url%>/tools/explore/obj.aspx">Explore page</a> under the SpecObj menu.
		</li>
		<li>
		A <a href="<%=url%>/help/docs/realquery.aspx#footprint">sample query</a> to show how to check whether a point or
	list of points are in the SDSS footprint has been added to the
	<a href="<%=url%>/help/docs/realquery.aspx">Sample Queries page</a>.
		</li>
	    </ul>
	</li>
	<li><span class='t'><b>November 23, 2011</b></span>:
	    There are a couple of changes in the  <a href="<%=url%>/tools/chart/chart.aspx">the Finding Chart</a> and <a href="<%=url%>/tools/chart/navi.aspx">the Navigate tool</a>:
		  <ul>
			<li>The Outlines feature (checkbox) only shows the outlines up to a certain zoom-out level.  When the outlines get too small to be discernible, they are turned off.</li>
			<li>You can now re-center the image in <a href="<%=url%>/tools/chart/navi.aspx">the Navigate tool</a> by double-clicking anywhere within the image frame.  The image will be re-centered at that location.</li>
		  </ul>
	</li>
	<li><span class='t'><b>June 8, 2011</b></span>:
	    Three new cross-match tables are now available that provide a
	    <u>spatial cross-match between DR8 spectra/images and DR7
            photometry</u>:
	    <ol>
		<li><a href="<%=url%>/help/browser/browser.aspx?cmd=description+SpecDR7+U">SpecDR7</a>:
		   This is a unique match between a DR8 SpecObjAll and a DR7
		   photoprimary within 1 arcsec.  DR7 PhotoTag columns
		   and relevant DR7 ProperMotions are also included for
		   convenience. 
		</li>
		<li><a href="<%=url%>/help/browser/browser.aspx?cmd=description+PhotoPrimaryDR7+U">PhotoPrimaryDR7</a>: 
		   This is a unique match between a DR8 photoprimary and
		   a DR7 photoprimary, and matches between different
		   run/camcol/field are allowed.  The match radius is 1
		   arcsec.  The table contains the DR8 and DR7 objids, the 
		   distance between them and the DR7 PhotoTag quantities.
		</li>
		<li><a href="<%=url%>/help/browser/browser.aspx?cmd=description+PhotoObjDR7+U">PhotoObjDR7</a>: 
		   This is a unique match between a DR8 photoobj and a
		   DR7 photoobj,  and matches are restricted to the same
		   run/camcol/field are allowed.   The match radius is 1 arcsec,
		   and within this radius preference is given to a photoprimary
		   match over a secondary.  If no primary match exists,
		   the nearestsecondary match is chosen.  If more than
		   one 	match of a given mode exists, the nearest one is
		   chosen.  The table contains the DR8 and DR7 objids
		   and modes, the distance between them, and the DR7 
		   phototag quantities. 
		</li>
	    </ol>
	</li>
	<li><span class='t'><b>April 28, 2011</b></span>:
	    <a href="<%=globals.SdssUrl%>algorithms/photo-z.php"> Photometric
	    Redshifts</a> are now included in DR8. please the 
	    <a href="<%=globals.SdssUrl%>algorithms/photo-z.php">Algorithms page
	for Photometric Redshifts</a>, and the <a
	href="<%=url%>/help/docs/realquery.aspx#photoz">sample queries for
	using the photo-z tables</a>.  There are four new tables:
	    <a href="<%=url%>/help/browser/browser.aspx?cmd=description+Photoz+U">Photoz</a>,
	    <a href="<%=url%>/help/browser/browser.aspx?cmd=description+PhotozRF+U">PhotozRF</a>,
	    <a href="<%=url%>/help/browser/browser.aspx?cmd=description+PhotozTemplateCoeff+U">PhotozTemplateCoeff</a>, and
	    <a href="<%=url%>/help/browser/browser.aspx?cmd=description+PhotozRFTemplateCoeff+U">PhotozRFTemplateCoeff</a> tables.
	</li>
	<li><span class='t'><b>January 11, 2011</b></span>:
	    <ul>
	        <li><b>DR8 released</b>.  Please see the <a href="<%=globals.SdssUrl%>">main DR8 site</a> for general
		    information about Data Release 8 - the first data
	release of <a href="<%=globals.SdssUrlBase%>">SDSS-III</a>.  DR8 changes in the CAS 
		    are listed below (links may work on DR8 sites only):
		    <ul>
			<li>There is only one database in DR8 - BestDR8
	(for continuity with BestDR7).  There are no TARG or other databases.
			</li>
			<li>The DAS (Data Archive Server) links are
	replaced with <a href="<%=globals.DasUrlBase%>">SAS (Science Archive Server)</a> links.
			  </li>
			<li>There are several schema changes in
	SDSS-III, these are reflected in the <a
	href="<%=url%>/help/browser/browser.aspx">Schema Browser</a> and
	the <a href="<%=url%>/help/docs/intro.aspx">About the
	Database</a> pages. 
			</li>
			<li>The <a
	href="<%=url%>/help/docs/realquery.aspx">Sample Queries</a> have
	all been redone for SDSS-III.
			</li>
		    </ul>
        </li>
</ul>
</td></tr>
</table>

<hr>
<table width='260'>
<tr><td class='tsml'>
Questions? <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact the SDSS Help Desk</a>
</td></tr>
</table>
</asp:Content>
