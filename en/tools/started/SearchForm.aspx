<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More	Information	- The Search Form tool</title>
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

  <table WIDTH="400" border="0"	cellspacing="3"	cellpadding="3">
	<tr>
	  <td>
	  <h1>Search Form</h1>

	  <p><A	href="../search/form/default.aspx" target="tools">Launch the Search Form tool</A></p>

	  <p>The Search Form tool is one of the most useful tools on SkyServer. You can search for 
	  objects without knowing SQL by selecting values from menus. For example, you can use the Search 
	  Form tool to find all galaxies brighter than 16th magnitude for which the SDSS has measured a spectrum.</p>

      <p>For detailed notes on how to use the Search Form tool, see the Search Form Quick Guide.</p>

	  <p><a	href='javascript:launch("../search/form/guide.aspx")'>See the Search Form Quick Guide</a></p>
	  <p><A href='javascript:done()'>Done</A></p>	  
	</td>
	</tr>
  </table>

</body>
</html>