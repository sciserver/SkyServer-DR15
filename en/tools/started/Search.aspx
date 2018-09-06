<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More Information - Radial/Rectangular Search</title>
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
      <h1>Search</h1>

          <p><A href="../search/" target="tools">Launch the Radial/Rectangular Search tools</A></p>

	  <p>The Radial and Rectangular Search tools let you look for objects within a specified 
	  region of sky. You can search either a Radial or Rectangular region. 
	  To access either tool, or to access the SQL Search tool, select 
	  from the menu on the left edge of the Search tool screen.</p>
	  <p>Radial and rectangular searches are the quickest way to return 
	  all objects within a specified area of the sky.</p>
	  
	  <ul>
	  <li><p><strong>Radial</strong> searches look through a circular 
	  region. Enter the ra and dec of the region's center, and enter the 
	  region's radius in arcminutes.</p>
	  <p>If you would like to return only objects with a certain 
	  range of magnitudes in u,g,r,i,z, enter those ranges in the appropriate 
	  boxes. You can enter constraints on only one magnitude, or on as many as 
	  you would like.</p>
	  <p>You can have the search return all objects (up to 1,000) in your 
	  search area by clicking "all entries," or only a certain number of 
	  entries by clicking "max" and entering the number of entries you 
	  want returned. You can have results returned as an HTML table, as an 
	  XML (eXtended Markup Language) file, or as a CSV (Comma Separated Value) 
	  file that can be imported into a spreadsheet program.</p>
	  <li><p><strong>Rectangular</strong> searches work just like radial 
	  searches, except that you enter your search area as a box, with 
	  minimum and maximum coordinates in ra and dec.</p>
	  </ul>
	 
      <p><A href='javascript:done()'>Done</A></p>     

      </td>
    </tr>
  </table>

</body>
</html>