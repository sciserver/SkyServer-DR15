<%@ Page Title="" Language="C#" MasterPageFile="~/en/tools/ToolsMaster.master" AutoEventWireup="true" CodeBehind="CrossId.aspx.cs" Inherits="SkyServer.Tools.CrossId.CrossId" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">

<script type="text/javascript">
//window.onload = alert('OK');


function goToWindow() {
        var w = window.open("", 'search');
        w.focus();

}


function disableFields(photo,spectro,apogee) {
	document.getElementById("photoScope1").disabled = photo;
	document.getElementById("photoScope2").disabled = photo;
	document.getElementById("photoScope3").disabled = photo;
	document.getElementById("photoScope4").disabled = photo;
	document.getElementById("photoUpType1").disabled = photo;
	document.getElementById("photoUpType2").disabled = photo;
	document.getElementById("joinSpec").disabled = photo;
	
  document.getElementById("spectroScope1").disabled = spectro;
	document.getElementById("spectroScope2").disabled = spectro;
	document.getElementById("spectroScope3").disabled = spectro;
	document.getElementById("spectroScope4").disabled = spectro;
	document.getElementById("spectroUpType1").disabled = spectro;
	document.getElementById("spectroUpType2").disabled = spectro;
	document.getElementById("joinPhoto").disabled = spectro;
  
  document.getElementById("apogeeScope1").disabled = apogee;
  /*
	document.getElementById("apogeeScope2").disabled = apogee;
	document.getElementById("apogeeScope3").disabled = apogee;
	document.getElementById("apogeeScope4").disabled = apogee;
  */
	document.getElementById("apogeeUpType1").disabled = apogee;
  document.getElementById("apogeeUpType2").disabled = apogee;

	if( photo==false ) {
		document.getElementById("radius").disabled = document.getElementById("photoUpType2").checked;
		if( document.getElementById("photoUpType1").checked == true ) {
			doRaDecSample(<%=uploadRA1%>,<%=uploadDec1%>,<%=uploadRA2%>,<%=uploadDec2%>,<%=uploadRA3%>,<%=uploadDec3%>,<%=uploadRA4%>,<%=uploadDec4%>);
			doPhotoQuery( document.crossid.joinSpec.checked, false );
		} else {
			doSdssIdSample();
			doPhotoQuery( document.crossid.joinSpec.checked, true );
		}
  }
	if( spectro==false ) {
			document.getElementById("radius").disabled = document.getElementById("spectroUpType2").checked;
			if( document.getElementById("spectroUpType1").checked == true ) {
				doRaDecSample(<%=uploadRA1%>,<%=uploadDec1%>,<%=uploadRA2%>,<%=uploadDec2%>,<%=uploadRA3%>,<%=uploadDec3%>,<%=uploadRA4%>,<%=uploadDec4%>);
				doSpecQuery( document.crossid.joinPhoto.checked, false );
			} else {
				doPmfSample();
				doSpecQuery( document.crossid.joinPhoto.checked, true );
			}
  }
	if ( apogee==false ) {
  		document.getElementById("radius").disabled = false;
		  doRaDecSample(<%=uploadRA1%>,<%=uploadDec1%>,<%=uploadRA2%>,<%=uploadDec2%>,<%=uploadRA3%>,<%=uploadDec3%>,<%=uploadRA4%>,<%=uploadDec4%>);
			doApogeeQuery();
  }

//	document.getElementById("radius").focus();
	return true;
}


function doPhotoQuery(join, sdssId) {
	var joinClause, selectClause;
	selectClause = "SELECT \n   p.objID, p.ra, p.dec, p.run, p.rerun, p.camcol, p.field,\n" +
		"   dbo.fPhotoTypeN(p.type) as type,\n" +
		"   p.modelMag_u, p.modelMag_g, p.modelMag_r, p.modelMag_i, p.modelMag_z";
	joinClause = "      JOIN #x x ON x.up_id = u.up_id\n      JOIN PhotoTag p ON p.objID = x.objID\n";
	if( join ) {
		joinClause += "      JOIN SpecObjAll s ON p.objID = s.bestObjID\n";
		selectClause += ",\n   s.specObjID, s.plate, s.mjd, s.fiberID, s.z";
	}
	document.crossid.uquery.value = selectClause +
		"\nFROM #upload u\n" + joinClause +
		"ORDER by x.up_id\n";
}

