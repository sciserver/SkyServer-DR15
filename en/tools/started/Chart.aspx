<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More Information	- The Finding Chart tool</title>
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
	  <h1>Finding Chart</h1>

	  <p><A	href="../chart/chart.aspx" target="tools">Launch the Finding Chart tool</A></p>

	  <p>The Finding Chart lets you create and print "finding charts" - maps of the 
	  sky that can help you locate objects through your telescope. To create a finding 
	  chart, enter the right ascension and declination of the object you want to 
	  find in the "ra" and "dec" boxes at the top left. Enter the width and height 
	  of the chart in "width" and "height" (the chart doesn't have to be square). 
	  Then, click "Get Image."</p>

	  <p>Use the Zoom bar (the magnifying glasses and rectangles under "Get Image") to 
	  zoom in our out on the center of the chart. You can also zoom by changing 
	  the image scale with the "Scale" box. Enter the scale in arcseconds per pixel.</p>
  
	  <p>Use the Finding Chart tool when you want to use your telescope to observe an 
	  object that the SDSS has already observed, or when you want to print out a picture 
	  of an object or region of sky. To print, click the Printer icon. A new window will 
	  pop up; click "Send to Printer" to print the chart. In the print window and on the 
	  printout, colors will be inverted - black will become white and white will become 
	  black. The printing utility will automatically generate a grid and labels for the 
	  chart. When you're ready to observe, point your telescope at the appropriate RA/Dec, 
	  and the Finding Chart can guide you to find your object.</p>

	  <p>In addition, the Finding Chart tool can add several optional features to your 
	  image and/or printout. To turn on an optional feature, click the checkbox next to its 
	  name. The optional features are:</p>

	  <ul>
	     <li><p><strong>Query to mark objects</strong> puts purple triangles on top of objects selected by a marking string</li>
           <li><p><strong>Grid</strong> overlays a grid and scale</li>
	     <li><p><strong>Label</strong> overlays a label with the RA/Dec of the 
	     chart center, along with the chart's scale and zoom factor</li>
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
	     identified objects in the chart</li>
	     <li><p><strong>BoundingBox</strong> puts a box around the outline for each object 
	     in the chart</li>
	     <li><p><strong>Fields</strong> marks the boundaries of SDSS fields in the chart</li>
	     <li><p><strong>Masks</strong> marks any regions masked out of the science 
	     data (masks are applied for a variety of reasons)</li>
	     <li><p><strong>Plates</strong> shows the boundaries of SDSS spectroscopic plates 
	     on the chart (plates are 3 degrees across)</li>
	     <li><p><strong>InvertImage</strong> inverts the colors for the onscreen display 
	     of the Finding Chart (images are automatically inverted by the printing utility)</li>
          
	  <p><A href='javascript:done()'>Done</A></p>
	  </td>
	</tr>
  </table>

</body>
</html>