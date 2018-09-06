<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="QS_UserGuide.aspx.cs" Inherits="SkyServer.Help.Docs.QS_UserGuide" %>
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
  #transp
{
    LEFT: 240px;
    POSITION: absolute;
    TOP: 155px
}
</style>
  <div id="transp">
  <table WIDTH=640 border=0 cellspacing="3" cellpadding="3">
<tr>
<td class='q'>
<b>Use the IQS (SQS) to make intermediate-level queries on the <%=globals.Release.ToLower()%> CAS
database for objects in the <%=globals.Release.ToLower()%> imaging (spectroscopic) sample.</b>
<hr>

<h3>Table of contents:</h3>
<ul>
    <li> <a href="#Parameters"> Parameters to Return </a> </li>
    <li> <a href="#Spectroscopy"> Spectroscopy Parameters </a> </li>
    <li> <a href="#Imaging"> Imaging Parameters </a> </li>
    <li> <a href="#SAS">Getting FITS files from the SAS</a> </li>
    <li> <a href="#PositionConstraint"> Position Constraints </a> </li>
    <li> <a href="#PositionRectangularConstraint"> Rectangular Search </a> </li>
    <li> <a href="#PositionConeConstraint"> Cone Search </a> </li>
    <li> <a href="#PositionProximityConstraint"> Proximity Search </a> </li>
    <li> <a href="#NoPositionConstraint"> No Position Constraint </a> </li>
    <li> <a href="#SpectroscopyConstraints"> Spectroscopy Constraints </a> </li>
    <li> <a href="#Redshift"> Redshift </a> </li>
    <li> <a href="#SpectralClassification"> Spectral Classification </a> </li>
    <li> <a href="#Primtarget"> Primtarget </a> </li>
    <li> <a href="#Sectarget"> Sectarget </a> </li>
    <li> <a href="#BossTarget"> BossTarget </a> </li>
    <li> <a href="#EbossTarget"> EbossTarget </a> </li>
    <li> <a href="#ImagingConstraints"> Imaging Constraints </a> </li>
    <li> <a href="#SkyVersion"> Sky Version </a> </li>
    <li> <a href="#MagnitudeType"> Magnitude Type </a> </li>
    <li> <a href="#Magnitudes"> Magnitudes </a> </li>
    <li> <a href="#Colors"> Colors </a> </li>
    <li> <a href="#ObjectType"> Object Type </a> </li>
    <li> <a href="#objFlags"> Photo Flags </a> </li>
</ul>


<hr><p><a name= "Parameters"></a>
<h3>  Parameters to Return </h3>
Which spectroscopic and/or imaging parameters do you want returned from
your query?<br>
<p>

