<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More Information - Scrolling Sky</title>
</head>

<script type="text/javascript">
    function launch(link) {
        window.opener.location.href = link;
        window.opener.focus();
        window.close();
    }

    function done() {
        window.close();
    }

</script>

<body>

  <table WIDTH="400" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <h1>Scrolling Sky</h1>

          <p><A href="../scroll/" target="tools">Launch the Scrolling Sky tool</A></p>

	  <p>Scrolling Sky lets you watch the sky scroll by on your screen 
	  in the same way it passes above the SDSS telescope. Scrolling Sky 
	  will let you see the sky as the SDSS telescope sees it. Follow 
	  the directions on the Scrolling Sky main page to select 
	  the area of sky you want to view.</p>
	  


      <p><A href='javascript:done()'>Done</A></p>     
	</td>
    </tr>
  </table>

</body>
</html>