<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More Information - The Object Explorer</title>
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
      <h1>Explore</h1>

         <p><A href="../explore/obj.aspx" target="tools">Launch the Object Explorer</A></p>

	  <p>The Object Explorer stores all information about a single sky object 
	  in one place. The Object Explorer shows the object's image and spectrum, 
	  gives a summary of its important photometric and spectroscopic data, 
	  provides links to all its data, and identifies when the object was 
	  seen by other surveys.</p>

	  <p>The Object Explorer will allow you to see everything that the SDSS 
	  has learned about an object, but you need to know exactly which 
	  object you want to learn about. The Object Explorer is best used along 
	  with the Navigation tool; Navigate to find objects that look interesting 
	  to you, then Explore to learn more about them.</p>
	  
	  <p>Search for objects with the "Search by" menu in the left-hand frame. 
	  You can search by SDSS object ID (ObjID), celestial coordinates (Ra,dec), 
	  5-part SDSS identifier, spectral plate-fiber number, or spectral ID 
	  (SpecObjID).</p>
	  
	  <p>The Object Explorer opens with a summary page; click Summary to 
	  return to this page. The main frame of the window contains a close-up 
	  image of the object. Click on this image to go to the Finding Chart tool, 
	  centered on this object.  
	  Four rows of photometric data appear next to the image. The most 
	  important is the second row: u,g,r,i,z are the object's magnitudes through 
	  the SDSS's five filters.</p>
	  
	  <p>If the SDSS has measured a spectrum for this object, a picture of 
	  its spectrum will appear below the object's image. Click on the 
	  spectrum for a larger view. Major spectral lines are marked, and the 
	  object's redshift is shown at the bottom of the picture. The object's 
	  important spectroscopic data appear above and to the right of the 
	  spectrum. If no spectrum has been measured, the Object Explorer will 
	  say, "SpecObjID = not found".</p>
	  
	  <p>In the left-hand frame, click on the PhotoObj link or its Field, Frame, 
	  or PhotoZ sublinks to see all of SDSS's photometric data for this object. 
	  Click on Neighbors to get a list of all objects within 0.5 arcminutes of 
	  this object, with links to the Object Explorer page for each neighbor. 
	  Click on FITS to download .fits files of the object's image, with various 
	  image types and filters.</p>
	  
	  <p>Click on the SpecObj link or its SpecLine, SpecLineIndex, XCredShift, 
	  ELredShift, or Plate sublinks to see all of SDSS's spectroscopic data 
	  for this object. If no spectrum has been taken, all these links will 
	  lead to a "No objects found" message. Click on the Spectrum link in the 
	  left-hand frame for a larger view of the object's spectrum. Click on 
	  FITS to download .fits files of the object's spectrum.</p>
	  
	  <p>Click on NED search to search the NASA/IPAC Extragalactic Database, 
	  another database of astronomical information, for objects near the 
	  one you selected. Click Print to print out the main frame of the Object 
	  Explorer.</p>
	  
	  <p>To learn what each term in SDSS photometric and spectroscopic data 
	  means, study the data tables in SkyServer's Schema Browser.</p>

      <p><A href="../../help/browser/browser.aspx" target="help">Launch the Schema Browser</A></p>
      <p><A href='javascript:done()'>Done</A></p>     
	</td>
    </tr>

  </table>

</body>
</html>