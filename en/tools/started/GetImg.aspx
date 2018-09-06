<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More Information - Get Images</title>
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
      <h1>Get Images</h1>

          <p><A href="../getimg" target="tools">Launch Get Images</A></p>

	  <p>The Get Images tool lets you view images and spectra. Four 
	  separate tools are available from the Get Images menu. To access 
	  any of the tools, click on the appropriate picture on the right side 
	  of the window.</p>
	  
	  <ul>
	  <li><p><strong>Get Fields</strong> lets you view images of 
	  SDSS fields, regions of the sky about 10 x 14 arcminutes across. 
        Look them up by SDSS run, camcol, and field number, which you 
	  can find with the Object Explorer (look up any object in the field). 
	  You can request an image of the field in one of five sizes.</p>

	  <p>Use the Get Fields tool when you want to view an image of a 
	  region of the sky. Sometimes you might see a picture in the Navigation Tool 
	  that you want to download. Click on any object in 
	  the field, them use the Object Explorer to find its run, camcol, and 
	  field number. Then use Get Fields to view the image.</p>
<!--
	  <li><p><strong>Get Mosaics</strong> lets you view images of a 
	  larger area of sky - the areas you see in the Mosaic window of the 
	  Navigation tool. Look up mosaics by their stripe and mosaic numbers, 
	  which you can find on the left side of the Navigation tool screen, 
	  under the sky globe. The five size options are the same options 
	  given in the Mosaic bubble menu of the Navigation tool.</p>
	  <p>The Get Mosaics tool is the easiest way to view images 
	  of large areas of sky at once. These images make good backgrounds 
	  and screen savers.</p>
-->	  
	  <li><p><strong>Get Spectra</strong> lets you view spectra for 
        individual objects. Select the plate and fiber number to view a 
	  spectrum. These spectra are the same ones you can see with the 
	  Object Explorer.</p>

	  <li><p><strong>Get Plates</strong> lets you choose spectra by 
	  looking through the 640 spectra on an SDSS plate. Select a plate 
	  from the drop-down menu, then click on any spectrum number from 
	  the list below. The list shows the spectrum number (from 1 to 640), 
	  the type of spectrum (star, galaxy, quasar, or unknown), and 
	  the redshift z.</p>
	  <p>The Get Plates tool is the easiest way to browse through the 
	  spectra of many objects at once. It allows you to compare spectra 
	  for stars, galaxies, and quasars, or to find average redshifts of 
	  different objects.</p>  
	  </ul>

      <p><A href='javascript:done()'>Done</A></p>     

      </td>
    </tr>
  </table>

</body>
</html>