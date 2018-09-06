<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetId.aspx.cs" Inherits="SkyServer.Tools.Explore.SetId" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select by SpecObjId</title>
    <style type="text/css">
      #logo		{position: absolute; top:  6px;left: 6px;}
      #ctrl		{position: absolute; top: 80px;left: 6px;}
      #buttons	{position: absolute; top:180px;left:16px;}
      .wtxt		{font-family:sans-serif;font-size:9pt;color:#ccccff;}
    </style>

    <script type="text/javascript">

        function press_cancel() {
            window.close();
        }

        function press_ok() {
            var f = (document.layers) ? document.ctrl.document.forms[0] : document.forms[0];
            var w = window.open("summary.aspx?id=" + f.objid.value, 'EXPLORE');
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
	        Enter the ObjId,<br> then press OK
	        </td></tr></table>
        </div>

        <div id="ctrl">
	        <form action="" method=post id="F1">
	        <table BORDER="2" width="200" bgcolor="#000040">
		        <tr><td class="wtxt">ObjId</td>
			        <td align=center><input TYPE="text" name="objid" size="18"></td>
		        </tr>
	        </table>
	        </form>
        </div>

        <div id="buttons">
	        <table width='180' border='0' cellspacing='1'>
		        <tr><td align='middle'><a href=# onclick="press_ok();"><img name=ok src="images/ok.gif" border='0'></a></td>
			        <td align='middle'><a href=# onclick="press_cancel();"><img name=cancel src="images/cancel.gif" border='0'></a></td>
		        </tr>
	        </table>
        </div>
    </div>
    </form>
</body>
</html>
