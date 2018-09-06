<%@ Page Language="C#" %>
<html>
<head>
<link href="../../../skyserver.css" rel="stylesheet" type="text/css" />
<title>More Information - SQL Search</title>
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
      <p></p>
      <h1>SQL Search</h1>

          <p><a href="../search/sql.aspx" target="tools">Launch the SQL Search tool</A></p>

	  <p>The SQL Search tool, also known as the Query tool, gives you 
	  more flexibility than any other tool on SkyServer. You can use it 
	  to search through the SDSS database to return all objects that meet 
	  any criteria you choose, and the search will return only the information 
	  you tell it to return.</p>
	  <p>To access the SQL search tool, select Search from the Tools main page, 
	  then select SQL from the menu on the left edge of the screen.</p>
	  <p>To perform a SQL search, you must write a command, or "query," in Structured 
	  Query Language (SQL), a commercial programming language used to 
	  access databases. SQL is a fairly difficult language to learn, but 
	  any effort you put in to learning SQL will be returned a thousand 
	  times over when you use the SQL Search tool.</p>
  
	  <p>For example, the following query returns the first 100 Object IDs, positions, 
	  redshifts, and plate and fiber numbers of the most distant quasars 
	  in the SDSS database (z > 4):</p>

      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">  
         <tr>
           <td width="100%">
           <p>select top 100<br> 
           p.objID,p.ra,p.dec,s.z as redshift,w.plate,s.fiberID</p>
           <p>from<br />
           SpecObj s</p>
           <p>join<br />
               photoObj p ON p.objID = s.bestObjID</p>
           <p>join<br />
               plateX w on w.plateID = s.plateID</p>
           <p>where<br />
           s.z &gt; 4<br /> 
               and s.zWarning = 0<br />
               and s.class = 'QSO'</p>
           </td>
         </tr>
       </table>
      <p>Try copying and pasting this query into the window of the SQL search 
      tool (overwriting the default query). The search will return 64 
      quasars where z > 4. Not all of these 
      are actually quasars; some of them are mistakes by the SDSS processing 
      pipelines. To verify that they truly are distant quasars, go back and look 
      at them with the Object Explorer (look them up by Object ID or ra/dec).</p>
      <p>If you tried to find these 64 quasars by looking through 80 million 
      objects with the Navigation tool, you could be busy for weeks. But 
      with a single well-written query like the one above, you could find all 
      64 in seconds!</p>
      <p>SkyServer includes a "How To" tutorial to help you write your own 
      SQL queries. Once you finish it, you'll be well on your way to searching 
      through the SDSS database.</p>
	  
      <p><a target="help" href="../../help/howto/search/">Launch the SQL search tutorial</a></p>
      <p><a href='javascript:done()'>Done</A></p>
	</td>
    </tr>
  </table>

</body>
</html>