function doSpecQuery(join, pmf) {
	var joinClause, selectClause;
	selectClause = "SELECT s.specobjid, s.ra, s.dec, s.plate, s.mjd, s.fiberid";
	if( pmf==true )
		joinClause = "      JOIN SpecObjAll s ON (s.plate=u.up_plate AND s.mjd=u.up_mjd AND s.fiberID=u.up_fiber)\n";
	else
		joinClause = "      JOIN #x x ON x.up_id = u.up_id\n      JOIN SpecObjAll s ON s.specObjID = x.specObjID\n";
	if( join ) {
		joinClause += "      JOIN PhotoTag p ON p.objID = s.bestObjID\n";
		selectClause += ",\n p.objID, p.run, p.rerun, p.camcol, p.field";
	}
	document.crossid.uquery.value = selectClause + "\nFROM #upload u\n" + joinClause;
}

function doApogeeQuery() {
	var joinClause, selectClause;
  selectClause = "SELECT s.*";
  joinClause = "      JOIN #x x ON x.up_id = u.up_id\n      JOIN apogeestar s ON s.apstar_id = x.apstar_id\n";
	document.crossid.uquery.value = selectClause + "\nFROM #upload u\n" + joinClause;
}

function photoQuery() {
	if( document.getElementById("photoUpType1").checked == true ) 
		doPhotoQuery( document.crossid.joinSpec.checked, false );
	else
		doPhotoQuery( document.crossid.joinSpec.checked, true );
}

function specQuery() {
	if( document.getElementById("spectroUpType1").checked == true ) 
		doSpecQuery( document.crossid.joinPhoto.checked, false );
	else
		doSpecQuery( document.crossid.joinPhoto.checked, true );
}

function apogeeQuery() {
  doApogeeQuery();
}

function doRaDecSample(upRA1,upDec1,upRA2,upDec2,upRA3,upDec3,upRA4,upDec4) {
	document.getElementById("paste").value = "  name  ra         dec\n  A1    "+upRA1+"       "+upDec1+"\n  A2    "+
		upRA2+"       "+upDec2+"\n  A3    "+upRA3+"       "+upDec3+"\n  A4    "+upRA4+"    "+upDec4+"\n";
//document.getElementById("paste").focus();
	document.getElementById("radius").disabled = false;
	
  if( document.getElementById("searchType1").checked==true ) {
		document.getElementById("photoScope1").disabled = false;
		document.getElementById("photoScope2").disabled = false;
		document.getElementById("photoScope3").disabled = false;
		document.getElementById("photoScope4").disabled = false;
		photoQuery();
	} else if ( document.getElementById("searchType2").checked==true ) {
		document.getElementById("spectroScope1").disabled = false;
		document.getElementById("spectroScope2").disabled = false;
		document.getElementById("spectroScope3").disabled = false;
		document.getElementById("spectroScope4").disabled = false;
		specQuery();
	} else if ( document.getElementById("searchType3").checked==true ) {
		/*
    document.getElementById("apogeeScope1").disabled = false;
		document.getElementById("apogeeScope2").disabled = false;
		document.getElementById("apogeeScope3").disabled = false;
		document.getElementById("apogeeScope4").disabled = false;
    */
		apogeeQuery();
	}

	document.getElementById("firstcol").value = "1";
}

function doLBSample() {
  document.getElementById("paste").value = "l          b\n58.92724   40.46582\n"
  document.getElementById("firstcol").value = "0";
}

function doSdssIdSample() {
	document.getElementById("paste").value = "<%=crossidSample%>";
//document.getElementById("paste").focus();
	document.getElementById("radius").disabled = true;
//document.getElementById("radius").focus();
	document.getElementById("photoScope1").disabled = true;
	document.getElementById("photoScope2").disabled = true;
	document.getElementById("photoScope3").disabled = true;
	document.getElementById("photoScope4").disabled = true;
	document.getElementById("firstcol").value = "0";
	photoQuery();
}

