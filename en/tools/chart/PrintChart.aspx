<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintChart.aspx.cs" Inherits="SkyServer.Tools.Chart.PrintChart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
  h1,h2,h3,h4,h5,h6,p, tr,td  {FONT-FAMILY: arial,helvetica,sans-serif}
  .s     {FONT-FAMILY: arial,helvetica,sans-serif;FONT-SIZE: 8pt;}
</style>
<script>
    function wprint() {
        var pr = (window.print) ? 1 : 0;
        var da = (document.all) ? 1 : 0;
        var mac = (navigator.userAgent.indexOf("Mac") != -1);
        if (pr && da) {		// IE5
            window.focus();
            window.print();
        } else if (pr) {	// NS4
            window.print();
        } else {
            alert("Sorry, your browser does not support this feature");
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>


    <table border=0 cellspacing=0 cellpadding=0>
	<tr>
		<td width="20">&nbsp;</td>
		<td width="150">&nbsp;</td>
		<td width="40">&nbsp;</td>
		<td width="170">&nbsp;</td>
		<td width="10%"></td>
	</tr>

	<tr>
		<td>&nbsp;</td>
		<td align=center><font size=+2>SDSS <%=globals.Release%></font><br>finding chart</td>
		<td><img src="images/sdssIVlogo.png" border=0 height="50">
		<td valign=top>&nbsp;&nbsp;
			<a href="javascript:wprint();" class='s'> Send to printer</a>&nbsp;
			<a href="javascript:window.close();" class='s'> Close window</a></td>
		<td ></td>
	</tr>
	
	<tr>
		<td colspan="5" class='s'> &nbsp;</td>
	</tr>

	<tr valign=top>
		<td>&nbsp;</td>
		<td colspan="2" class='s'>&nbsp;</td>
		<td class='s'><b>Notes:</b></td>
		<td></td>
	</tr>
		
	<tr valign=top>
		<td>&nbsp;</td>
		<td class='s' align=center>
			<table width=200 border=0 cellspacing=0 cellpadding=0>
				<tr><td width="20"></td><td width="64" class='s'>ra</td><td align=right class='s'><%=hmsN(ra)%></td></tr>
				<tr><td width="20"></td><td class='s'>dec</td><td align=right class='s'><%=dmsN(dec)%></td></tr>
				<tr><td width="20"></td><td class='s'>equinox</td><td align=right class='s'>J2000</td></tr>			
				<tr><td width="20"></td><td class='s'>scale</td><td align=right class='s'><%=fmt(newscale,6,3)%> arcsec/pix</td></tr>
				<tr><td width="20"></td><td class='s'>width</td><td align=right class='s'><%=fmt(arcminwidth,6,2)%> arcmin</td></tr>
				<tr><td width="20"></td><td class='s'>height</td><td align=right class='s'><%=fmt(arcminheight,6,2)%> arcmin</td></tr>
			</table>
		</td>
		<td></td>
		<td class='s'>
			<table width=200 border=0 cellspacing=0 cellpadding=0>
				<tr><td class='s'><%=dots+dots+dots%></td></tr>
				<tr><td class='s'><%=dots+dots+dots%></td></tr>
				<tr><td class='s'><%=dots+dots+dots%></td></tr>
				<tr><td class='s'><%=dots+dots+dots%></td></tr>
				<tr><td class='s'><%=dots+dots+dots%></td></tr>
				<tr><td class='s'><%=dots+dots+dots%></td></tr>
			</table>
		</td>
		<td></td>
	</tr>

	<tr>
		<td colspan="5" class='s'> &nbsp;</td>
	</tr>

	<tr>
		<td>&nbsp;</td>
		<td colspan="4">
			<table border="1">
				<tr><td>
				<img src='<%=s%>' width="<%=newwidth%>" height="<%=newheight%>">
				</td></tr>
			</table></td>
	</tr>
</table>
</body>
</html>
