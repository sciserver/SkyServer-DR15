<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Radial.aspx.cs" Inherits="SkyServer.Tools.Search.Radial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">

<style type="text/css">
	td,p	{font-size:9pt; color:#000000}
	.tiny	{font-size:8pt; color:#000000}
	.med	{font-size:9pt; color:#000000}
	.qtitle {font-size:10pt;color:#ffffff;font-weight:bold;}
	.q	{font-size:9pt; background-color:#dddddd}
	.frame	{background-color:#bbbbbb;}
	a		{color:#000088;font-weight:normal;}
	.pos	{width:66px}
	.mag	{width:56px}
	.name	{width:200px}
	.txt	{width:260px}
</style>

<div id="title">Radial Search</div>

<div id="transp">
<%--<%
// Pop up results in a new window for public site only.
if( globals.Access == "public" ) {
%>
    <form method="get" target="search" action="x_radial.aspx" id="radial" name="radial">
<%
} else {
%>
    <form method="get" action="x_radial.aspx" id="radial" name="radial">
<%
}
%>--%>

<%
// Pop up results in a new window for public site only.
if( globals.Access == "public" ) {
%>
    <form method="get" target="search" action="x_results.aspx" id="radial" name="radial">
<%
} else {
%>
    <form method="get" action="x_results.aspx" id="Form1" name="radial">
<%
}
%>

<script language="javascript" src="validate_search.js"></script>


<script type="text/javascript">

    var changed_u = false
    var RecentlyUnclicked_g = false
    var RecentlyUnclicked_r = false
    var RecentlyUnclicked_i = false
    var RecentlyUnclicked_z = false
    var RecentlyUnclicked_j = false
    var RecentlyUnclicked_h = false
    var RecentlyUnclicked_k = false


    window.onload = function page_load() {
        document.getElementById('ra').value = "258.25";
        document.getElementById('dec').value = "64.05";
        document.getElementById('radius').value = "3";
        document.getElementById('labelRaOrL').innerHTML = "RA"; // give RA/Dec option by default
        document.getElementById('labelDecOrB').innerHTML = "Dec"; // give RA/Dec option by default
    }





    function changeSearchType(newtype) {

        if (newtype == 'galactic')
        {
            if (isNumeric(document.getElementById('ra').value) && isNumeric(document.getElementById('dec').value)) {
                var glon = ra2glon(document.getElementById('ra').value, document.getElementById('dec').value);
                var glat = dec2glat(document.getElementById('ra').value, document.getElementById('dec').value); 
                document.getElementById('ra').value = glon;
                document.getElementById('dec').value = glat;
                document.getElementById('labelRaOrL').innerHTML = "Galactic Longitude (<i>l</i>)";
                document.getElementById('labelDecOrB').innerHTML = "Galactic Latitude (<i>b</i>)";
            } else {
                alert('You entered non-numeric values. Using default values instead.')
                document.getElementById('coordtype_equatorial').checked = true;
                document.getElementById('coordtype_galactic').checked = false;
                //document.getElementById('ra').value = "10";
                //document.getElementById('dec').value = "0.2";
            }
        }
        else
        {
            if (isNumeric(document.getElementById('ra').value) && isNumeric(document.getElementById('dec').value)) {
                var ra = glon2ra(document.getElementById('ra').value, document.getElementById('dec').value);
                var dec = glat2dec(document.getElementById('ra').value, document.getElementById('dec').value);
                document.getElementById('ra').value = ra;
                document.getElementById('dec').value = dec;
                document.getElementById('labelRaOrL').innerHTML = "RA";
                document.getElementById('labelDecOrB').innerHTML = "Dec";
            } else {
                alert('You entered non-numeric values. Using default values instead.')
                document.getElementById('coordtype_equatorial').checked = false;
                document.getElementById('coordtype_galactic').checked = true;
                //document.getElementById('ra').value = "258.25";
                //document.getElementById('dec').value = "64.05";
            }
        }
        
    } 

    function changeQueryType(newtype) {

        if (newtype == 'optical') {
            hideLink('InfraredMagnitudesConstraints')
            showLink('VisibleMagnitudesConstraints')
            this.InfraredMagnitudesConstraints.disabled = true
            this.VisibleMagnitudesConstraints.disabled = false
        }
        else {
            hideLink('VisibleMagnitudesConstraints')
            showLink('InfraredMagnitudesConstraints')
            this.InfraredMagnitudesConstraints.disabled = false
            this.VisibleMagnitudesConstraints.disabled = true
        }
    }

    function showLink(thelink) {
        document.getElementById(thelink).style.display = "inline";
    }
    function hideLink(thelink) {
        document.getElementById(thelink).style.display = "none";
    }

    function goToWindow() {
        var w = window.open("", 'search');
        w.focus();

    }

    function SetBands() {
        if (document.getElementById('check_u').checked == true) { var hmin_s = String(document.getElementById('min_u').value); var hmax_s = String(document.getElementById('max_u').value); document.getElementById('uband').value = hmin_s + "," + hmax_s; }
        if (document.getElementById('check_g').checked == true) { var hmin_s = String(document.getElementById('min_g').value); var hmax_s = String(document.getElementById('max_g').value); document.getElementById('gband').value = hmin_s + "," + hmax_s; }
        if (document.getElementById('check_r').checked == true) { var hmin_s = String(document.getElementById('min_r').value); var hmax_s = String(document.getElementById('max_r').value); document.getElementById('rband').value = hmin_s + "," + hmax_s; }
        if (document.getElementById('check_i').checked == true) { var hmin_s = String(document.getElementById('min_i').value); var hmax_s = String(document.getElementById('max_i').value); document.getElementById('iband').value = hmin_s + "," + hmax_s; }
        if (document.getElementById('check_z').checked == true) { var hmin_s = String(document.getElementById('min_z').value); var hmax_s = String(document.getElementById('max_z').value); document.getElementById('zband').value = hmin_s + "," + hmax_s; }
        if (document.getElementById('check_j').checked == true) { var hmin_s = String(document.getElementById('min_j').value); var hmax_s = String(document.getElementById('max_j').value); document.getElementById('jband').value = hmin_s + "," + hmax_s; }
        if (document.getElementById('check_h').checked == true) { var hmin_s = String(document.getElementById('min_h').value); var hmax_s = String(document.getElementById('max_h').value); document.getElementById('hband').value = hmin_s + "," + hmax_s; }
        if (document.getElementById('check_k').checked == true) { var hmin_s = String(document.getElementById('min_k').value); var hmax_s = String(document.getElementById('max_k').value); document.getElementById('kband').value = hmin_s + "," + hmax_s; }
    }


</script>
<input type="hidden" name="searchtool" id="searchtool" value="Radial" />
<input type="hidden" id=uband name=uband />
<input type="hidden" id=gband name=gband />
<input type="hidden" id=rband name=rband />
<input type="hidden" id=iband name=iband />
<input type="hidden" id=zband name=zband />
<input type="hidden" id=jband name=jband />
<input type="hidden" id=hband name=hband />
<input type="hidden" id=kband name=kband />

<input type="hidden" name="TaskName" id="TaskName" value="Skyserver.Search.Radial"/>
<input type="hidden" name="ReturnHtml" id="ReturnHtml" value="true" />

<table BORDER=0 WIDTH="600"  BGCOLOR="#aaaaaa" >
	<tr><td class="frame">
	NOTE: To be fair to other users, queries run from SkyServer search
	tools are restricted in how long they can run and how much output they
	return, by <b>timeouts</b> and <b>row limits</b>.  Please see the <a
	href="<%=url%>/help/docs/limits.aspx">Query Limits help page.</a>
<%
	if( globals.ReleaseNumber > 1 ) {
%>
		To run a query that is not restricted by a timeout or number of rows returned, 
		please use the <a href="<%= globals.CasJobs%>">CasJobs batch query service.</a>
<%
	}
%>
    </td></tr>
	<tr VALIGN=top><td ALIGN=middle class="frame">
		<table BORDER =2 COLS=2 WIDTH="100%" BGCOLOR="#aaaaaa" cellpadding=1 cellspacing=1>

<%
	if( globals.ReleaseNumber > 9 ) {
%>
			<tr ALIGN=middle VALIGN=center>
                <td width="30%" class="qtitle">Type of search</td>
                <td WIDTH="70%" class="q">
                    <input type="radio" name="whichphotometry" value="optical" onclick="javascript:changeQueryType('optical');" checked />Optical bands&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="whichphotometry" value="infrared" onclick="javascript:changeQueryType('infrared');" />Infrared bands&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
			</tr>

<%
}
%>
			<tr ALIGN=middle VALIGN=center>
                <td width="30%" class="qtitle">Coordinate System</td>
                <td WIDTH="70%" class="q">
                    <input type="radio" name="coordtype" id="coordtype_equatorial" value="equatorial" onclick="javascript:changeSearchType('equatorial');" checked />Equatorial ( RA / Dec )&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="coordtype" id="coordtype_galactic" value="galactic" onclick="javascript:changeSearchType('galactic');" />Galactic ( <i>l</i> / <i>b</i> )&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
			</tr>

            <tr ALIGN=middle VALIGN=center>
				<td WIDTH="30%" class="qtitle"><asp:Label ID="labelRaOrL"></asp:Label></td>
				<td WIDTH="70%" class="q"><input id="ra" name="ra" SIZE="20" value="258.25"></td></tr>
			<tr ALIGN=middle VALIGN=center>
				<td WIDTH="30%" class="qtitle"><asp:Label ID="labelDecOrB"></asp:Label></td>
				<td class="q"><input id=dec name=dec VALUE="64.05" SIZE="20"></td></tr>
			<tr ALIGN=middle VALIGN=center>
				<td class="qtitle">radius [arcmins]</td>
				<td class="q"><input id=radius name=radius VALUE="<%=searchRad%>" SIZE="20"></td></tr>
		</table>
	</td></tr>


	<tr VALIGN=top><td ALIGN=middle id="VisibleMagnitudesConstraints">
<table BORDER=2 WIDTH="100%" BGCOLOR="#aaaaaa" cellpadding=1 cellspacing=1>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle">&nbsp;</td>
  <td class="qtitle">Min</td>
  <td class="qtitle">&nbsp;</td>
  <td class="qtitle">Max</td>
  </tr>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle"><input id=check_u name=check_u type=checkbox class="box" value=u ></td>
  <td class="q"><input TYPE="FLOAT" id="min_u" NAME="min_u" VALUE="0" SIZE="5"  onblur="javascript:document.getElementById('check_u').checked = true"  ></td>
  <td class="qtitle">u</td>
  <td class="q"><input TYPE="FLOAT" id="max_u" NAME="max_u" VALUE="20" SIZE="5"  onblur="javascript:document.getElementById('check_u').checked = true" ></td>
  </tr>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle"><input id=check_g name=check_g type=checkbox class="box" value=g ></td>
  <td class="q"><input TYPE="FLOAT" id="min_g" NAME="min_g" VALUE="0" SIZE="5" onblur="javascript:document.getElementById('check_g').checked = true"></td>
  <td class="qtitle">g</td>
  <td class="q"><input TYPE="FLOAT" id="max_g" NAME="max_g" VALUE="20" SIZE="5" onblur="javascript:document.getElementById('check_g').checked = true"></td>
  </tr>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle"><input id=check_r name=check_r type=checkbox class="box" value=r ></td>
  <td class="q"><input TYPE="FLOAT" id="min_r" NAME="min_r" VALUE="0" SIZE="5" onblur="javascript:document.getElementById('check_r').checked = true"></td>
  <td class="qtitle">r</td>
  <td class="q"><input TYPE="FLOAT" id="max_r" NAME="max_r" VALUE="20" SIZE="5" onblur="javascript:document.getElementById('check_r').checked = true"></td>
  </tr>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle"><input id=check_i name=check_i type=checkbox class="box" value=i ></td>
  <td class="q"><input TYPE="FLOAT" id="min_i" NAME="min_i" VALUE="0" SIZE="5" onblur="javascript:document.getElementById('check_i').checked = true"></td>
  <td class="qtitle">i</td>
  <td class="q"><input TYPE="FLOAT" id="max_i" NAME="max_i" VALUE="20" SIZE="5" onblur="javascript:document.getElementById('check_i').checked = true"></td>
  </tr>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle"><input id=check_z name=check_z type=checkbox class="box" value=z ></td>
  <td class="q"><input TYPE="FLOAT" id="min_z" NAME="min_z" VALUE="0" SIZE="5" onblur="javascript:document.getElementById('check_z').checked = true"></td>
  <td class="qtitle">z</td>
  <td class="q"><input TYPE="FLOAT" id="max_z" NAME="max_z" VALUE="20" SIZE="5" onblur="javascript:document.getElementById('check_z').checked = true"></td>
  </tr>
</table>
	</td></tr>

<%
	if( globals.ReleaseNumber > 9 ) {
%>

	<tr VALIGN=top><td ALIGN=middle id="InfraredMagnitudesConstraints" style="display:none">
<table BORDER=2 WIDTH="100%" BGCOLOR="#aaaaaa" cellpadding=1 cellspacing=1>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle">&nbsp;</td>
  <td class="qtitle">Min</td>
  <td class="qtitle">&nbsp;</td>
  <td class="qtitle">Max</td>
  </tr>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle"><input id=check_j name=check_j type=checkbox class="box" value=j ></td>
  <td class="q"><input TYPE="FLOAT" id="min_j" NAME="min_j" VALUE="0" SIZE="5"  onblur="javascript:document.getElementById('check_j').checked = true"  ></td>
  <td class="qtitle">J</td>
  <td class="q"><input TYPE="FLOAT" id="max_j" NAME="max_j" VALUE="20" SIZE="5"  onblur="javascript:document.getElementById('check_j').checked = true" ></td>
  </tr>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle"><input id=check_h name=check_h type=checkbox class="box" value=h ></td>
  <td class="q"><input TYPE="FLOAT" id="min_h" NAME="min_h" VALUE="0" SIZE="5" onblur="javascript:document.getElementById('check_h').checked = true"></td>
  <td class="qtitle">H</td>
  <td class="q"><input TYPE="FLOAT" id="max_h" NAME="max_h" VALUE="20" SIZE="5" onblur="javascript:document.getElementById('check_h').checked = true"></td>
  </tr>
 <tr ALIGN=middle VALIGN=center>
  <td class="qtitle"><input id=check_k name=check_k type=checkbox class="box" value=k ></td>
  <td class="q"><input TYPE="FLOAT" id="min_k" NAME="min_k" VALUE="0" SIZE="5" onblur="javascript:document.getElementById('check_k').checked = true"></td>
  <td class="qtitle">K<sub>s</td>
  <td class="q"><input TYPE="FLOAT" id="max_k" NAME="max_k" VALUE="20" SIZE="5" onblur="javascript:document.getElementById('check_k').checked = true"></td>
  </tr>
</table>
	</td></tr>
<%
}
%>


	<tr><td>

	<table BORDER=0 WIDTH="100%" >
		<tr class='q'>
			<td ALIGN=left width="20%">Output Format</td>
			<td nowrap width="13%" ALIGN=middle><input name=format value="html" type=radio class="box" CHECKED>HTML</td>
			<td nowrap width="13%" ALIGN=middle><input name=format value="xml"  type=radio class="box">XML</td>
			<td nowrap width="13%" ALIGN=middle><input name=format value="csv"  type=radio class="box">CSV</td>
            <td nowrap width="13%" ALIGN=middle><input name=format value="json"  type=radio class="box">JSON</td>
            <td nowrap width="13%" ALIGN=middle><input name=format value="votable"  type=radio class="box">VOTable</td>
            <td nowrap width="13%" ALIGN=middle><input name=format value="fits"  type=radio class="box">FITS</td>
            <td nowrap class="q" onmouseover="return escape('Executes the query and stores the result in a table in the CasJobs MyDB database. If the table name entry is empty, then a default name will be given.');"><input name=format value="mydb"  type=radio class="box">MyDB<i><em><strong><sup><font color="red">NEW!</font></sup></strong> </em></i></td>
		</tr>
        <tr > 
            <td></td><td></td><td></td><td></td><td></td><td></td><td></td>   
            <td nowrap class="q">Table name <input id=TableName name=TableName VALUE="" SIZE="10"></td>
        </tr>
        <tr><td colspan="5">Limit number of output rows (0 for max) to <input type=text name="limit" size=5 value="10"></td> </tr>
		<tr >
			<td align="left"><input id=submit type="submit" value="Submit Request" onclick="SetBands(); goToWindow()" ></td>
			<td align="right"><input id=reset  type="reset" value="Reset Form"></td>
            <td></td> 
		</tr>
	</table>
	</td></tr>

	<tr><td>
  
	<tr VALIGN=top><td>
	Enter the <em>ra</em> and <em>dec</em> either in
	degrees or in h:m:s, d:m:s notation. The search <em>radius</em> is measured in arcminutes.
	Check the magnitudes you would like to constrain in your query. If you
	prefer not to use specific attributes,leave those rows unchecked.
	(If you do not insert constraints and select all 
	entries, you will receive many records!)
	</td></tr>  
</table>



</form>
</div>

</asp:Content>