function doPmfSample() {
	document.getElementById("paste").value = " plate  mjd fiber\n 272  51941 368\n 287  52023 582\n 288  52000 446\n";
//document.getElementById("paste").focus();
	document.getElementById("radius").disabled = true;
//document.getElementById("radius").focus();
	document.getElementById("spectroScope1").disabled = true;
	document.getElementById("spectroScope2").disabled = true;
	document.getElementById("spectroScope3").disabled = true;
	document.getElementById("spectroScope4").disabled = true;
	document.getElementById("firstcol").value = "0";
	specQuery();
}
function resetRadio() {
  var photo = !document.getElementById("searchType1").checked;
  var spectro = !document.getElementById("searchType2").checked;
  var apogee = !document.getElementById("searchType3").checked;

  document.getElementById("photoScope1").disabled = photo;
	document.getElementById("photoScope2").disabled = photo;
	document.getElementById("photoScope3").disabled = photo;
	document.getElementById("photoScope4").disabled = photo;
	document.getElementById("photoUpType1").disabled = photo;
	document.getElementById("photoUpType2").disabled = photo;
	document.getElementById("joinSpec").disabled = photo;
	
  document.getElementById("spectroScope1").disabled = spectro;
	document.getElementById("spectroScope2").disabled = spectro;
	document.getElementById("spectroScope3").disabled = spectro;
	document.getElementById("spectroScope4").disabled = spectro;
	document.getElementById("spectroUpType1").disabled = spectro;
	document.getElementById("spectroUpType2").disabled = spectro;
	document.getElementById("joinPhoto").disabled = spectro;
  
  document.getElementById("apogeeScope1").disabled = apogee;
  /*
	document.getElementById("apogeeScope2").disabled = apogee;
	document.getElementById("apogeeScope3").disabled = apogee;
	document.getElementById("apogeeScope4").disabled = apogee;
  */
	document.getElementById("apogeeUpType1").disabled = apogee;
  document.getElementById("apogeeUpType2").disabled = apogee;
}

</script>

