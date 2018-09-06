<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Spectra.aspx.cs" Inherits="SkyServer.Tools.GetImg.Spectra" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<div id="title">Get Spectra</div>
<div id="transp">

<form METHOD="get" ACTION="<%=getimgurl%>"  id=form1 name=form1>

<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">
<tr><td colspan=2>
	This page gives you easy access to GIF 
	images of individual spectra. Select a plate and a fiber on the 
	form below. If you want to save an image to disk, use this service. 
	If you want to use this image on your website, please feel free to 
	do so, but give us an acknowledgement.
</td></tr>
<!------------------------<begin form section>------------------------>
<tr valign=middle><td align=middle>
	<table width=240 border=5 cellspacing="3" cellpadding="3">
	<tr><td class='b'>Plate</td>
	<td class='b'>
    <select name="P">
    <%
        using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
        {
            oConn.Open();
            writeOptions(oConn);
        }
    %>
    </select>
	</td></tr>
    	<tr>
		<td class='b'>Fiber&nbsp;&nbsp;&nbsp;</td>
		<td class='b'><input name="F" size=8  maxlength=8 value="562">&nbsp;&nbsp;[1..640]</td>
	</tr>
	</table>
	<p>
	<input TYPE="submit" value="Get Spectrum" id=submit1 name=submit1>
	<!--------------------<end form section>------------------------>
	</td>
	<td align=middle><img border=0 src="../images/thumb-spectro.png"></td>
</tr>

<tr><td colspan=2>
	The SDSS project uses 5-color images to detect millions of objects 
	(over 300 million stars and galaxies) over the whole sky. As soon
	as these objects are observed, a sophisticated software algorithm selects targets
	for further studies. Using another instrument, we take detailed <em>spectra</em>, 
	measurements of the energy given off by an object as a function of its wavelength. 
	These spectra tell much more about an object than its image. Spectra can 
	be used to estimate a 
	galaxy's distance or chemical composition, or to determine a star's age. 
</td></tr>

<tr><td colspan=2>
	The measured spectra are processed automatically by our software. The software 
	identifies individual features in the spectra: emission and absorption lines. Comparing
	the observed lines to a list of laboratory measurements, we can infer the relative velocity of the
	galaxy or star with respect to Earth. If the object is moving away from us, its spectral lines are shifted 
	towards longer wavelengths; this is the famous <em>Doppler shift</em>. Since the universe
	expands uniformly, objects that are twice as far are receding from us twice as fast. 
	We can use this fact to measure distances to galaxies, and eventually to create a three-dimensional
	map of the universe.
</td></tr>

<tr><td colspan=2>
	On the images of the spectra you can see annotations: these show the different spectral 
	lines that our software has found. The type of object and its redshift is written on the bottom of 
	the image as well.
</td></tr>

</table>
</form>
</div>
</asp:Content>