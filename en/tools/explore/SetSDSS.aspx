<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetSDSS.aspx.cs" Inherits="SkyServer.Tools.Explore.SetSDSS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Select by ID</title>
    <style type="text/css">
      #logo		{position: absolute; top:  6px;left: 6px;}
      #ctrl		{position: absolute; top:100px;left: 6px;}
      #buttons	{position: absolute; top:180px;left:16px;}
      .wtxt		{font-family:sans-serif;font-size:9pt;color:#ccccff;}
    </style>
    <script type="text/javascript">
        var q = "<%= id%>";

        function padHex(a, m) {
            var h = Number(a).toString(16);
            var s = "";
            if (h.length < m) {
                for (var i = 0; i < m - h.length; i++)
                    s += "0";
            }
            s += h;
            return s;
        }

        function press_cancel() {
            window.close();
        }

        function press_ok() {
            var f = (document.layers) ? document.ctrl.document.forms[0] : document.forms[0];
            var a = String(f.sdssid.value).split("-");
            if (a.length != 5) {
                alert('The SDSS Id has 5 parts,\n Run-Rerun-Camcol-Field-Obj\n');
                window.close();
                return;
            }
            var rerun = Number(a[1]) + 2048;  // skyversion=1
            var run = Number(a[0]);
            var camcol = Number(a[2]);
            var field = Number(a[3]);
            var obj = Number(a[4]);
            var cf = 8192 * camcol + field;

            var s = "0x";
            s += padHex(rerun, 4);
            s += padHex(run, 4);
            s += padHex(cf, 4);
            s += padHex(obj, 4);

            var w = window.open('summary.aspx?id=' + s, 'EXPLORE');
            window.close();
            w.focus();
            return;
        }

        function init() {
        }
    </script>
</head>
<body bgcolor="#000000" text="white" topmargin="0" leftmargin="10" onload="init()">
    <form id="form1" runat="server">
    <div>
        <div id="logo" class="wtxt">
        <img src="images/sdsslogo-tiny.jpg" hspace="6px" align=left>
	        <table cellspacing="12"><tr><td class="wtxt">
	        Enter the 5-part SDSS Id 
	        separated by a hyphen,
	        like 752-40-5-273-249  <br>
	        then press OK
	        </td></tr></table>
        </div>

        <div id="ctrl">
	        <form action="" method=post id="F1">
	        <table BORDER=2 width=200 bgcolor=#000040>
		        <tr><td class="wtxt">SDSSId</td>
			        <td align=center><input TYPE="text" name="sdssid" size=16></td>
		        </tr>
	        </table>
	        </form>
        </div>

        <div id="buttons">
	        <table width='180' border='0' cellspacing='1'>
		        <tr><td align=middle><a href=# onCLick="press_ok();"><img name=ok src="images/ok.gif" border=0></a></td>
			        <td align=middle><a href=# onClick="press_cancel();"><img name=cancel src="images/cancel.gif" border=0 ></a></td>
		        </tr>
	        </table>
        </div>
    </div>
    </form>
</body>
</html>