<style type="text/css">
	td,p	{font-size:9pt; color:#000000}
	.tiny	{font-size:8pt; color:#000000}
	.med	{font-size:9pt; color:#000000}
	.qtitle {font-size:10pt;color:#ffffff;font-weight:bold;}
	.q	{font-size:8pt; background-color:#dddddd}
	.frame	{background-color:#aaaaaa;}
	a	{color:#000080;font-weight:normal;}
	.pos	{width:66px}
	.mag	{width:56px}
	.name	{width:200px}
	.txt	{width:260px}
</style>

<div id="title">SDSS CrossID for <%=globals.Release%>&nbsp;&nbsp;&nbsp;&nbsp;
<span class='frame'><font size=-1><a class="qtitle" href="#help">Scroll down for Help</a></font></span></div>

<div id="transp">
<FORM METHOD="post" ENCTYPE="multipart/form-data" ACTION="../search/X_Results.aspx" id="crossid" name="crossid" target="search">

<input type="hidden" name="searchtool" id="searchtool" value="CrossID" />
<input type="hidden" name="TaskName" id="TaskName" value="Skyserver.CrossId"/>
<input type="hidden" name="ReturnHtml" id="ReturnHtml" value="true" />

<table BORDER=1 WIDTH=540 cellpadding=3 cellspacing=3 BGCOLOR="#aaaaaa"><tr><td class="q">
<table border="0" width="100%">
	<tr>
		<td colspan="2">
		  <table BORDER=2 cellpadding=1 cellspacing=1 bgcolor=#888888>
			
      <tr ALIGN=left VALIGN=left>
			  <td class="qtitle"><a class="qtitle" href="#help" onmouseover="return escape('What type of objects do you want to search for - mages or spectra?');">Search type</a> </td>
			  <td class="qtitle"><a class="qtitle" href="#help" onmouseover="return escape('Do you want to get the nearest object or all nearby objects, and primary observations only or all?');">Search scope </a> </td>
			  <td class="qtitle"><a class="qtitle" href="#help" onmouseover="return escape('Are you uploading positions or SDSS IDs?');">Upload type </a> </td>
			  <td class="qtitle"><a class="qtitle" href="#help" onmouseover="return escape('Do you want to find spectra matching images, and vice-versa?');">JOIN with</a> </td>
			</tr>

			<tr>
			  <td class="q" width="20%">
			     <table><tr>
				<td><input id="searchType1" name="searchType" value="photo" type=radio class="box" onclick="disableFields(false,true,true);" CHECKED></td>
				<td class="q">Images<br>(PhotoObj)</td>
			     </tr></table>
			  </td>
			  <td class="q">
				<input id="photoScope1" name="photoScope" value="nearPrim" type=radio class="box" CHECKED>Nearest Primary Object</input><br>
				<input id="photoScope2" name="photoScope" value="nearObj" type=radio class="box">Nearest Object</input><br>
				<input id="photoScope3" name="photoScope" value="allPrim" type=radio class="box">All Nearby Primary Objects</input><br>
				<input id="photoScope4" name="photoScope" value="allObj" type=radio class="box">All Nearby Objects</input><br>
			  </td>
			  <td class="q">
				<input id="photoUpType1" name="photoUpType" value="ra-dec" type=radio class="box" 
					onclick="doRaDecSample(<%=uploadRA1%>,<%=uploadDec1%>,<%=uploadRA2%>,<%=uploadDec2%>,<%=uploadRA3%>,<%=uploadDec3%>,<%=uploadRA4%>,<%=uploadDec4%>);" CHECKED>RA, dec</input><br>
			  	<input id="photoUpType2" name="photoUpType" value="run-rerun" type=radio class="box" onclick="doSdssIdSample();">run-rerun-camcol-field-obj</input>
			  </td>
			  <td class="q" width="15%">
				<input id="joinSpec" name="joinSpec" type="checkbox" onclick="photoQuery()">Spectra</input>
			  </td>
			</tr>

			<tr class=q>			
			  <td class="q" width="20%">
			     <table><tr>
				<td><input id="searchType2" name="searchType" value="spectro" type="radio" class="box" onclick="disableFields(true,false,true);"></td>
				<td class="q">Spectra (SpecObj)</td>
			     </tr></table>
			  </td>
			  <td class="q">
				<input id="spectroScope1" name="spectroScope" value="nearPrim" type=radio class="box" CHECKED >Nearest Primary Spectrum</input><br>
				<input id="spectroScope2" name="spectroScope" value="nearObj" type=radio class="box" >Nearest Spectrum</input><br>
				<input id="spectroScope3" name="spectroScope" value="allPrim" type=radio class="box" >All Nearby Primary Spectra</input><br>
				<input id="spectroScope4" name="spectroScope" value="allObj" type=radio class="box" >All Nearby Spectra</input><br>
			  </td>
			  <td class="q">	
				<input id="spectroUpType1" name="spectroUpType" value="ra-dec" type=radio class="box"  
					onclick="doRaDecSample(<%=uploadRA1%>,<%=uploadDec1%>,<%=uploadRA2%>,<%=uploadDec2%>,<%=uploadRA3%>,<%=uploadDec3%>,<%=uploadRA4%>,<%=uploadDec4%>);" CHECKED>RA, dec</input><br>
				<input id="spectroUpType2" name="spectroUpType" value="plate-mjd-fiber" type=radio class="box" onclick="doPmfSample();" >plate-MJD-fiberID</input>
			  </td>
			  <td class="q" width="15%">
				<input id="joinPhoto" name="joinPhoto" type="checkbox" onclick="specQuery()" >Images</input><br>
			  </td>
			</tr>

      <tr class=q>			
			  <td class="q" width="20%">
			     <table><tr>
				<td><input id="searchType3" name="searchType" value="apogee" type="radio" class="box" onclick="disableFields(true,true,false);"></td>
				<td class="q">Infrared Spectra (apogeeStar)</td>
			     </tr></table>
			  </td>
			  <td class="q">
				<input id="apogeeScope1" name="apogeeScope" value="nearPrim" type=radio class="box" CHECKED >Nearest</input><br>
				<!--
        <input id="apogeeScope2" name="apogeeScope" value="nearObj" type=radio class="box" DISABLED>Nearest Spectrum</input><br>
				<input id="apogeeScope3" name="apogeeScope" value="allPrim" type=radio class="box" DISABLED>All Nearby Primary Spectra</input><br>
				<input id="apogeeScope4" name="apogeeScope" value="allObj" type=radio class="box" DISABLED>All Nearby Spectra</input><br>
        -->
			  </td>
			  <td class="q">	
				<input id="apogeeUpType1" name="apogeeUpType" value="ra-dec" type=radio class="box"  
					onclick="doRaDecSample(<%=uploadRA1%>,<%=uploadDec1%>,<%=uploadRA2%>,<%=uploadDec2%>,<%=uploadRA3%>,<%=uploadDec3%>,<%=uploadRA4%>,<%=uploadDec4%>);" CHECKED>Equatorial (RA/dec)</input><br />
        <input id="apogeeUpType2" name="apogeeUpType" value="l-b" type=radio class="box"  
					onclick="doLBSample();" >Galactic (L/B)</input>
			  </td>
			  <td class="q" width="15%">
			  </td>
			</tr>
        					
		  </table>
		  <script type="text/javascript">		    window.onload = resetRadio;</script>
      <table BORDER =2 WIDTH="100%" cellpadding=1 cellspacing=1 bgcolor=#aaaaaa>
			<tr ALIGN=middle VALIGN=center class=qr>
				<td class=q colspan=2>Search radius [arcmin] (<i>Max <%=crossidRadius%>.0 arcmin</i>)</td>
				<td class=q><input id=radius name=radius VALUE="0.5" SIZE="3"></td>
<!--
			</tr>
			<tr ALIGN=middle VALIGN=center class=q>
-->
				<td class=q colspan=2>Number of preceding non-data columns</td>
				<td class=q><input id=firstcol name=firstcol VALUE="1" SIZE="1"></td></tr>
		   </table>
		</td>
	</tr>

<!--
	<tr>
		<td colspan="2">&nbsp;</td>
	</tr>
-->
	<tr bgcolor="#888888">
		<td class="qtitle" width="40%"><a class="qtitle" href="#list">Cut and paste your upload list here:</a> </td>
		<td class="qtitle" width="60%"> Or upload it as text file</td>
	</tr>
	<tr>
		<td>
<%
		Response.Write("<TEXTAREA cols='40' name='paste' id='paste' rows='4' wrap='virtual' class='med'>" );
		Response.Write("  name  ra       dec\n" );
		Response.Write("  A1   "+uploadRA1+"    "+uploadDec1+"\n" );
		Response.Write("  A2   "+uploadRA2+"    "+uploadDec2+"\n" );
		Response.Write("  A3   "+uploadRA3+"    "+uploadDec3+"\n" );
		Response.Write("  A4   "+uploadRA4+"    "+uploadDec4+"\n" );
		Response.Write("</TEXTAREA>\n" );
%> 
		</td>
		<td>
			<table>
				<tr VALIGN="top">	<td>&nbsp;<INPUT TYPE="File" NAME="upload" size=32 ></td> </tr>
			</table>
		</td>
	</tr>

<!--
	<tr>
	    <td colspan="2">&nbsp;</td>
	</tr>
-->
	<tr bgcolor="#888888"><td colspan="2" class="qtitle" width="40%">
		<b>Type your <a class="qtitle" href="<%=url%>/help/docs/sql_help.aspx">SQL query</a> here (see <a class="qtitle" href="#query">below for help</a>):</b>
	    </td>
	</tr>
	<tr>
	    <td colspan="2">
		<TEXTAREA cols='85' name='uquery' rows='6' wrap='virtual' class='med'>
SELECT 
   p.objID, p.ra, p.dec, p.run, p.rerun, p.camcol, p.field,
   dbo.fPhotoTypeN(p.type) as type,
   p.modelMag_u, p.modelMag_g, p.modelMag_r, p.modelMag_i, p.modelMag_z 
FROM #upload u
      JOIN #x x ON x.up_id = u.up_id
      JOIN PhotoTag p ON p.objID = x.objID 
ORDER BY x.up_id
		</TEXTAREA> 
	    </td>
	</tr>



	<tr>
	    <td colspan="2"><table width="100%">
		<tr>
		    <td width="10%" align="left">
			<input id=submit type="submit" value="Submit" class="button" onclick="goToWindow()">
	    	    </td>
		    <td width="30%" align="center" class="q">
			<table BORDER=0 width="100%">
		  	    <tr>
				<td ALIGN=left width="5%">&nbsp;</td>
				<td ALIGN=left width="10%">Format: </td>
				<td nowrap=nowrap ALIGN=middle width="13%"><input name=format value="html" type=radio class="box" CHECKED>HTML</td>
				<td nowrap=nowrap ALIGN=middle width="13%"><input name=format value="xml"  type=radio class="box">XML</td>
				<td nowrap=nowrap ALIGN=middle width="13%"><input name=format value="csv"  type=radio class="box">CSV</td>
        <td nowrap=nowrap ALIGN=middle width="13%"><input name=format value="json"  type=radio class="box">JSON</td>
        <td nowrap=nowrap ALIGN=middle width="13%"><input name=format value="votable"  type=radio class="box">VOTable</td>
        <td nowrap=nowrap ALIGN=middle width="13%"><input name=format value="fits"  type=radio class="box">FITS</td>
        <td nowrap=nowrap ALIGN=middle width="13%" onmouseover="return escape('Executes the query and stores the result in a table in the CasJobs MyDB database. If the table name entry is empty, then a default name will be given.');"><input name=format value="mydb"  type=radio class="box"> MyDB <i><em><strong><sup><font color="red">NEW!</font></sup></strong> </em></i></td>

				<td nowrap=nowrap ALIGN=left width="5%">&nbsp;</td>
		  	    </tr>
                <tr>  
                    <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>  
                    <td nowrap class="q">Table name <input id=TableName name=TableName VALUE="" SIZE="10"></td>
                     <td></td>   </tr>

			</table>
	    	    </td>
	    	    <td width="10%" align="right">
			<input TYPE="reset" VALUE="Reset " class="button" id="reset" name="reset">
	   	    </td>
		</tr>
	    </table></td>
	</tr>

<%
	if( globals.DasUrlBase.Length > 1 ) {
		Response.Write( "\t<tr bgcolor='#888888'>\n" );
		Response.Write( "\t\t<td class='qtitle' colspan='2'>To get FITS files from the SAS, please use <a class='qtitle' href=\"#das\">upload buttons on the query results page</a>.</td>\n" );
		Response.Write( "\t</tr>\n" );
	}
%>

	<tr VALIGN=top><td class='frame' colspan="2">
  	<a name="help"></a><h4> CrossID Help</h4>
	This page is for dynamic cross identifications of SDSS objects with a
	user defined list of object positions, 5-part SDSS object ID (consisting of 
	<i>run</i>,<i>rerun</i>,<i>camcol</i>,<i>field</i>,<i>obj</i>) for photometric objects, 
	or 3-part SDSS spectroscopic object ID (consisting of <i>plate</i>, <i>MJD</i> and <i>fiber</i>.
	You can even join a photometric object list with matching spectra (SpecObj) if you want 
	spectroscopic information, or join a spectroscopic object list with matching photometric objects.
	Just check the appropriate "JOIN with" box to return the matching objects.   You will see the default
	query in the query window changing accordingly.
	<p>
  <!--
	In order to avoid congestion on the server, the upload file is limited to a size of <u>80KB</u>, and the
	radius (for RA/dec search) is limited to <u><%=crossidRadius%> arcmin</u>.  The crossid search will time out 
	after <u><%=crossidTimeout%> secs</u>, and the output data set can not exceed <u><%=rowLimit%> 
	objects</u>. 
	Please see the <a href="<%=url%>/help/docs/limits.aspx">Query Limits page</a>.  If this is a 
	problem, please submit your list in pieces. 
  -->
  For this browser-based synchronous cross-ID service, the upload file is limited to <u>1000 rows</u> and 
  the output is limited to <u><%=rowLimit%> rows</u> to ensure that the results are returned in a timely 
  manner. For larger uploads, please use the asynchronous CasJobs service (see the Help page for Advanced 
  Queries under Nearest Neighbor Searches (Cross-ID)).
  
	<a name="list"></a><h5>Upload list format:</h5>
	You have the following choices:
	<ol>
		<li> <b>List of (ra,dec) pairs or list of objIDs (run,rerun,camcol,field,obj)</b><br>
			Always <i>ra</i> comes first, followed by <i>dec</i>. Both ra and dec must be in 
			degrees. The separator can be any white space or a comma.  
			The objIDs must be the 5-part SDSS identifiers, i.e. <i>run</i>, <i>rerun</i>, 
			<i>camcol</i>, <i>field</i> and <i>obj</i> numbers, <u>not</u> the long 64-bit objIDs.
		<li> <b>List of preceding non-data fields followed by (ra,dec) or (run,rerun,camcol,field,obj) data fields</b><br> 
			The fields must always be in this order. The preceding columns can be any fields that
			you want repeated in the output.  The number of preceding columns must be specified in
			the second parameter above.  The default example shows one preceding column ("name"). 
			Both ra and dec must be in degrees. The separator can be any white space or a comma.
		<li> <b>Same as above, with a single header line</b><br>
			The formats (1) and (2) can also contain a single header line,
			containing the column names. The header must use the same separator as the data. 
			The names <i>ra</i> and <i>dec</i> or <i>run</i>,<i>rerun</i>,<i>camcol</i>,<i>field</i> and
			<i>obj</i> are mandatory.
		<li> <b> Lists in the IRSA <i>Gator</i> format</b><br>
			For details see the IRSA website.
	</ol>
	You need to either cut/paste the list into the textbox, or upload a text file. Various
	extensions (.txt, .dat, .csv, .tbl) are allowed, as long as the MIME type does not get confused.
	Binary files are not accepted.
	<p>
	If both the paste buffer and file upload are specified, the file upload takes precedence.

	<a name="query"></a><h5>Setting up query in the query window:</h5>
	Add or remove fields that you want returned from the SELECT list, and add more constraints to the WHERE 
	clause if you desire (preceded with a boolean operator).  If your query does not include a p.objID field in 
	the SELECT for a photometric object list, it will be added for you, because the matching with the upload 
	list is done based on objID.  You may also replace PhotoTag with Galaxy, Star, or <a href="<%=url%>/help/docs/intro.aspx#phototables">any other 
	photo view or table</a> if you want to restrict the kind of object that is matched.  Remember that PhotoTag 
	will be the fastest usually because it is a thin table (more rows fit in the cache), so unless you need the 
	fields from larger tables, use PhotoTag (with a mode or type constraint if necessary).  Make sure the photo 
	table/view is aliased as 'p'.  Similarly you can replace SpecObjAll with SpecObj as applicable.
	<br><u>Do not modify the #x and #upload parts of the FROM clause otherwise your upload will 
	not work</u>.
	<p>
	If you have a header row with the column names, the #upload temp table created for you on the server will 
	have the corresponding column names with a "up_" prefix, e.g., <i>up_name</i>, <i>up_ra</i>, etc.   You can
	then refer to these columns as "u.<column-name>" in your modified query.
<%
	if( globals.DasUrlBase.Length > 1 ) {
		Response.Write( "<a name=\"das\"></a><h5>Getting FITS files from the SAS</h5>\n" );
		Response.Write( "<p>If <i>run</i>, <i>rerun</i>, <i>camcol</i> and <i>field</i> columns are included in the imaging columns list, a button will be included on the\n" );
		Response.Write( "query results page to upload the list of fields to the SAS for FITS file retrieval.  If spectra are included and\n" );
		Response.Write( "the SELECT list includes the columns <i>plate</i>, <i>mjd</i> and <i>fiber</i>, a button will also be included on the results page to upload\n" );
		Response.Write( "the spectra list to the SAS to retrieve FITS spectra. The default queries include these columns for your convenience.\n" );
	}
%>

	<p><hr>
	<p><b>The CrossID query is limited to <%=crossidTimeout%> seconds and <%=rowLimit%> rows.
	Please see the <a href="<%=url%>/help/docs/limits.aspx">Query Limits page</a></b>.
	<br>&nbsp;<br>
	</td></tr>
</table>
</td></tr></table>
</form>
</div>
</asp:Content>
