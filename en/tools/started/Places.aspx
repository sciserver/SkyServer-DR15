<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More Information - Famous Places</title>
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
      <h1>Famous Places</h1>

          <p><a href="../places/" target="tools">Launch the Famous Places tool</a></p>

	  <p>Famous Places is a gallery of the most beautiful and interesting 
	  images taken by the SDSS. It is the easiest way to quickly see a few 
	  SDSS pictures.</p>
	  
	  <p>The gallery is broken down into six categories: 
	  galaxies, spirals, clumps (clusters of stars and groups of galaxies), 
	  galaxy clusters, interacting galaxies, and artifacts (images caused by 
	  mistakes in the SDSS cameras). Click on a category to bring up a set 
	  of images.</p>
	  
	  <p>If you click on an image, you go to the Navigation tool entry for the 
	  object shown in the image. If you click on 
	  the "NED" link below the image, you will go to the NASA/IPAC Extragalactic 
	  Database entry for the object, where you can see a collection of data for 
	  that object from other surveys. If you click on the "SDSS" link, you 
	  will go to the Object Explorer entry for that object.</p>

      <p><a href='javascript:done()'>Done</a></p>     
	</td>
    </tr>

  </table>

</body>
</html>