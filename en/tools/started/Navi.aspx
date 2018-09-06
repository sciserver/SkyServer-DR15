<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More	Information	- The Navigation tool</title>
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
	  <h1>Navigate</h1>

	  <p><A	href="../chart/navi.aspx" target="tools">Launch the Navigation tool</A></p>

	  <p>The Navigation tool is one	of the most versatile tools on SkyServer. You can use 
	  it to look through millions of objects to find those you are interested in.</p>

	  <p>To use the Navigation tool, enter a right ascension and declination 
	  in the "ra" and "dec" boxes at the top left, then click "Get Image." Use the 
	  Zoom bar (the magnifying glasses and rectangles under "Get Image") to 
	  zoom in our out on the center of the chart. Use the NWSE buttons to pan 
	  through the sky, looking at neighboring areas.</p>
  
	  <p>When you click on any object in the main frame of the Navigation tool, 
	  a close-up of the object will appear in the right-hand frame. A summary of its 
	  data will appear above the close-up. This summary shows 
	  its position (ra and dec), its type (star or galaxy), and its magnitudes in the 
	  SDSS's five filters (u,g,r,i,z). To learn more about this object (including 
	  spectral information), click "Explore" to open its Object Explorer entry. To 
	  add the object to your online notebook, click "Add to Notes." To view your notes, 
	  click "Show Notes."</p>

	  <p>Use the Navigation	tool when you are looking for objects to study.	
	  You can search through hundreds of objects at	a time, clicking them one after 
	  another. When you find an object you are interested in, you can save it in 
	  your notebook, or use the Object Explorer to look up all its photometric 
	  and spectroscopic data.</p>

	  <p>You can create a Finding Chart for any object you find in the 
	  Navigation tool by clicking the "Chart" link above ra and dec. You can also print out 
	  a picture of an object or region of sky. To print, click the Printer icon. A new window will 
	  pop up; click "Send to Printer" to print the image. In the print window and on the 
	  printout, colors will be inverted - black will become white and white will become 
	  black. The printing utility will automatically generate a grid and labels for the 
	  image.</p>
	   
	  <p>In addition, the Navigation tool can add several optional features to your 
	  image and/or printout. To turn on an optional feature, click the checkbox next to its 
	  name. The optional features are:</p>

	  <ul>
	     <li><p><strong>Query to mark objects</strong> puts purple triangles on top of objects selected by a marking string</li>
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
	     identified objects in the image</li>
	     <li><p><strong>BoundingBox</strong> puts a box around the outline for each object 
	     in the image</li>
	     <li><p><strong>Fields</strong> marks the boundaries of SDSS fields in the image</li>
	     <li><p><strong>Masks</strong> marks any regions masked out of the science 
	     data (masks are applied for a variety of reasons)</li>
	     <li><p><strong>Plates</strong> shows the boundaries of SDSS spectroscopic plates 
	     on the image (plates are 3 degrees across)</li>
	     <li><p><strong>InvertImage</strong> inverts the colors for the onscreen display 
	     (images are automatically inverted by the printing utility)</li>


	  <p><A href='javascript:done()'>Done</A></p>	  
	</td>
	</tr>
  </table>

</body>
</html>