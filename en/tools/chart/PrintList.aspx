<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintList.aspx.cs" Inherits="SkyServer.Tools.Chart.PrintList" EnableViewStateMac="False" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../tools.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
	      body	{BACKGROUND-COLOR:white}
    </style>
    <script type="text/javascript">
        function page(n) {
            document.getjpeg.page.value = n;
            document.getjpeg.submit();
            return false;
        }

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
            function setPage(n) {

              //set page value for parent, so that we come back to same page
              if (n > 0) document.getElementById("getjpeg").page.value = n;

              // set the local page value, and resubmit
              document.getElementById("getjpeg").page.value = n;
              document.getElementById("getjpeg").submit();

              return false;
            }
    </script>
    <title></title>
</head>
<body>
    <form id="getjpeg" method="post" action="<%=prturl%>">
    <div>
        <input type="hidden" value="<%=qscale%>" name="scale"/>
        <input type="hidden" value="<%=page%>" name="page"/>
        <input type="hidden" value="<%=opt%>" name="opt"/>
        <input type="hidden" value="<%=paste%>" name="paste"/>
    </div>
    </form>
<table border=0 cellspacing=2 cellpadding=0>
	<tr>
		<td width="10">&nbsp;</td>
		<td width="150">&nbsp;</td>
		<td width="40">&nbsp;</td>
		<td width="170">&nbsp;</td>
		<td></td>
	</tr>
	
	<tr valign=top>
		<td>&nbsp;</td>
		<td align=center><font size=+2>SDSS <%=globals.Release%></font><br>finding chart</td>
		<td><img src="images/sdssIVlogo.png" border=0 
			height="50">&nbsp;&nbsp;</td>
		<td valign=top>
				<table>
					<tr valign=top ><td>
						<a href="javascript:wprint();" class='s'> Send to printer</a>&nbsp;
						<a href="javascript:window.close();" class='s'> Close window</a>
					</td></tr>
					<tr><td>
						<%pagecounters();%>
					</td></tr>
				</table>
		</td>
		<td></td>
	</tr>
	
	<tr>
		<td colspan="5" class='s'>
		</td>
	</tr>

	<tr valign=top>
		<td>&nbsp;</td>
		<td colspan="2" class='s'>&nbsp;</td>
		<td class='s'>&nbsp;<b>Notes:</b></td>
		<td></td>
	</tr>
		
	<tr valign=top>
		<td>&nbsp;</td>
		<td class='s' align=center>
			<table width=200 border=0 cellspacing=0 cellpadding=0>
				<tr><td width="20"></td><td class='s'>equinox</td><td align=right class='s'>J2000</td></tr>			
				<tr><td width="20"></td><td class='s'>scale</td><td align=right class='s'><%=fmt(qscale,6,3)%> arcsec/pix</td></tr>
			</table>
		</td>
		<td></td>
		<td class='s'>
			<table width=200 border=0 cellspacing=0 cellpadding=0>
				<tr><td class='s'><%=dots+dots+dots%></td></tr>
				<tr><td class='s'><%=dots+dots+dots%></td></tr>
			</table>
		</td>
		<td></td>
	</tr>

	<tr>
		<td colspan="5" class='s'>&nbsp;</td>
	</tr>

	<tr>
		<td>&nbsp;</td>
		<td colspan="4">

<%
		if (page==0) {
	 		Response.Write("<hr>\n");
			Response.Write("<pre>\n");
			Response.Write(paste+"\n");
			Response.Write("</pre>\n");
		} else {
			header();
			for (var i=0;i<body.Length;i++)
				if (body[i].Length>0)
					parseLine(names,body[i]);

			trailer();
		}
%>

</td></tr>
</table>

</body>
</html>
