<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Plate.aspx.cs" Inherits="SkyServer.Tools.GetImg.Plate" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
    <div id="title">Plate Browser</div>
    <div id="transp">

<script type="text/javascript" language="javascript">
    function radiogo(x) {
        document.getElementById(x).checked = true;
    }
</script>

<form method="get" action="plate.aspx"  id="form1" name="form1">

<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">

<tr><td>
	Each spectroscopic plate has either 640 or 1000 spectra, observed simultaneously. The plate 
	itself is made of aluminum, with a tiny hole at the position of each object
	to be observed. We plug an optical fiber into each hole. The other end of the
	fibers leads the light into the spectrograph. The figure below shows where 
	each fiber has plugged in to the plate. The table below gives a list of all the objects in 
	the plate by fiber number, type, and redshift. Clicking on any entry 
	will bring up a picture of the corresponding object's spectrum. 
	</td>
    <td align="middle" rowspan="2"><img border=0 src="../images/thumb-tile.gif"></td>

</tr>
<tr><td>
	This page gives you easy access to GIF images of individual spectra on a given 
	plate. Select a plate on the form below, then click on an entry to see the object's 
	spectrum. For each spectrum, there is also a <a href="<%=url%>/tools/explore/"><img src='img.jpg' align='middle' border='1'></a> link 
	to its corresponding object in the image catalog (PhotoObj) that takes you to the 
	Explorer page (see Visual Tools) for that object. If you want to use these images on 
	your website, please feel free to do so, but give us an acknowledgement.</td>
	
</tr>
<tr><td colspan="2">
<!------------------------<begin form section>------------------------>
	<table width=600 border=5 cellspacing="3" cellpadding="3">
	<tr>
        <td class="b">Survey</td>
        <td class="b"><input type="radio" name="choosesurvey" id="radiosdss" value="sdss" tabindex="1" checked />SDSS-I</td>
        <td class="b"><input type="radio" name="choosesurvey" id="radiosegue" value="segue" tabindex="2" />SEGUE</td>
        <td class="b"><input type="radio" name="choosesurvey" id="radioboss" value="boss" tabindex="3" />BOSS</td>
        <td class="b"><input type="radio" name="choosesurvey" id="radioapogee" value="apogee" tabindex="4" />APOGEE</td> 
	</tr>
    <tr><td class='b'>Plate / MJD</td>
	<td class='b'>
        <select name="P" onfocus="javascript:radiogo('radiosdss');">
        <%
            using (SqlConnection oConn = new SqlConnection(globals.ConnectionString))
            {
                oConn.Open();
            
                string cmd = "SELECT CAST(plateID as VARCHAR(20)), plate, mjd ";
                cmd += " from PlateX where survey='sdss'";
                cmd += " order by plateID";            
                writeOptions(oConn, cmd);
        
        %>
	    </select>
    </td>
    <td class='b'>
        <select name="S" onfocus="javascript:radiogo('radiosegue');">
            <%  
                cmd = "SELECT CAST(plateID as VARCHAR(20)), plate, mjd ";
                cmd += " from PlateX where survey='segue1' or survey='segue2'";
                cmd += " order by plateID";
                writeOptions(oConn, cmd);
             %>
        </select>
    <td class="b">
        <select name="B" onfocus="javascript:radiogo('radioboss');">
            <%  
                cmd = "SELECT CAST(plateID as VARCHAR(20)), plate, mjd ";
                cmd += " from PlateX where survey='boss'";
                cmd += " order by plateID";
                writeOptions(oConn, cmd);
             %>
        </select>

    </td>
       <td class="b">    

       <select name="A" onfocus="javascript:radiogo('radioapogee');">
            <%  
                cmd = "SELECT plate_visit_id as plateID, plate, mjd ";
                cmd += " from apogeePlate";
                cmd += " order by plate,mjd";
                writeOptions(oConn, cmd); 
             %>
        </select>
        </td>

	</td></tr>

	</table><p>	
	<table width=240>
		<tr>
			<td align=center><input type="submit" value="Get Plate"></td>
		</tr>
	</table>
	<!--------------------<end form section>------------------------>
	</td>
</tr>
</table>
</form>
<table width=720 border=0>
<tr>
<%
        writePlateHeader(oConn);
	    // generate the options list right out of the database
            if (survey == "apogee") writePlateAPOGEE();
            else  writePlate();
        }
%></tr>
</table>
<!------------------------------------<end fiber table-------------->
</div>
</asp:Content>