<hr><p><a name= "Spectroscopy"></a>
<h3>Spectroscopy Parameters</h3>
Which spectroscopic parameters do you want returned from your query?<br>
Useful spectroscopy parameter combinations:
<p>
<dd><b>none</b>    (IQS:  none, SQS:  plateid, mjd, fiberid)
<dd><b>minimal</b> (plateid, mjd, fiberid)
<dd><b>typical</b> (plateid, mjd, fiberid, z, z_err, z_conf, z_status, spec_cln, z_warnin, raObj, decObj)
<dd><b>radec</b>   (ra, dec)
<p>
<a href="http://www.sdss.org/<%=globals.Release.ToLower()%>/dm/flatFiles/spSpec.html">Individual spectroscopy parameters (see also the spSpec Data Model):</a><br>
<%
  using (System.Data.SqlClient.SqlConnection oConn = new System.Data.SqlClient.SqlConnection(globals.ConnectionString))
  {
    oConn.Open();
    showTable( oConn, "SpecObj");
%>

<p>
<hr><p><a name= "Imaging"></a>
<h3>Imaging Parameters</h3>
<p>
Which imaging parameters do you want returned from your query?
<p>
<b>Note</b>:  <a href="glossary.aspx?key=target">"Target Imaging"</a> refers to the
imaging data (run) and/or processing (rerun) combination used in
selecting targets for spectroscopic followup; <a href="glossary.aspx?key=best">"Best Imaging"</a>
 refers to the "latest and greatest"
run/rerun combination and therefore generally supersedes the run/rerun
combination of "Target Imaging".
<p>
<b>Caveat</b>: In rare instances the "Best Imaging" object matched to a
spectrum may NOT correspond to the original "Target Imaging" object. For
example, this may occur when there were deblending problems in the
"Target Imaging", such as when a bright off-center HII region was
targeted instead of the parent galaxy, and where that HII region is then
properly treated in the "Best Imaging" and is no longer a cataloged
object. When in doubt, please compare the magnitudes and coordinates of
the "Target Imaging" and "Best Imaging" objects.
<p>
Useful imaging parameter combinations:

<dd><b>none</b>          (SQS:  none, IQS:  run, rerun, camcol, field, id)
<dd><b>minimal</b>       (run, rerun, camcol, field, id)
<dd><b>typical</b>       (run, rerun, camcol, field, id, objc_type, ra, decl, mag_model_r)
<dd><b>radec</b>         (ra, dec)
<dd><b>model_mags</b>    (mag_model_u, mag_model_g, mag_model_r, mag_model_i, mag_model_z)
<dd><b>model_magerrs</b> (mag_modelerr_u, mag_modelerr_g, mag_modelerr_r, mag_modelerr_i, mag_modelerr_z)
<dd><b>psf_mags</b>      (psfmag_u, psfmag_g, psfmag_r, psfmag_i, psfmag_z)
<dd><b>psf_magerrs</b>   (psfmagerr_u, psfmagerr_g, psfmagerr_r, psfmagerr_i, psfmagerr_z)
<dd><b>petro_mags</b>    (petromag_u, petromag_g, petromag_r, petromag_i, petromag_z)
<dd><b>petro_magerrs</b> (petromagerr_u, petromagerr_g, petromagerr_r, petromagerr_i, petromagerr_z)
<dd><b>model_colors</b>  (ugModelColor, grModelColor, riModelColor, izModelColor)
<dd><b>ugModelColor</b>  (mag_model_u-mag_model_g)
<dd><b>grModelColor</b>  (mag_model_g-mag_model_r)
<dd><b>riModelColor</b>  (mag_model_r-mag_model_i)
<dd><b>izModelColor</b>  (mag_model_i-mag_model_z) 
<p>
The <b>SDSSname</b> parameter returns the <a href="http://www.sdss.org/<%=globals.Release.ToLower()%>/coverage/IAU.html">official IAU SDSS 
designation</a> for the object, in the format:<dd> SDSS JHHMMSS.ss+DDMMSS.s.<br>The SDSS name is generated with a call to the function 
<a href="<%=url%>/help/browser/browser.aspx?cmd=description+fIAUFromEq+F">fIAUFromEq</a>.
<p>
<a href="http://www.sdss.org/<%=globals.Release.ToLower()%>/dm/flatFiles/tsObj.html"> Individual imaging parameters (see also the tsObj Data Model):</a>

<%
    showTable(oConn, "PhotoObj");
    Response.Write("<hr><p><a name= \"SAS\"> <h3> Getting FITS files from the SAS (Science Archive Server) </h3> </a> \n");
    Response.Write("<p>\n");
    Response.Write("After you press <b>Submit</b>, the page that displays the results of the query will include the appropriate button(s) to upload\n");
    Response.Write("the results of the query to the <a href=\"" + globals.DasUrl + "\">SAS</a> to retrieve the corresponding raw FITS file data.\n");
    Response.Write("If you only request imaging data and include the columns <i>run</i>, <i>rerun</i>, <i>camcol</i>, and <i>field</i> (these are \n");
    Response.Write("included in the <b>minimal</b> and <b>typical</b> column lists), then the <b>Upload list of fields to SAS</b> button will be \n");
    Response.Write("displayed on the results page (below the query results table).  If you request spectroscopic data, and include the columns \n");
    Response.Write("<i>plate</i>, <i>mjd</i> and <i>fiberid</i> in the output (included in the <b>minimal</b> and <b>typical</b> column lists), then the\n");
    Response.Write("<b>Upload list of spectra to SAS</b> button will be displayed on the results page so you can retrieve FITS files for the spectra. \n");
%>

<hr><p><a name= "PositionConstraint"> <h3> Position Constraints </h3> </a> 
<p>
Which positional constraints (if any) do you want applied to your query?


<hr><p><a name= "PositionRectangularConstraint"> <h3> Rectangular Search </h3> </a> 
Do you wish to search a rectangular box in ra and dec?
<p>
Valid formats (J2000):
<ul>
 <li>raMin/raMax in decimal degrees (D.ddddd) or in sexagesimal hours, minutes, seconds 
     (HH:MM:SS.ss or HH MM SS.ss) </li>
 <li>decMin/decMax in decimal degrees (+/-DD.ddddd) or in sexagesimal degrees, arcminutes, 
     arcseconds (+/-DD:MM:SS.s or +/-DD MM SS.s) </li>
</ul>

<hr><p><a name= "PositionConeConstraint"> <h3> Cone Search </h3> </a> 
Do you wish to search a circle on the sky centered on a single ra and dec?
<p>
For a given RA and DEC, the cone search returns all objects within the search radius that meet 
your search constraints.
<p>
Valid formats (J2000):
<ul>
 <li>raCenter in decimal degrees (D.ddddd) or in sexagesimal hours, minutes, seconds 
     (HH:MM:SS.ss or HH MM SS.ss) </li>
 <li>decCenter in decimal degrees (+/-DD.ddddd) or in sexagesimal degrees, arcminutes, 
     arcseconds (+/-DD:MM:SS.s or +/-DD MM SS.s) </li>
 <li>radius in decimal arcminutes (M.mmm) </li>
</ul>

<hr><a name= "PositionProximityConstraint"> <h3> Proximity Search </h3> </a> 
<p>
       <p>Do you want to search the proximities for a list of ra's and dec's?</p> 
        <p>
        Proximity Search allows you to enter a list of RA/Dec positions and find objects 
        near those positions. For each RA and Dec you enter, the proximity search 
        returns objects within the specified search radius that meet your search 
        constraints.</p>
        <p>
        
        The list can be either entered directly into the box or uploaded as a file. 
        In either case, the positions must be of the form: 
        </p>
        <p>
        <b>ra dec [sep]</b>
        </p>
        <p>with each item separated by a comma or space. The first two numbers, "ra" and "dec," 
        are requried - these are the sky positions (J2000) around which to search. 
        The third, "sep," is optional - it is the separation distance or seach radius, 
        in arcminutes, around which to search. If you do not enter a value for "sep," 
        the default is 1 arcminute. 
        </P>
        <P>
        Valid formats for positions are:  
        </p>
        <ul>
            <li>ra in decimal degrees (D.ddddd); or in sexagesimal hours, minutes, seconds (HH:MM:SS.ss or HH MM SS.ss)  
            </li>
            <li>dec in decimal degrees (+/-DD.ddddd); or in sexagesimal degrees, arcminutes, arcseconds (+/-DD:MM:SS.s or +/-DD MM SS.s)  
            </li>
            <li>sep in decimal arcminutes (S.ssss...) </li>
        </ul>
        
        <p>"Nearest Only" returns only one match for each position you enter - the sky object meeting your search criteria that is nearest to the position you entered. </p>
        <p>"All Nearby" returns all objects meeting your criteria within your search radius. </p>
        <p>      
        That means that "Nearest Only" only will return at most one match for each position you entered; "All Nearby" could return many matches for each position.     
        </p>
        
        <hr><a name= "NoPositionConstraint">
        <h3>
            No Position Constraint 
        </h3>
        </a>Do you want to apply no positional constraints in your query? 
        <br><b>CAVEAT EMPTOR:</b> This will result in a search over the <u>entire</u> database,
   which will probably take a very long time to finish (and slow other users down).  Please
   be sure that this is what you want to do, or at least select a limited number of
   objects to return.
        <p>
        <hr>
        <p>
            <a name= "SpectroscopyConstraints">
        <h3>
            Spectroscopy Constraints 
        </h3>
        </a>
        <p>
Which spectroscopic constraints (if any) do you want applied to your query?

        <hr>
        <p>
            <a name= "Redshift">
        <h3>
            Redshift 
        </h3>
        </a>
        <p>
Do you want to search over a given range in redshift?
        <p>
Redshifts less than zero are possible (e.g., for stars), as are
redshifts greater than 5 (some QSOs, but also objects with poorly
measured redshifts).  The "Redshift warning flags" toggle allows
you to remove the constraint that there should be no redshift warnings
(default).  Uncheck this if you want to allow spectra that have 
redshifts with warnings associated with them.  The warning flags 
are encoded as bits in the <a
href="<%=globals.SdssUrl%>algorithms/bitmask_zwarning.php">zWarning column in
the SpecObjAll table</a>.


        <hr>
        <p>
            <a name= "SpectralClassification">
        <h3>
            Spectral Classification 
        </h3>
        </a>
        <p>
What type of objects (as automatically classified by their spectra) do
you want returned from your query?
        <p>
The options are:
<%
    showEnumQS(oConn, "class");
%>

        <hr>
        <p>
            <a name= "Primtarget">
        <h3>
            Primtarget 
        </h3>
        </a>
        <p>
Which type of objects do you want returned from your query? (Here, the
object type is from the spectroscopic target selection algorithms, where
the objects have been classified photometrically or by matchup with
other catalogs.) (primary target categories)
        <p>
The primTarget field is a bit mask specifying which primary target categories the object was selected in.  If you select 
one or more bits in the <b>At least one of these bits ON</b> menu, then the <u>bit-wise OR</u> of each of those bits is 
computed and it must be <u>greater than 0</u>.  If you select one or more of the bits in the 
            <b>All of these bits OFF</b> menu, 
then the <u>bit-wise AND</u> of all those bits is computed and it must be <u>equal to 0</u>.
        <p>
            The bits are defined as:
<%
    showEnumQS(oConn, "PrimTarget");
%>

        <hr>
        <p>
            <a name= "Sectarget">
        <h3>
            Sectarget 
        </h3>
        </a>
        <p>
Which type of objects do you want returned from your query? (Here, the
object type is from the spectroscopic target selection algorithms, where
the objects have been classified photometrically or by matchup with
other catalogs.) (secondary target categories)
        <p>
The secTarget field is a bit mask specifying which primary target categories the object was selected in.  If you select 
one or more bits in the <b>At least one of these bits ON</b> menu, then the <u>bit-wise OR</u> of each of those bits is 
computed and it must be <u>greater than 0</u>.  If you select one or more of the bits in the 
            <b>All of these bits OFF</b> menu, 
then the <u>bit-wise AND</u> of all those bits is computed and it must be <u>equal to 0</u>.
        <p>
            The bits are defined as:
<%
    showEnumQS(oConn, "SecTarget");
%>

        <hr>
        <p>
            <a name= "BossTarget">
        <h3>
            BossTarget
        </h3>
        </a>
The boss_target1 field is a bit mask specifying which BOSS target categories the object was selected in.  If you select 
one or more bits in the <b>At least one of these bits ON</b> menu, then the <u>bit-wise OR</u> of each of those bits is 
computed and it must be <u>greater than 0</u>.  If you select one or more of the bits in the 
            <b>All of these bits OFF</b> menu, 
then the <u>bit-wise AND</u> of all those bits is computed and it must be <u>equal to 0</u>.
        <p>
            The bits are defined as:
<%
      showEnumQS(oConn, "BossTarget1");
%>

        <hr>
        <p>
            <a name= "EbossTarget">
        <h3>
           EbossTarget
        </h3>
        </a>
The eboss_target0 field is a bit mask specifying which EBOSS target categories the object was selected in.  If you select 
one or more bits in the <b>At least one of these bits ON</b> menu, then the <u>bit-wise OR</u> of each of those bits is 
computed and it must be <u>greater than 0</u>.  If you select one or more of the bits in the 
            <b>All of these bits OFF</b> menu, 
then the <u>bit-wise AND</u> of all those bits is computed and it must be <u>equal to 0</u>.
        <p>
            The bits are defined as:
<%
      showEnumQS(oConn, "EbossTarget0");
%>


        <hr>
        <p>
            <a name= "ImagingConstraints">
        <h3>
            Imaging Constraints 
        </h3>
        </a>
        <p>
Which imaging constraints (if any) do you want applied to your query?
        <p>
        <hr>
        <p>
            <a name= "SkyVersion">
        <h3>
            Sky Version 
        </h3>
        </a>You may constrain your search using either the values of the imaging
parameters used in spectroscopic target selection ("Target") or the
"latest and greatest" values of the imaging parameters ("Best").

See also the <a href="glossary.aspx">glossary</a> item for 
        <a href="glossary.aspx?search=skyversion">Sky Version
</a>.


        <hr>
        <p>
            <a name= "MagnitudeType">
        <h3>
            Magnitude Type 
        </h3>
        </a>Further, your may constrain your search using either:
        <ol>
            <li><a href="glossary.aspx?search=mag_petro">Petrosian magnitudes</a> and colors, 
            </li>
            <li><a href="glossary.aspx?search=mag_psf">PSF magnitudes</a> and colors, or </li>
            <li><a href="glossary.aspx?search=mag_model">model magnitudes</a> and colors. 
            </li>
        </ol>
        <b>Important</b>: Please read the documentation on  
        <a href="http://www.sdss.org/<%=globals.Release.ToLower()%>/algorithms/photometry.html#which_mags">"Which magnitude should I use?"</a>
        <hr>
        <p>
            <a name= "Magnitudes">
        <h3>
            Magnitudes 
        </h3>
        </a>
        <p>
Do you want to search over given range in u, g, r, i, and/or z
magnitudes?


        <hr>
        <p>
            <a name= "Colors">
        <h3>
            Colors 
        </h3>
        </a>
        <p>
Do you want to search over given range in u-g, g-r, r-i, and/or i-z
colors?


        <hr>
        <p>
            <a name= "ObjectType">
        <h3>
            Object Type 
        </h3>
        </a>
        <p>
Which type of objects do you want returned from your query? (Here, the
object type is the classification from the photometric pipeline, and are
based upon how well an object matches a stellar, de Vaucouleurs, or
exponential profile.)
        <p>
The object types are:
        <ul>
            <li>Extended Sources (e.g., galaxies) </li>
            <li>Point Sources (e.g., stars, QSOs) </li>
            <li>Sky Fibers (sky) </li>
            <li>Unknown (?) </li>
        </ul>
        <hr>
        <p>
            <a name= "Score">
        <h3>
            Photometric Quality 
        </h3>
        </a>
        <p>
You can restrict the search to objects that have minimum photometric quality
as determined by the <i>score</i> column in the 
            <a href="<%=url%>/help/browser/browser.aspx?cmd=description+PhotoObjAll+U">PhotoObjAll table</a>.
The possible values of <i>score</i> are 0 and 1 (0=BAD, 1=ACCEPTABLE).  Independently of this
constraint, you may also opt to return the <i>score</i> value from the PhotoObjAll table for each object in your search, by checking the
"Return value" checkbox.  If no value is entered in the "Match Score" box, no quality constraint will be applied but the 
            <i>score</i>
will still be returned with your query results.

        <hr>
        <p>
            <a name= "objFlags">
        <h3>
            Photo Flags 
        </h3>
        </a>
        <p>
Which set of object flags (from photo) do wish to query on?
        <p>
These flags are discussed in more detail in the document  
            <a href="http://www.sdss.org/<%=globals.Release.ToLower()%>/products/catalogs/flags.html">"Understanding
the SDSS Image Data Processing Flags"</a>.
        <p>
Photo flags can be set (ON) or (OFF).  If you select one or more flags in the <b>At least one of these flags ON</b> menu, then
the <u>bit-wise OR</u> of each of those flag bits is computed and it must be <u>greater than 0</u>.  If you select one
or more of the flags in the <b>All of these flags OFF</b> menu, then the <u>bit-wise AND</u> of all those flag bits is computed and
it must be <u>equal to 0</u>.
        <p>
The object photo flags are:<br>
<%
    showEnumQS(oConn, "PhotoFlags");
  }
%>

  </div>
</asp:Content>