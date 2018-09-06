<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Fields.aspx.cs" Inherits="SkyServer.Tools.GetImg.Fields" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="SkyServer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
<div id="title">Get Fields</div>
<div id="transp">
<form METHOD="get" ACTION="<%=getimgurl%>"  id=form1 name=form1>
<table width=640 border=0 cellspacing=10 cellpadding=10>

<tr><td colspan=2>
	This page gives you easy access to individual images. Select a run, camcol
	and a field, as well as the image size from the form below. If you want to save an image 
	to a disk, use this service. If you want to use this image on your website, 
	feel free to do so, but please give us an acknowledgement.
</td></tr>

<tr valign=top><td align=middle>
<!-------<begin form section>---------------------->

<table WIDTH=240 border=5 cellspacing="3" cellpadding="3">
<tr><td class='b'>Run</td>
	<td class='b'><select NAME="R">
	<%
        using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
        {
            oConn.Open();
            writeOptions(oConn);
        
    %>
    </select></td></tr>
	<tr><td class='b'>Camcol</td>
	<td class='b'><select name="C" width="5">
	<option  value="1" selected>1</option>
	<option  value="2">2</option>
	<option  value="3">3</option>
	<option  value="4">4</option>
	<option  value="5">5</option>
	<option  value="6">6</option>
	</select></td></tr>
    <tr><td class='b'>Field&nbsp;&nbsp;&nbsp;</td>
	<td class='b'><input name="F" value="<%= field0%>" size="4" /></td></tr>
    <tr><td class='b'>Size</td>
	<td class='b'>
    <select name="Z" width="5">
	<option  value="0"> 1984 x 1393 </option>
	<option  value="50" selected> 992 x 697 </option>
	<option  value="25"> 496 x 348 </option>
	<option  value="12"> 248 x 174 </option>
	</select>
    </td></tr></table>
	<p /><input type="submit" value="Get Image" id="submit1" name="submit1" /></td>
    <td align="middle">
	<em>Table for field ranges</em>

    <table width="300" border="0" cellspacing="3" cellpadding="3">
    <%  
            ResponseAux.writeHead("Run,Field min,Field max",Response);
            writeFields(oConn);
        }
        
    %>
    </table>

</td></tr>
</table>
</form>

<table width=640 border=0 cellspacing="3" cellpadding="3">

<tr><td>
	The images from the SDSS project are organized into <em>stripes</em>. 
	These are long images, 24,000 pixels wide (2.5 degrees), and typically 
	over 1 million pixels long (120 degrees). The SDSS covers the northern 
	sky with overlapping stripes. The stripes are designed to avoid the dust in 
	the plane of the Milky Way, shown as the red areas in the diagram at right.
	</td>
	<td valign=top align=middle width=240><img height=160 
			src="../images/sdss-globe.gif" width=160></td>
</tr>

<tr><td>
	Each stripe is merged from two <em>runs</em>, taken on separate nights.
	The telescope can complete only a single 8-hour run in any given night. 
	Each run consists of 6 <em>camcols</em> (camera columns); each 
	camcol corresponds 
	to each array of CCD detectors of our camera. Each camcol takes images in 
	five colors.
	</td><td valign=top align=middle width=240><img 
			src="../images/sdss-camera.jpg"></td>
</tr>

</table>

</div>
</asp:Content>