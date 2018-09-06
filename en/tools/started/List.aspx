<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More Information - The Image List tool</title>
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
	  <h1>Image List</h1>

	  <p><A	href="../chart/list.aspx" target="tools">Launch the Image List tool</A></p>

	  <p>The Image List tool lets you search through thumbnail images for a list of 
 	  objects, or for the results of your SQL search. The Image List tool is one of the 
	  most powerful tools on SkyServer, especially when combined with a SQL search. You can 
	  look through hundreds of objects in just a few minutes, focusing in on the objects 
	  that are most interesting to you.</p>

	  <p>To get images, enter a list of positions in the text 
	  box in the upper left, then click "Get Image." The list must be in the format (ra,dec) or 
 	  (name,ra,dec), or you will get an error message. The list may or may not have labels in 
	  the first row. The images will appear as thumbnails in the main frame. When you see an 
	  image you like, click on it to launch the Navigation tool centered on that object (it 
	  will appear in a new window).</p>

	  <p>You can also create the list from the results of a SQL query. To use a query, click 
	  "Use query to fill form" above the textbox. A query window will appear; type your query in 
	  the window. The query must have a specific form - the select block must return only columns 
	  labeled name, ra, and dec. Click Submit to run the query. If you wrote the query correctly, 
	  you will see the results in a textbox on the next page. Click "Send to List" to send the 
	  results of your search to the Image List tool. If your query returns more than 40 
	  results, click the page numbers at the top of the main window to see other pages.</p>

	  <p>Use the Zoom bar (the magnifying glasses and rectangles under "Get Image") to 
	  zoom in our out on the center of each of your images. You can also zoom by changing 
	  the image scale with the "Scale" box. Enter the scale in arcseconds per pixel. You can 
	  print out the thumbnail images by clicking the printer icon.</p>
  	   
	  <p>In addition, the Image List tool can add several optional features to your 
	  image and/or printout. To turn on an optional feature, click the checkbox next to its 
	  name. The features will be added to every thumbnail image. The optional features are:</p>

	  <ul>
	     <li><p><strong>Grid</strong> overlays a grid and scale</li>
	     <li><p><strong>Label</strong> overlays a label with the RA/Dec of the 
	     image center, along with the image's scale and zoom factor</li>
	     <li><p><strong>PhotoObjs</strong> puts blue circles around all the objects that 
	     the SDSS photo algorithms identified</li>
	     <li><p><strong>SpecObjs</strong> puts red squares around all objects for which 
	     the SDSS has measured spectra</li>
<!--
	     <li><p><strong>Targets</strong> puts a white X on all objects targeted for 
   	     spectral observations by the SDSS (whether or not spectra were successfully 
	     measured)</li>
-->
	     <li><p><strong>Outline</strong> marks the outlines of all photometrically 
	     identified objects in the images</li>
	     <li><p><strong>BoundingBox</strong> puts a box around the outline for each object 
	     in the images</li>
	     <li><p><strong>Fields</strong> marks the boundaries of SDSS fields in the images</li>
	     <li><p><strong>Masks</strong> marks any regions masked out of the science 
	     data (masks are applied for a variety of reasons)</li>
	     <li><p><strong>Plates</strong> shows the boundaries of SDSS spectroscopic plates 
	     on the images (plates are 3 degrees across)</li>
	     <li><p><strong>InvertImage</strong> inverts the colors for the onscreen display 
	     of the Image List (images are automatically inverted by the printing utility)</li>

	  <p><A href='javascript:done()'>Done</A></p>
	  </td>
	</tr>
  </table>

</body>
</html>