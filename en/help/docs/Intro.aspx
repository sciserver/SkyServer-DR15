<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="Intro.aspx.cs" Inherits="SkyServer.Help.Docs.Intro" %>
<%@ Import Namespace="SkyServer.Help.Browser" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<style>
  .h	{font-size:10pt;font-weight:800;background-color:#500000}
  .v	{font-size:10pt;background-color:#000060;}
  .o	{font-size:10pt;background-color:#003030;}
  .d	{font-size:12pt;}
  .t	{font-size:14pt;color:#ffffff;}
  .dhead {font-size:10pt;}
  .ddrop {font-size:10pt;font-weight:100;}
  samp  {FONT-FAMILY: courier; color:#ffff88;}
</style>

<div id="title">About the Database</div>

<div id="transp">
<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">

<tr><td>

<p>The Catalog Archive Server (CAS) provides access to the
<b>database</b> that contains the object catalogs and 
related data from the Sloan Digital Sky Survey-III (SDSS-III). It is a
companion to the <a href="<%=globals.DasUrl%>">Science Archive Server (SAS)</a>,
which allows users to download raw (FITS) images and spectra from the survey.
The SkyServer provides the Web interface to the CAS database.  This page
describes the database organization and structure.
</p>
<ul><h4>
<li><a href="#organization">Overview of Data Organization</a>
    <ol>
       <li><a href="#datamodel">The SDSS Data Model</a></li>
       <li><a href="#phototables">Imaging Data Tables</a></li>
       <li><a href="#spectrotables">Spectro and Tiling Data Tables</a></li>
       <li><a href="#apogeetables">APOGEE Tables</a></li>
       <li><a href="#mangatables">MaNGA Tables</a></li>
       <li><a href="#wisetables">WISE Tables</a></li>
       <li><a href="#zootables">Galaxy Zoo Tables</a></li>
       <li><a href="#bossgaltables">BOSS Galaxy Product Tables</a></li>
       <li><a href="#misctables"> Metadata and Other Tables</a></li>
       <li><a href="#htm">The HTM Spatial Index</a></li>
       <li><a href="#indices">Database Indices</a></li>
    </ol>
</li>
<li><a href="#interfaces">Accessing the Data</a>
    <table class='v' border="0" bgcolor="#404088" cellspacing="3" cellpadding="3">
	<a name="simple"></a>
	<tr><td> <b>Form-based Search:</b></td>
	    <td> <a href="#radial">Radial</a></td>
	    <td> <a href="#rect">Rectangular</a> </td>
	    <td> <a href="#iqs">IQS</a></td>
	    <td> <a href="#sqs">SQS</a></td>
	    <td> <a href="#irsqs">IRSQS</a></td>
	</tr>
	<a name="sqlint"></a>
	<tr><td> <b>SQL Interfaces:</b></td>
	    <td> <a href="#sql">SQL Search</a></td>
	    <td> <a href="#casjobs">CasJobs</a></td>
	    <td colspan=3>&nbsp;</td>
        </tr>
	<a name="upload"></a>
	<tr><td> <b>List Uploads:</b></td>
	    <td> <a href="#crossid">CrossID</a></td>
	    <td colspan=4>&nbsp;</td>
	</tr>
	<a name="visual"></a>
	<tr><td> <b>Visual Tools:</b></td>
	    <td> <a href="#chart">Finding Chart</a></td>
	    <td><a href="#list">Image Lists</a></td>
	    <td> <a href="#navi">Navigator</a></td>
	    <td><a href="#explore">Explore</a></td>
	    <td>&nbsp;</td>
	</tr>
    </table>
</li></h4>
</ul>

<p><a name="organization"></a>
<h2> Data Organization </h2>
<!-------"datamodel.inc"------------->
<% using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
   {
       oConn.Open(); 
%>
<p>
<a name="datamodel"></a>
<h3>The SDSS Catalog Data Model</h3>
<p>
The SDSS catalog data is stored in a commercial relational database management 
system (DBMS) - <a href="https://www.microsoft.com/en-us/cloud-platform/sql-server">Microsoft's SQL Server</a>.  The data is therefore organized
in several 2-dimensional tables.  The tables and their relationships to each 
other are referred to as the <i>schema</i> in database jargon.  The <a
href="<%=url%>/help/browser/browser.aspx">Schema</a> link in the menubar
above takes you to the Schema page where you can browse the database schema.
<p>
<%
       if (globals.ReleaseNumber == 9)
       {
           Response.Write("<h4><a href='images/dr9schema.jpg'>");
           Response.Write("Diagrammatic view of the " + globals.Release + " schema ");
           Response.Write("<img src='images/dr9schemathumb.jpg' alt='DR9 database schema' />");
           Response.Write("</a></h4>");
       }
       else if (globals.ReleaseNumber <= 12)
       {
           Response.Write("<h4><a href='images/dr12schema.jpg'>");
           Response.Write("Diagrammatic view of the " + globals.Release + " schema ");
           Response.Write("<img src='images/dr12schema.jpg' alt='Database schema' width='60' align='middle' />");
           Response.Write("</a></h4>");
       }
       else {
           Response.Write("<h4><a href='images/datamodelbest.jpg'>");
           Response.Write("Diagrammatic view of the " + globals.Release + " schema ");
           Response.Write("<img src='images/datamodelbest.jpg' alt='Database schema' width='60' align='middle' />");
           Response.Write("</a></h4>");
       }
  %>

  <!--  
<h4><a href="images/dataModelBest.jpg">Diagrammatic view of the <%=globals.Release%>
schema <img src="images/dataModelBest.jpg" width="60" align="middle"></a></h4>
-->
<p> 
There are 3 different types of data in the tables - imaging data
is in the <b>photo</b> group of tables, spectroscopic and tiling data is
in the <b>spectro</b> tables, and other data such as documentation or other 
information about the photo and spectro data, i.e. metadata, is in the
<b>meta</b> tables.  Some tables are also created specifically for speed or
convenience, for example the SpecPhotoAll table, which contains a pre-computed
JOIN of relevant fields in the PhotoObjAll and SpecObjAll tables.
<p>
The important tables are described below, along with the <b>views</b> that are
currently defined on each table.  A view is a subset of the corresponding
table that can be used instead of the table - in other words it is a
<u>virtual table</u>.  A view is usually faster than using the base table,
since it only loads a subset of the objects, but more importantly, the views
we have defined on the tables select only the objects that are important for
science, and they filter out non-science objects such as sky, QA or defective
observations.   As such, even though we list the base tables for
completeness below, in the vast majority of the cases, <b><u>you should use the
views defined on the tables instead of the tables themselves</u></b>, e.g. use
the PhotoObj and SpecObj views for science instead of the PhotoObjAll and
SpecObjAll tables.
</p>

<p><a name="phototables"></a>
<h3> Imaging (Photo) Data Tables <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a></h3>
The important tables and views are described below.  For each table, the views
and indices are defined on that table are described in brief.  For more
information, please see the <a href="tabledesc.aspx">Table Descriptions</a>
help page and the <a href="../browser/browser.aspx">Schema Browser</a>.
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=PhotoObjAll"><b>PhotoObjAll</b></a> - By far the largest table in the database, PhotoObjAll contains
the 100+ parameters for each imaging (photo) object.  For most of these parameters, there are
actually 5 rows each, one for each wavelength band.  This table includes data on <i>all</i> photo 
objects, not just science objects, hence the name PhotoObj<u>All</u>.  The view of this
table that includes only science objects and excludes sky and other unknown objects is
the <a href="tabledesc.aspx?name=PhotoObj"><b>PhotoObj</b></a> view.  The PhotoObjAll table is there for completeness, but science queries
are usually done on the PhotoObj view.
		<h4>PhotoObjAll Views:</h4><% BrowserFunctions.showViews(oConn, "photoobjall", Request, Response, globals); %>
		<h4>PhotoObjAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "photoobjall",Request,Response,globals); %>
		</li><p>
<!--
		<li><a href="tabledesc.aspx?name=PhotoTag"><b>PhotoTag</b></a> - This is a vertical partition of the PhotoObjAll table, and 
contains only those columns that are most often requested.  Due to the smaller size of each row
in the table, many more rows can be loaded into the memory cache at one time, hence searches on
the PhotoTag table are much faster than searches on PhotoObjAll.  Whenever possible, use the
PhotoTag table instead of PhotoObjAll or PhotoObj.
		<h4>PhotoTag Indices:</h4><% BrowserFunctions.showIndices( oConn, "phototag" ,Request,Response,globals); %>
		</li><p>
-->
		<li><a href="tabledesc.aspx?name=Field"><b>Field</b></a> - This table contains all the measured
parameters of each <a href="<%=globals.SdssUrl%>help/glossary.php#field">imaging field<img src="../../images/offsite.png" alt=" (offsite)" /></a>, along
with relevant summary statistics, and astrometric and photometric information.
		<h4>Field Indices:</h4><% BrowserFunctions.showIndices(oConn, "field", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=PhotoProfile"><b>PhotoProfile</b></a> - This table contains the light
profiles of SDSS photo objects.
		<h4>PhotoProfile Indices:</h4><% BrowserFunctions.showIndices(oConn, "photoprofile", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=FieldProfile"><b>FieldProfile</b></a> - This table contains the light
profiles of SDSS field objects.
		<h4>FieldProfile Indices:</h4><% BrowserFunctions.showIndices(oConn, "fieldprofile", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=Neighbors"><b>Neighbors</b></a> - SDSS objects within 0.5 arcmins and
their match parameters are stored here.  Make sure to filter out unwanted
PhotoObj, like secondaries.
		<h4>Neighbors Indices:</h4><% BrowserFunctions.showIndices(oConn, "neighbors", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=First"><b>First</b></a>,
		<a href="tabledesc.aspx?name=RC3"><b>RC3</b></a>, <a
		href="tabledesc.aspx?name=Rosat"><b>Rosat</b></a>, <a
		href="tabledesc.aspx?name=TwoMASS"><b>TwoMASS</b></a>, <a
		href="tabledesc.aspx?name=TwoMASSXSC"><b>TwoMASSXSC</b></a> and <a href="tabledesc.aspx?name=Usno"><b>Usno</b></a> - These tables contain matches between the FIRST, RC3, ROSAT, 2MASS, 2MASSXSC (2MASS Extended Source Catalog) and USNO survey objects respectively and SDSS. 
		</li><p>
	</ol>

<p><a name="spectrotables"></a>
<h3>Spectro/Tiling/GalSpec/SPP Data Tables <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
The important spectro, tiling, galSpec and spp (Stellar Parameter
Pipeline) data tables are described here.  The tiling table names are
prefixed by "sdss" to distinguish them from tiling tables for BOSS
(Baryon Oscillation Spectroscopic Survey) data in the future.  For more
information, please see the <a href="tabledesc.aspx">Table
Descriptions</a> help page and the <a href="../browser/browser.aspx">Schema
Browser</a>.
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=PlateX"><b>PlateX</b></a> - This table contains data as exported (the
X is for exported) from a given plate used for spectroscopic observations.
Each plate has 640 observed spectra and hence 640 corresponding entries in
SpecObjAll.
		<h4>PlateX Indices:</h4><% BrowserFunctions.showIndices(oConn, "platex", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=SpecObjAll"><b>SpecObjAll</b></a> - This is a base table containing
<b>ALL</b> the spectroscopic information, including a lot of duplicate and bad
data. Use the <a href="tabledesc.aspx?name=SpecObj"><b>SpecObj</b></a> view instead (see below), which has the data
properly filtered for cleanliness.
		<h4>SpecObjAll Views:</h4><% BrowserFunctions.showViews(oConn, "specobjall", Request, Response, globals); %>
		<h4>SpecObjAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "specobjall", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=SpecPhotoAll"><b>SpecPhotoAll</b></a> - The combined spectro and photo
parameters of an object in SpecObjAll.  This is a precomputed join between the
PhotoObjAll and SpecObjAll tables.  The photo attibutes included cover about
the same as in the PhotoTag view.  The table also includes certain
attributes from the Tile table.
		<h4>SpecPhotoAll Views:</h4><% BrowserFunctions.showViews(oConn, "specphotoall", Request, Response, globals); %>
		<h4>SpecPhotoAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "specphotoall", Request, Response, globals); %>
		</li><p>

		<li><a href="tabledesc.aspx?name=sdssTileAll"><b>sdssTileAll</b></a> - Contains information about individual
<a href="<%=globals.SdssUrl%>help/glossary.php#tile">tiles<img src="../../images/offsite.png" alt=" (offsite)" /></a> on the sky.
		<h4>sdssTileAll Views:</h4><% BrowserFunctions.showViews(oConn, "sdsstileall", Request, Response, globals); %>
		<h4>sdssTileAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "sdsstileall", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=sdssTiledTargetAll"><b>sdssTiledTargetAll</b></a> - This table stores information that
keeps track of why a <a href="<%=globals.SdssUrl%>help/glossary.php#target">target<img src="../../images/offsite.png" alt=" (offsite)" /></a> 
            was assigned to a <a href="<%=globals.SdssUrl%>help/glossary.php#tile">tile<img src="../../images/offsite.png" alt=" (offsite)" /></a>.
		<h4>sdssTiledTargetAll Views:</h4><% BrowserFunctions.showViews(oConn, "sdsstiledtargetall", Request, Response, globals); %>
		<h4>sdssTiledTargetAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "sdsstiledtargetall", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=sdssTilingGeometry"><b>sdssTilingGeometry</b></a> - This table contains geometrical
information about tiling regions, including tiling boundaries.  The
TileBoundary view serves up the boundaries.
		<h4>sdssTilingGeometry Views:</h4><% BrowserFunctions.showViews(oConn, "sdsstilinggeometry", Request, Response, globals); %>
		<h4>sdssTilingGeometry Indices:</h4><% BrowserFunctions.showIndices(oConn, "sdsstilinggeometry", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=sdssTilingRun"><b>sdssTilingRun</b></a> - Contains basic information about each
run of the tiling software.
		</li><p>
		<li><a href="tabledesc.aspx?name=sdssTilingInfo"><b>sdssTilingInfo</b></a> - Contains information on what happened
to a Target in a run of tiling software.
		</li><p>

		<li><a href="tabledesc.aspx?name=galSpecExtra"><b>galSpecExtra</b></a>, 
		<a href="tabledesc.aspx?name=galSpecIndx"><b>galSpecIndx</b></a>, 
		<a href="tabledesc.aspx?name=galSpecInfo"><b>galSpecInfo</b></a> and
		<a href="tabledesc.aspx?name=galSpecLine"><b>galSpecLine</b></a>-
		These tables contain the estimated physical parameters,
		the spectral index measurements, general information
		about the spectroscopic analysis and the emission line
		measurements from the MPA-JHU spectroscopic catalog.
		<h4>galSpecExtra Indices:</h4><% BrowserFunctions.showIndices(oConn, "galspecextra", Request, Response, globals); %>
		<h4>galSpecIndx Indices:</h4><% BrowserFunctions.showIndices(oConn, "galspeciindx", Request, Response, globals); %>
		<h4>galSpecInfo Indices:</h4><% BrowserFunctions.showIndices(oConn, "galspecinfo", Request, Response, globals); %>
		<h4>galSpecLine Indices:</h4><% BrowserFunctions.showIndices(oConn, "galspecline", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=sppLines"><b>sppLines</b></a>
		and <a href="tabledesc.aspx?name=sppParams"><b>sppParams</b></a>-
		These tables contain the line and paramater measurements
		from the Stellar Parameter Pipeline.
		<h4>sppLines Indices:</h4><% BrowserFunctions.showIndices(oConn, "sppLines", Request, Response, globals); %>
		<h4>sppParams Indices:</h4><% BrowserFunctions.showIndices(oConn, "sppParams", Request, Response, globals); %>
		</li><p>

	</ol>

<p><a name="apogeetables"></a>
<h3>APOGEE Tables (DR10 and beyond) <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
These are the catlog data products for the <a
href="<%=globals.SdssUrlBase%>surveys/apogee/">Apache Point Observatory
(APO) Galaxy Evolution Experiment survey</a>..
	<ol>
		<p>
		<li><a
		href="tabledesc.aspx?name=apogeeDesign"><b>apogeeDesign</b></a>
 - This table contains all the design parameters used in designing plates for APOGEE spectra.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeField"><b>apogeeField</b></a>
 - This table contains the name, location and number of visits expected
 for an APOGEE field.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeObject"><b>apogeeObject</b></a>
 - This table contains all the parameters that went into targeting
 objects for APOGEE spectra.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeePlate"><b>apogeePlate</b></a>
 - This table contains the parameters for an APOGEE spectral plate.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeStar"><b>apogeeStar</b></a>
 - This table contains the data in the combined spectrum for an APOGEE star.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeVisit"><b>apogeeVisit</b></a>
 - This table corresponds to the data in a single spectrum visit in APOGEE.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeStarVisit"><b>apogeeStarVisit</b></a>
 - This is a linking table that links an APOGEE combined star spectrum
 with the visits that were used to create the combined spectrum.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeStarAllVisit"><b>apogeeStarAllVisit</b></a>
 - This is a version of the apogeeStarVisit table that includes all the
 visits for that star, including good, bad, commsssioning, not, etc.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=aspcapStar"><b>aspcapStar</b></a>
 - This table contains the data in the ASPCAP (Apogee Stellar
 Parameter and Chemical Abundances Pipeline) entry for an APOGEE star.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=aspcapStarCovar"><b>aspcapStarCovar</b></a>
 - This table contains selected covariance matrix fields for the ASPCAP
 entry for an APOGEE star.
		</li><p>
	</ol>


<p><a name="mangatables"></a>
<h3>MaNGA Tables (DR13 and beyond) <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
Selected catalog data products from the <a
href="<%=globals.SdssUrlBase%>surveys/boss/">Mapping Nearby Galaxies at APO
survey</a> are available as of DR13 in the following tables. More data
will be available in future releases. There are links to the MaNGA data
cubes in the Explore page for MaNGA objects..
	<ol>
		<p>
		<li><a
		href="tabledesc.aspx?name=mangaDrpAll"><b>mangaDrpAll</b></a>
- Final summary file of the MaNGA Data Reduction Pipeline
(DRP). Contains all of the information required to find a given set of
spectra for a target.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=mangaTarget"><b>mangaTarget</b></a>
- MaNGA Target Catalog. This table contains the details of the three
main MaNGA samples, Primary, Secondary and Color-Enhanced, as well as the ancillary targets.
		</li><p>
	</ol>


<p><a name="wisetables"></a>
<h3>WISE Tables (DR12 and beyond) <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
SDSS tables associated with the <a href="http://irsa.ipac.caltech.edu/Missions/wise.html">Wide-field Infrared Survey
Explorer (WISE)</a> are listed here.
	<ol>
		<p>
		<li><a
		href="tabledesc.aspx?name=WISE_allsky"><b>WISE_allsky</b></a>
- The WISE catalog. The columns have mostly been copied without
modification from the WISE catalog distributed by IRSA, so that
documentation (mostly copied <a href="http://wise2.ipac.caltech.edu/docs/release/allsky/expsup/sec2_2a.html">here</a>) largely applies.
		<h4>WISE_allsky Indices: </h4><% BrowserFunctions.showIndices(oConn, "WISE_allsky", Request, Response, globals); %>
		</li><p>
		<li><a
		href="tabledesc.aspx?name=WISE_xmatch"><b>WISE_xmatch</b></a>
- This is a 'join table' which contains 'pointers' to the matched
objects in the SDSS and WISE tables. 
		<h4>WISE_xmatch Indices: </h4><% BrowserFunctions.showIndices(oConn, "WISE_xmatch", Request, Response, globals); %>
		</li><p>
		<li><a
		href="tabledesc.aspx?name=wiseForcedTarget"><b>wiseForcedTarget</b></a>
- (DR13 and beyond) This table contains WISE forced-photometry of SDSS primary sources. See
<a href="http://arxiv.org/abs/1410.7397">here</a> for the method.
		<h4>wiseForcedTarget Indices: </h4><% BrowserFunctions.showIndices(oConn, "wiseForcedTarget", Request, Response, globals); %>
		</li><p>
	</ol>


<p><a name="bossgaltables"></a>
<h3>BOSS Galaxy Product Tables <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
These are derived data products from the <a
href="<%=globals.SdssUrlBase%>surveys/boss/">Baryon Oscillation Spectroscopic
Survey</a>.  They each have a primary key index on specobjid.
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=emissionLinesPort"><b>emissionLinesPort</b></a> - Emission line kinematics results for BOSS galaxies using GANDALF.
		</li><p>
		<li><a href="tabledesc.aspx?name=stellarMassPassivePort"><b>stellarMassPassivePort</b></a> - Estimated stellar masses for BOSS galaxies using photometric method, assuming passive model. 

		</li><p>
		<li><a
		href="tabledesc.aspx?name=stellarMassStarformingPort"><b>stellarMassStarformingPort</b></a> - Estimated stellar masses for BOSS galaxies using photometric method, assuming a star-forming model. 
		</li><p>
		<li><b><a href="tabledesc.aspx?name=stellarMassPCAWiscBC03">stellarMassPCAWiscBC03</a></b> and <b><a href="tabledesc.aspx?name=stellarMassPCAWiscM11">stellarMassPCAWiscM11</a></b> 
            - Estimated stellar masses for BOSS galaxies using PCA technique.
		</li><p>
	</ol>

<%  } %>


<p><a name="zootables"></a>
<h3>Galaxy Zoo Tables <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
These are the results of galaxy classification from the <a
href="http://www.galaxyzoo.org">Galaxy Zoo site</a>:
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=zooConfidence"><b>zooConfidence</b></a> - Measures of classification confidence from Galaxy Zoo. 
		</li><p>
		<li><a href="tabledesc.aspx?name=zooMirrorBias"><b>zooMirrorBias</b></a> - Results from the bias study using mirrored images from Galaxy Zoo. 

		</li><p>
		<li><a
		href="tabledesc.aspx?name=zooMonochromeBias"><b>zooMonochromeBias</b></a> - Results from the bias study that introduced monochrome images in Galaxy Zoo. 
		</li><p>
		<li><a
		href="tabledesc.aspx?name=zooNoSpec"><b>zooNoSpec</b></a> - Morphology classifications of galaxies without spectra from Galaxy Zoo. 
		</li><p>
		<li><a
		href="tabledesc.aspx?name=zooSpec"><b>zooSpec</b></a> - Morphological classifications of spectroscopic galaxies from Galaxy Zoo. 
		</li><p>
		<li><a
		href="tabledesc.aspx?name=zooVotes"><b>zooVotes</b></a> - Vote breakdown in Galaxy Zoo results.
		</li><p>
	</ol>


<p><a name="misctables"></a>
<h3>Metadata and Other Tables <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=DBObjects"><b>DBObjects</b></a> - An auto-generated documentation table
that contains a description of every object (table, view, function, stored
procedure) in the database.
		</li><p>
		<li><a href="tabledesc.aspx?name=DBViewCols"><b>DBViewCols</b></a> - An auto-generated table containing a
description of every column in every table in the database.
		</li><p>
		<li><a href="tabledesc.aspx?name=DBColumns"><b>DBColumns</b></a> - An auto-generated table containing a
description of every column in every view in the database.
		</li><p>
	</ol>

<a name="htm"></a>
<h3>The Hierarchical Triangular Mesh (HTM) <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a></h3>
<p>
We have built a spatial indexing scheme called the <a href="http://www.skyserver.org/htm/">
Hierarchical Triangular Mesh (HTM)</a> that spatially decomposes the region of the sky
that is covered by the SDSS data and enables much faster spatial searches of the data
by coordinate cuts.

<p><a name="indices"></a>
<h3>Database Indices <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a></h3>
<p>
In addition to the HTM, which is an overall indexing scheme for multidimensional spatial
data, the DBMS itself has the capability to define indices for fast searches on each table.
We have defined <i>indices</i> on all the major tables.  
<p>
An index is a tree representation of a subset of the columns in a table that enables much 
faster searches of the table (compared to sequential scans of the table data) when 
constraints involving those columns are included in the query.  All tables have an index 
on their primary key (unique row identifier), but the larger tables have indexes
in addition to the primary key index.   In all there are 3 kinds of indices:

	<ul>
		<li><b>Primary Key Index</b> - index on the unique primary key of a table.
		</li>
		<li><b>Foreign Key Index</b> - index on a foreignkey of a table, i.e. a
		    column that is a primary key of another table.
		</li>
		<li><b>Covering Index</b> - an index that covers one or more columns of a
                    table.  This is a combined index on those fields, so it speeds up
		    searches if any of those fields are included in the WHERE clause.
		</li>
	</ul>
<a href="indices.aspx"><u>Click here to view a table of all the current indices
defined on the data.</u></a> 


<p><a name="interfaces"></a>
<h2>Accessing the CAS Data <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a></h2>
<!-------"dataaccess.inc"------------->
<p>
The CAS uses a <a href="https://www.microsoft.com/en-us/cloud-platform/sql-server">Microsoft SQL Server</a> database to store and serve the data.
Users can access this data by a number of methods.</p>
<table class='v' border="0"  cellspacing="1" cellpadding="3">

<ol>

 <a name="radial"></a>
  <li><a href="../../tools/search/radial.aspx">Radial search</a>. 
	Allows entry of a central coordinate, radius, and 
	constraints on the five simplified magnitudes (ugriz). This query returns ONLY 
	the object coordinates, type. simplified mags with errors, and the object id, 
	as well as the quantities necessary to get data from the <a
	href="<%=globals.DasUrl%>">SAS</a> (run/rerun/camcol/field/obj).</li>

 <a name="rect"></a>
  <li><a href="../../tools/search/rect.aspx">Rectangular Search.</a>
  Identical to the radial search, except that the user specifies a 
  minimum and maximum RA and Dec.</li>
 <a name="sql"></a>

	    <td> <a href="#navi">Navigator</a></td>
	    <td><a href="#explore">Explore</a></td>
	    <td>&nbsp;</td>
	</tr>
    </table>
</li></h4>
</ul>

<p><a name="organization"></a>
<h2> Data Organization </h2>
<!-------"datamodel.inc"------------->
<% using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
   {
       oConn.Open(); 
%>
<p>
<a name="datamodel"></a>
<h3>The SDSS Catalog Data Model</h3>
<p>
The SDSS catalog data is stored in a commercial relational database management 
system (DBMS) - <a href="https://www.microsoft.com/en-us/cloud-platform/sql-server">Microsoft's SQL Server</a>.  The data is therefore organized
in several 2-dimensional tables.  The tables and their relationships to each 
other are referred to as the <i>schema</i> in database jargon.  The <a
href="<%=url%>/help/browser/browser.aspx">Schema</a> link in the menubar
above takes you to the Schema page where you can browse the database schema.
<p>
<%
       if (globals.ReleaseNumber == 9)
       {
           Response.Write("<h4><a href='images/dr9schema.jpg'>");
           Response.Write("Diagrammatic view of the " + globals.Release + " schema ");
           Response.Write("<img src='images/dr9schemathumb.jpg' alt='DR9 database schema' />");
           Response.Write("</a></h4>");
       }
       else if (globals.ReleaseNumber <= 12)
       {
           Response.Write("<h4><a href='images/dr12schema.jpg'>");
           Response.Write("Diagrammatic view of the " + globals.Release + " schema ");
           Response.Write("<img src='images/dr12schema.jpg' alt='Database schema' width='60' align='middle' />");
           Response.Write("</a></h4>");
       }
       else {
           Response.Write("<h4><a href='images/datamodelbest.jpg'>");
           Response.Write("Diagrammatic view of the " + globals.Release + " schema ");
           Response.Write("<img src='images/datamodelbest.jpg' alt='Database schema' width='60' align='middle' />");
           Response.Write("</a></h4>");
       }
  %>

  <!--  
<h4><a href="images/dataModelBest.jpg">Diagrammatic view of the <%=globals.Release%>
schema <img src="images/dataModelBest.jpg" width="60" align="middle"></a></h4>
-->
<p> 
There are 3 different types of data in the tables - imaging data
is in the <b>photo</b> group of tables, spectroscopic and tiling data is
in the <b>spectro</b> tables, and other data such as documentation or other 
information about the photo and spectro data, i.e. metadata, is in the
<b>meta</b> tables.  Some tables are also created specifically for speed or
convenience, for example the SpecPhotoAll table, which contains a pre-computed
JOIN of relevant fields in the PhotoObjAll and SpecObjAll tables.
<p>
The important tables are described below, along with the <b>views</b> that are
currently defined on each table.  A view is a subset of the corresponding
table that can be used instead of the table - in other words it is a
<u>virtual table</u>.  A view is usually faster than using the base table,
since it only loads a subset of the objects, but more importantly, the views
we have defined on the tables select only the objects that are important for
science, and they filter out non-science objects such as sky, QA or defective
observations.   As such, even though we list the base tables for
completeness below, in the vast majority of the cases, <b><u>you should use the
views defined on the tables instead of the tables themselves</u></b>, e.g. use
the PhotoObj and SpecObj views for science instead of the PhotoObjAll and
SpecObjAll tables.
</p>

<p><a name="phototables"></a>
<h3> Imaging (Photo) Data Tables <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a></h3>
The important tables and views are described below.  For each table, the views
and indices are defined on that table are described in brief.  For more
information, please see the <a href="tabledesc.aspx">Table Descriptions</a>
help page and the <a href="../browser/browser.aspx">Schema Browser</a>.
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=PhotoObjAll"><b>PhotoObjAll</b></a> - By far the largest table in the database, PhotoObjAll contains
the 100+ parameters for each imaging (photo) object.  For most of these parameters, there are
actually 5 rows each, one for each wavelength band.  This table includes data on <i>all</i> photo 
objects, not just science objects, hence the name PhotoObj<u>All</u>.  The view of this
table that includes only science objects and excludes sky and other unknown objects is
the <a href="tabledesc.aspx?name=PhotoObj"><b>PhotoObj</b></a> view.  The PhotoObjAll table is there for completeness, but science queries
are usually done on the PhotoObj view.
		<h4>PhotoObjAll Views:</h4><% BrowserFunctions.showViews(oConn, "photoobjall", Request, Response, globals); %>
		<h4>PhotoObjAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "photoobjall",Request,Response,globals); %>
		</li><p>
<!--
		<li><a href="tabledesc.aspx?name=PhotoTag"><b>PhotoTag</b></a> - This is a vertical partition of the PhotoObjAll table, and 
contains only those columns that are most often requested.  Due to the smaller size of each row
in the table, many more rows can be loaded into the memory cache at one time, hence searches on
the PhotoTag table are much faster than searches on PhotoObjAll.  Whenever possible, use the
PhotoTag table instead of PhotoObjAll or PhotoObj.
		<h4>PhotoTag Indices:</h4><% BrowserFunctions.showIndices( oConn, "phototag" ,Request,Response,globals); %>
		</li><p>
-->
		<li><a href="tabledesc.aspx?name=Field"><b>Field</b></a> - This table contains all the measured
parameters of each <a href="<%=globals.SdssUrl%>help/glossary.php#field">imaging field<img src="../../images/offsite.png" alt=" (offsite)" /></a>, along
with relevant summary statistics, and astrometric and photometric information.
		<h4>Field Indices:</h4><% BrowserFunctions.showIndices(oConn, "field", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=PhotoProfile"><b>PhotoProfile</b></a> - This table contains the light
profiles of SDSS photo objects.
		<h4>PhotoProfile Indices:</h4><% BrowserFunctions.showIndices(oConn, "photoprofile", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=FieldProfile"><b>FieldProfile</b></a> - This table contains the light
profiles of SDSS field objects.
		<h4>FieldProfile Indices:</h4><% BrowserFunctions.showIndices(oConn, "fieldprofile", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=Neighbors"><b>Neighbors</b></a> - SDSS objects within 0.5 arcmins and
their match parameters are stored here.  Make sure to filter out unwanted
PhotoObj, like secondaries.
		<h4>Neighbors Indices:</h4><% BrowserFunctions.showIndices(oConn, "neighbors", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=First"><b>First</b></a>,
		<a href="tabledesc.aspx?name=RC3"><b>RC3</b></a>, <a
		href="tabledesc.aspx?name=Rosat"><b>Rosat</b></a>, <a
		href="tabledesc.aspx?name=TwoMASS"><b>TwoMASS</b></a>, <a
		href="tabledesc.aspx?name=TwoMASSXSC"><b>TwoMASSXSC</b></a> and <a href="tabledesc.aspx?name=Usno"><b>Usno</b></a> - These tables contain matches between the FIRST, RC3, ROSAT, 2MASS, 2MASSXSC (2MASS Extended Source Catalog) and USNO survey objects respectively and SDSS. 
		</li><p>
	</ol>

<p><a name="spectrotables"></a>
<h3>Spectro/Tiling/GalSpec/SPP Data Tables <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
The important spectro, tiling, galSpec and spp (Stellar Parameter
Pipeline) data tables are described here.  The tiling table names are
prefixed by "sdss" to distinguish them from tiling tables for BOSS
(Baryon Oscillation Spectroscopic Survey) data in the future.  For more
information, please see the <a href="tabledesc.aspx">Table
Descriptions</a> help page and the <a href="../browser/browser.aspx">Schema
Browser</a>.
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=PlateX"><b>PlateX</b></a> - This table contains data as exported (the
X is for exported) from a given plate used for spectroscopic observations.
Each plate has 640 observed spectra and hence 640 corresponding entries in
SpecObjAll.
		<h4>PlateX Indices:</h4><% BrowserFunctions.showIndices(oConn, "platex", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=SpecObjAll"><b>SpecObjAll</b></a> - This is a base table containing
<b>ALL</b> the spectroscopic information, including a lot of duplicate and bad
data. Use the <a href="tabledesc.aspx?name=SpecObj"><b>SpecObj</b></a> view instead (see below), which has the data
properly filtered for cleanliness.
		<h4>SpecObjAll Views:</h4><% BrowserFunctions.showViews(oConn, "specobjall", Request, Response, globals); %>
		<h4>SpecObjAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "specobjall", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=SpecPhotoAll"><b>SpecPhotoAll</b></a> - The combined spectro and photo
parameters of an object in SpecObjAll.  This is a precomputed join between the
PhotoObjAll and SpecObjAll tables.  The photo attibutes included cover about
the same as in the PhotoTag view.  The table also includes certain
attributes from the Tile table.
		<h4>SpecPhotoAll Views:</h4><% BrowserFunctions.showViews(oConn, "specphotoall", Request, Response, globals); %>
		<h4>SpecPhotoAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "specphotoall", Request, Response, globals); %>
		</li><p>

		<li><a href="tabledesc.aspx?name=sdssTileAll"><b>sdssTileAll</b></a> - Contains information about individual
<a href="<%=globals.SdssUrl%>help/glossary.php#tile">tiles<img src="../../images/offsite.png" alt=" (offsite)" /></a> on the sky.
		<h4>sdssTileAll Views:</h4><% BrowserFunctions.showViews(oConn, "sdsstileall", Request, Response, globals); %>
		<h4>sdssTileAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "sdsstileall", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=sdssTiledTargetAll"><b>sdssTiledTargetAll</b></a> - This table stores information that
keeps track of why a <a href="<%=globals.SdssUrl%>help/glossary.php#target">target<img src="../../images/offsite.png" alt=" (offsite)" /></a> 
            was assigned to a <a href="<%=globals.SdssUrl%>help/glossary.php#tile">tile<img src="../../images/offsite.png" alt=" (offsite)" /></a>.
		<h4>sdssTiledTargetAll Views:</h4><% BrowserFunctions.showViews(oConn, "sdsstiledtargetall", Request, Response, globals); %>
		<h4>sdssTiledTargetAll Indices:</h4><% BrowserFunctions.showIndices(oConn, "sdsstiledtargetall", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=sdssTilingGeometry"><b>sdssTilingGeometry</b></a> - This table contains geometrical
information about tiling regions, including tiling boundaries.  The
TileBoundary view serves up the boundaries.
		<h4>sdssTilingGeometry Views:</h4><% BrowserFunctions.showViews(oConn, "sdsstilinggeometry", Request, Response, globals); %>
		<h4>sdssTilingGeometry Indices:</h4><% BrowserFunctions.showIndices(oConn, "sdsstilinggeometry", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=sdssTilingRun"><b>sdssTilingRun</b></a> - Contains basic information about each
run of the tiling software.
		</li><p>
		<li><a href="tabledesc.aspx?name=sdssTilingInfo"><b>sdssTilingInfo</b></a> - Contains information on what happened
to a Target in a run of tiling software.
		</li><p>

		<li><a href="tabledesc.aspx?name=galSpecExtra"><b>galSpecExtra</b></a>, 
		<a href="tabledesc.aspx?name=galSpecIndx"><b>galSpecIndx</b></a>, 
		<a href="tabledesc.aspx?name=galSpecInfo"><b>galSpecInfo</b></a> and
		<a href="tabledesc.aspx?name=galSpecLine"><b>galSpecLine</b></a>-
		These tables contain the estimated physical parameters,
		the spectral index measurements, general information
		about the spectroscopic analysis and the emission line
		measurements from the MPA-JHU spectroscopic catalog.
		<h4>galSpecExtra Indices:</h4><% BrowserFunctions.showIndices(oConn, "galspecextra", Request, Response, globals); %>
		<h4>galSpecIndx Indices:</h4><% BrowserFunctions.showIndices(oConn, "galspeciindx", Request, Response, globals); %>
		<h4>galSpecInfo Indices:</h4><% BrowserFunctions.showIndices(oConn, "galspecinfo", Request, Response, globals); %>
		<h4>galSpecLine Indices:</h4><% BrowserFunctions.showIndices(oConn, "galspecline", Request, Response, globals); %>
		</li><p>
		<li><a href="tabledesc.aspx?name=sppLines"><b>sppLines</b></a>
		and <a href="tabledesc.aspx?name=sppParams"><b>sppParams</b></a>-
		These tables contain the line and paramater measurements
		from the Stellar Parameter Pipeline.
		<h4>sppLines Indices:</h4><% BrowserFunctions.showIndices(oConn, "sppLines", Request, Response, globals); %>
		<h4>sppParams Indices:</h4><% BrowserFunctions.showIndices(oConn, "sppParams", Request, Response, globals); %>
		</li><p>

	</ol>

<p><a name="apogeetables"></a>
<h3>APOGEE Tables (DR10 and beyond) <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
These are the catlog data products for the <a
href="<%=globals.SdssUrlBase%>surveys/apogee/">Apache Point Observatory
(APO) Galaxy Evolution Experiment survey</a>..
	<ol>
		<p>
		<li><a
		href="tabledesc.aspx?name=apogeeDesign"><b>apogeeDesign</b></a>
 - This table contains all the design parameters used in designing plates for APOGEE spectra.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeField"><b>apogeeField</b></a>
 - This table contains the name, location and number of visits expected
 for an APOGEE field.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeObject"><b>apogeeObject</b></a>
 - This table contains all the parameters that went into targeting
 objects for APOGEE spectra.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeePlate"><b>apogeePlate</b></a>
 - This table contains the parameters for an APOGEE spectral plate.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeStar"><b>apogeeStar</b></a>
 - This table contains the data in the combined spectrum for an APOGEE star.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeVisit"><b>apogeeVisit</b></a>
 - This table corresponds to the data in a single spectrum visit in APOGEE.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeStarVisit"><b>apogeeStarVisit</b></a>
 - This is a linking table that links an APOGEE combined star spectrum
 with the visits that were used to create the combined spectrum.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=apogeeStarAllVisit"><b>apogeeStarAllVisit</b></a>
 - This is a version of the apogeeStarVisit table that includes all the
 visits for that star, including good, bad, commsssioning, not, etc.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=aspcapStar"><b>aspcapStar</b></a>
 - This table contains the data in the ASPCAP (Apogee Stellar
 Parameter and Chemical Abundances Pipeline) entry for an APOGEE star.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=aspcapStarCovar"><b>aspcapStarCovar</b></a>
 - This table contains selected covariance matrix fields for the ASPCAP
 entry for an APOGEE star.
		</li><p>
	</ol>


<p><a name="mangatables"></a>
<h3>MaNGA Tables (DR13 and beyond) <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
Selected catalog data products from the <a
href="<%=globals.SdssUrlBase%>surveys/boss/">Mapping Nearby Galaxies at APO
survey</a> are available as of DR13 in the following tables. More data
will be available in future releases. There are links to the MaNGA data
cubes in the Explore page for MaNGA objects..
	<ol>
		<p>
		<li><a
		href="tabledesc.aspx?name=mangaDrpAll"><b>mangaDrpAll</b></a>
- Final summary file of the MaNGA Data Reduction Pipeline
(DRP). Contains all of the information required to find a given set of
spectra for a target.
		</li><p>
		<li><a
		href="tabledesc.aspx?name=mangaTarget"><b>mangaTarget</b></a>
- MaNGA Target Catalog. This table contains the details of the three
main MaNGA samples, Primary, Secondary and Color-Enhanced, as well as the ancillary targets.
		</li><p>
	</ol>


<p><a name="wisetables"></a>
<h3>WISE Tables (DR12 and beyond) <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
SDSS tables associated with the <a href="http://irsa.ipac.caltech.edu/Missions/wise.html">Wide-field Infrared Survey
Explorer (WISE)</a> are listed here.
	<ol>
		<p>
		<li><a
		href="tabledesc.aspx?name=WISE_allsky"><b>WISE_allsky</b></a>
- The WISE catalog. The columns have mostly been copied without
modification from the WISE catalog distributed by IRSA, so that
documentation (mostly copied <a href="http://wise2.ipac.caltech.edu/docs/release/allsky/expsup/sec2_2a.html">here</a>) largely applies.
		<h4>WISE_allsky Indices: </h4><% BrowserFunctions.showIndices(oConn, "WISE_allsky", Request, Response, globals); %>
		</li><p>
		<li><a
		href="tabledesc.aspx?name=WISE_xmatch"><b>WISE_xmatch</b></a>
- This is a 'join table' which contains 'pointers' to the matched
objects in the SDSS and WISE tables. 
		<h4>WISE_xmatch Indices: </h4><% BrowserFunctions.showIndices(oConn, "WISE_xmatch", Request, Response, globals); %>
		</li><p>
		<li><a
		href="tabledesc.aspx?name=wiseForcedTarget"><b>wiseForcedTarget</b></a>
- (DR13 and beyond) This table contains WISE forced-photometry of SDSS primary sources. See
<a href="http://arxiv.org/abs/1410.7397">here</a> for the method.
		<h4>wiseForcedTarget Indices: </h4><% BrowserFunctions.showIndices(oConn, "wiseForcedTarget", Request, Response, globals); %>
		</li><p>
	</ol>


<p><a name="bossgaltables"></a>
<h3>BOSS Galaxy Product Tables <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
These are derived data products from the <a
href="<%=globals.SdssUrlBase%>surveys/boss/">Baryon Oscillation Spectroscopic
Survey</a>.  They each have a primary key index on specobjid.
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=emissionLinesPort"><b>emissionLinesPort</b></a> - Emission line kinematics results for BOSS galaxies using GANDALF.
		</li><p>
		<li><a href="tabledesc.aspx?name=stellarMassPassivePort"><b>stellarMassPassivePort</b></a> - Estimated stellar masses for BOSS galaxies using photometric method, assuming passive model. 

		</li><p>
		<li><a
		href="tabledesc.aspx?name=stellarMassStarformingPort"><b>stellarMassStarformingPort</b></a> - Estimated stellar masses for BOSS galaxies using photometric method, assuming a star-forming model. 
		</li><p>
		<li><b><a href="tabledesc.aspx?name=stellarMassPCAWiscBC03">stellarMassPCAWiscBC03</a></b> and <b><a href="tabledesc.aspx?name=stellarMassPCAWiscM11">stellarMassPCAWiscM11</a></b> 
            - Estimated stellar masses for BOSS galaxies using PCA technique.
		</li><p>
	</ol>

<%  } %>


<p><a name="zootables"></a>
<h3>Galaxy Zoo Tables <a href="#top"><img src="images/top.gif"
ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
These are the results of galaxy classification from the <a
href="http://www.galaxyzoo.org">Galaxy Zoo site</a>:
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=zooConfidence"><b>zooConfidence</b></a> - Measures of classification confidence from Galaxy Zoo. 
		</li><p>
		<li><a href="tabledesc.aspx?name=zooMirrorBias"><b>zooMirrorBias</b></a> - Results from the bias study using mirrored images from Galaxy Zoo. 

		</li><p>
		<li><a
		href="tabledesc.aspx?name=zooMonochromeBias"><b>zooMonochromeBias</b></a> - Results from the bias study that introduced monochrome images in Galaxy Zoo. 
		</li><p>
		<li><a
		href="tabledesc.aspx?name=zooNoSpec"><b>zooNoSpec</b></a> - Morphology classifications of galaxies without spectra from Galaxy Zoo. 
		</li><p>
		<li><a
		href="tabledesc.aspx?name=zooSpec"><b>zooSpec</b></a> - Morphological classifications of spectroscopic galaxies from Galaxy Zoo. 
		</li><p>
		<li><a
		href="tabledesc.aspx?name=zooVotes"><b>zooVotes</b></a> - Vote breakdown in Galaxy Zoo results.
		</li><p>
	</ol>


<p><a name="misctables"></a>
<h3>Metadata and Other Tables <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a> </h3>
	<ol>
		<p>
		<li><a href="tabledesc.aspx?name=DBObjects"><b>DBObjects</b></a> - An auto-generated documentation table
that contains a description of every object (table, view, function, stored
procedure) in the database.
		</li><p>
		<li><a href="tabledesc.aspx?name=DBViewCols"><b>DBViewCols</b></a> - An auto-generated table containing a
description of every column in every table in the database.
		</li><p>
		<li><a href="tabledesc.aspx?name=DBColumns"><b>DBColumns</b></a> - An auto-generated table containing a
description of every column in every view in the database.
		</li><p>
	</ol>

<a name="htm"></a>
<h3>The Hierarchical Triangular Mesh (HTM) <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a></h3>
<p>
We have built a spatial indexing scheme called the <a href="http://www.skyserver.org/htm/">
Hierarchical Triangular Mesh (HTM)</a> that spatially decomposes the region of the sky
that is covered by the SDSS data and enables much faster spatial searches of the data
by coordinate cuts.

<p><a name="indices"></a>
<h3>Database Indices <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a></h3>
<p>
In addition to the HTM, which is an overall indexing scheme for multidimensional spatial
data, the DBMS itself has the capability to define indices for fast searches on each table.
We have defined <i>indices</i> on all the major tables.  
<p>
An index is a tree representation of a subset of the columns in a table that enables much 
faster searches of the table (compared to sequential scans of the table data) when 
constraints involving those columns are included in the query.  All tables have an index 
on their primary key (unique row identifier), but the larger tables have indexes
in addition to the primary key index.   In all there are 3 kinds of indices:

	<ul>
		<li><b>Primary Key Index</b> - index on the unique primary key of a table.
		</li>
		<li><b>Foreign Key Index</b> - index on a foreignkey of a table, i.e. a
		    column that is a primary key of another table.
		</li>
		<li><b>Covering Index</b> - an index that covers one or more columns of a
                    table.  This is a combined index on those fields, so it speeds up
		    searches if any of those fields are included in the WHERE clause.
		</li>
	</ul>
<a href="indices.aspx"><u>Click here to view a table of all the current indices
defined on the data.</u></a> 


<p><a name="interfaces"></a>
<h2>Accessing the CAS Data <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a></h2>
<!-------"dataaccess.inc"------------->
<p>
The CAS uses a <a href="https://www.microsoft.com/en-us/cloud-platform/sql-server">Microsoft SQL Server</a> database to store and serve the data.
Users can access this data by a number of methods.</p>
<table class='v' border="0"  cellspacing="1" cellpadding="3">

<ol>

 <a name="radial"></a>
  <li><a href="../../tools/search/radial.aspx">Radial search</a>. 
	Allows entry of a central coordinate, radius, and 
	constraints on the five simplified magnitudes (ugriz). This query returns ONLY 
	the object coordinates, type. simplified mags with errors, and the object id, 
	as well as the quantities necessary to get data from the <a
	href="<%=globals.DasUrl%>">SAS</a> (run/rerun/camcol/field/obj).</li>

 <a name="rect"></a>
  <li><a href="../../tools/search/rect.aspx">Rectangular Search.</a>
  Identical to the radial search, except that the user specifies a 
  minimum and maximum RA and Dec.</li>
 <a name="sql"></a>

 <a name="iqs"></a>
  <li><a href="../../tools/search/IQS.aspx">Imaging Query Search (SQS) form.</a>
  A comprehensive web form query to search for imaging data in the CAS
  (along with matching spectroscopic data if needed).</li>
 <a name="sql"></a>

 <a name="sqs"></a>
  <li><a href="../../tools/search/SQS.aspx">Spectroscopic Query Search (SQS) form.</a>
  A comprehensive web form query to search for spectroscopic data in the CAS
  (along with matching imaging data if needed).</li>
 <a name="sql"></a>

 <a name="irqs"></a>
  <li><a href="../../tools/search/IRQS.aspx">InfraRed Query Search (IRQS) form.</a>
  A special web form to search for infrared (APOGEE) data. </li>
 <a name="sql"></a>

  <li><a href="../../tools/search/sql.aspx">SQL web form.</a> 
  Users can enter Structured Query Language (SQL) queries in a form, 
  and the query will be executed. The query is limited in duration (usually 10 minutes),
 or output size (500k rows). This query type allows selection of various attributes, 
 combined photometric and spectroscopic queries, and the application of 
 complex constraints. Users new to SQL will want to read our 
 <a href="sql_help.aspx">SQL help</a> and the <a href="#datamodel">
 description of the data model</a> and the <a href="../browser/browser.aspx">
 parameters stored in the various tables</a>.</li>

 <a name="crossid"></a>
 <li><a href="../../tools/crossid/default.aspx">CrossID.</a> 
 Users input or upload a list of object names and coordinates, and
get the nearest oject or objects in the SDSS database for each input object. 
The match radius is adjustable up to three arcminutes, and users can choose 
the quantities they want output for each match. The input list is limited
to 1000 objects and the output to 10000 objects.</li>

In addition, the SkyServer provides a tool called the 
<a href="../browser/browser.aspx">Schema Browser</a>, with 
which users can browse the various tables, views, and 
functions available for SQL queries, as well as the different 
columns available in each. All of the SkyServer interfaces allow 
data to be returned in HTML, XML, or CSV (comma separated variable) 
format.
</li>
<a name="casjobs"></a>
<p></p>
<li>
<a href="<%=globals.CasJobs%>"><em>CasJobs</em> batch query service.</a>
CasJobs allows you to submit queries and recover the results at a later
time. You may submit queries that have much more generous limits of time
and output (because they are executed in asynchronous mode) and save the results to your own database on the server called MyDB.  There is a user guide and FAQ available on the <a href="<%=globals.CasJobs%>">CasJobs site</a>.
</li>

</ol>
<br>
<p>In addition to these database access tools, we have developed some simple
interfaces to retrieve color JPG images for lists of objects, with optional 
overlays of catalog data, finding charts, and a navigation tool that allows you
to move around a sky region in a MapQuest-like fashion:
<ol>
<a name="chart"></a>
<li><a href="../../tools/chart/chart.aspx">Finding Chart</a>. 
Returns a single JPEG image centered on (<em>ra,dec</em>). 
This tool allows scaling of the output image, and a variety 
of overlays are available.</li>

<a name="list"></a>
<li><a href="../../tools/chart/list.aspx">Cutout Service</a>. 
Users can upload a list of up to 1000 objects, and have small 
JPEG image cutouts for each object displayed, 100 to a page. 
A variety of overlays are available.</li>

<a name="navi"></a>
<li><a href="../../tools/chart/navi.aspx">Navigator</a>. 
Displays a JPEG of an area of the sky, and allows the user to 
zoom and pan. A variety of overlays are available.</li>

<a name="explore"></a>
<li><a href="../../tools/explore">Object Explorer</a>. 
Enables you to find individual objects, either based upon their object IDs, or 
their sky position. The page presents a concise summary of all relevant 
information about the object, and provides links to all the additional 
information, like neighbors, fields, the spectroscopic object, spectral plates, 
cross-identifications in other surveys, or photometric redshifts of galaxies. 
We also provide links to the low-level data available as binary FITS tables. 
These include the corrected frames, bit-masks, binned sky, the atlas images and 
the spectra. 
</ol>


</td></tr></table>
 <a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></</a>
</div>
</asp:Content>
