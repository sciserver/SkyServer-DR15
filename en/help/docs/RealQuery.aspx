<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="RealQuery.aspx.cs" Inherits="SkyServer.Help.Docs.RealQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Sample SQL Queries</div>

<div id="transp">

<table WIDTH=640 border=0 cellspacing="3" cellpadding="3">
<tr><td bgcolor="black">
<p>
This page contains sample queries designed to serve as templates 
for writing your own SQL (Structured Query Language) queries. The first section, <em>Basic SQL</em>, serves 
as an introduction to the syntax of the SQL database access language. The 
sections that follow feature queries written to solve real 
scientific problems submitted by astronomers. Those queries are grouped by 
scientific topic.
</p>

<p>
Click on the name of the query in the list below to go directly to that
sample query. You can load the query into SkyServer's 
<a href="<%=url%>/tools/search/sql.aspx">SQL Query tool</a> by clicking 
on the <img src="images/load.gif" height=25 align=middle /> button above each
query. You can then modify the query to suit your needs before actually
running it. Alternatively, you can send each query immediately to the
database and see the results by clicking on the <img
src="images/run.gif" height=25 align=middle /> button. (In cases where
there is more than one query in an example, only one of the queries gets
loaded and run by the buttons, you have to copy and paste the other one manually.)

<p>
<b>NOTE</b>: Please read the <a href="#hints">query hints</a> below 
before you try any queries, especially if you are new to SQL or the SkyServer.
</p>

<table align=center>
<tr>
<td class='tsml'>
<b><i>Basic SQL:</i></b>
<br><a href="#basic">Basic SELECT-FROM-WHERE</a>
<br><a href="#spatial">Basic position search</a>
<br><a href="#phototag">Using PhotoTag</a>
<br><a href="#between">Search for a Range of Values</a>
<br><a href="#rect">Rectangular position search</a>
<br><a href="#join">More than one table: JOIN...ON</a>
<br><a href="#specphoto">Photometry & spectroscopy</a>
<br><a href="#countgroup">Counting by type or category</a>
<br><a href="#starflag">Using flags</a>

<br><hr>

<b><i>SQL Jujitsu:</i></b>
<br><a href="#subsamp">Data subsample</a>
<br><a href="#closepairs">Objects in close pairs</a>
<br><a href="#nbrrun">Selected neighbors in run</a>
<br><a href="#objcount">Object counts and logic</a>
<br><a href="#repeatz">Repeated high-<i>z</i> objects</a>
<br><a href="#split64">Splitting 64-bit values</a>
<br><a href="#outer">Using LEFT OUTER JOIN</a>
<br><a href="#nested">Using Nested Queries</a>

<br><hr>

<b><i>Miscellaneous:</i></b>
<br><a href="#photoz">Photometric Redshifts</a>
<br><a href="#specOther1">Spectra in Other Programs - I</a>
<br><a href="#specOther2">Spectra in Other Programs - II</a>
<br><a href="#countsbytype">Counts by type and program</a>
<br><a href="#wisexmatch">Using WISE Cross-Match</a>

</td>

<td width="5">&nbsp;</td>

<td class='tsml'>
<b><i>Galaxies:</i></b>
<br><a href="#cleanGals">Clean photometry - Galaxies</a>
<br><a href="#galblue">Galaxies with blue centers</a>
<br><a href="#diamlim">Diameter limited sample</a>
<br><a href="#lrg">LRG sample selection</a>
<br><a href="#htm">Galaxy counts on HTM grid</a>
<br><a href="#zoo">Classifications from Galaxy Zoo</a>
<br><a href="#bosstarg">BOSS target selection</a>
<br><a href="#bossgal1">BOSS Stellar Masses</a>
<br><a href="#bossgal2">BOSS Stellar Vel. Disps.</a>

<br><hr>

<b><i>Stars:</i></b>
<br><a href="#cleanStars">Clean photometry - Stars</a>
<br><a href="#cv">CVs using colors</a>
<br><a href="#bincol">Binary stars colors</a>
<br><a href="#spplines">Using sppLines table</a>
<br><a href="#sppparams">Using sppParams table</a>
<br /><a href="#pm">Proper motions</a>
<!-- <br><font color="red"><b>Stars by spectral class (KS)</b></font> -->

<br><hr>

<b><i>Quasars:</i></b>
<br><a href="#qsospec">QSOs by spectroscopy</a>
<br><a href="#qsocol">QSOs by colors</a>
<br><a href="#quasar3">FIRST matches for quasars</a>

<br><hr>

<b><i>Varaibility Queries:</i></b>
<br><a href="#multiple">Stars multiply measured</a>
<br><a href="#timeseries">Multiple Detections and Time Series</a>
<br><a href="#qsoVar">eBOSS QSO Variability</a>

</td>

<td width="5">&nbsp;</td>

<td class='tsml'>
<b><i>General Astronomy:</i></b>
<br><a href="#galview">Only stars or galaxies</a>
<br><a href="#clean">Clean photometry</a>
<br><a href="#mjd">Using Field MJD</a>
<br><a href="#lines">Objects by spectral lines</a>
<br><a href="#unspec">Spectra by classification</a>
<br><a href="#movast">Moving asteroids</a>
<br><a href="#repeat">Plates with repeat spectra</a>
<br><a href="#galstar">Galaxies blended with stars</a>
<br><a href="#footprint">Checking SDSS footprint</a>

<br><hr>

<b><i>APOGEE:</i></b>
<br><a href="#apogeePlate">All APOGEE Plate Visits</a>
<br><a href="#aspcapParams">ASPCAP Parameters and Errors</a>
<br><a href="#apogeeStars">APOGEE Stars No BAD Flags</a>
<br><a href="#aspcapCluster">ASPCAP Params for Cluster Mbrs</a>
<br><a href="#apogeePMs">APOGEE Proper Motions</a>
<br><a href="#apogeeClusterCenters">APOGEE Stars Near Cluster Ctr</a>
<br><a href="#apogeeRVs">RVs for Individual APOGEE Visits</a>
<br><a href="#apogeeSegue">APOGEE and SEGUE Spectra</a>
<br><a href="#apogeeStarPhoto">SDSS photometry for APOGEE Stars</a>

<br><hr>

<b><i>MaNGA Queries:</i></b>
<br><a href="#mangaCubes">MaNGA Data Cubes</a>
<br><a href="#mangaCubesGood">MaNGA Data Cubes of Good Quality</a>
<br><a href="#mangaCubesPrimary">MaNGA Data Cubes of Primary Sample</a>
<br><a href="#mangaTarget">MaNGA Targets</a>

<br>
</td>
</tr>
</table>

<p><a name="hints"></a>
Some hints on searching SkyServer:</p>
<ol>
   <li>For an introduction to SQL, see the interactive <a href="../howto/search/">SQL tutorial</a>. 
   For more information on how to use SQL with the SkyServer database, see 
   <a href="sql_help.aspx">SQL in SkyServer</a>.</li>
   
   <li>Please read the <a href="<%=url%>/help/docs/sql_help.aspx#optquery">Optimzing Queries</a> 
   section in the <a href="<%=url%>/help/docs/sql_help.aspx">SQL in SkyServer</a> help page as well as the 
   <a href="limits.aspx">Query Limits page</a> (to see the timeouts and row limits on queries) before you attempt 
   any complex queries of your own.
   </li>
   <li>If you're not sure how many objects a query is going to return, it's always a good idea to first do a "count" query, e.g. 
   "SELECT count(*) FROM <a href"<%=url%>/help/browser/browser.aspx?cmd=description+Galaxy+V">Galaxy</a> WHERE ..." so as to get an idea of how many objects 
   will be returned, so you don't find yourself waiting a lot longer than you expected to.
   </li>
   <li>If even a count takes a long time, this is a good indication that the actual query will take a much longer time to run, 
   so you should check if you have formulated the query correctly and in the most efficient way. Some advice on how to write efficient 
   queries can be found in the <a href="<%=url%>/help/docs/sql_help.aspx#optquery">Optimzing Queries</a> 
   section of the <a href="<%=url%>/help/docs/sql_help.aspx">SQL in SkyServer</a>.
   </li>
   <li>If you have optimized your query and it still takes much longer to run than you think it should, try again at a different time. 
   Sometimes when many queries are being run simultaneously, the servers can take a longer time to return. This in turn can sometimes result 
   in queries timing out, even though they would run perfectly well on the server when the server load is light.
   </li>
   <li>A good way to find if there are any objects that meet the search criteria in a given query is to use the "TOP &lt;n&gt;" 
   SQL construct. For example, "SELECT TOP 10 FROM ..." will only return the first 10 objects that meet your criteria. Note that this is 
   NOT a deterministic ordering; the "TOP 10" objects may be different if you run the same query again.
   </li>
   <li>If your query returns a lot of output (more than a few thousand objects), it is generally not a good idea to select the HTML output 
   format (which is selected by default in the <a href="../../tools/search/sql.aspx">SQL Search</a> tool). Instead, try selecting CSV (comma-separated 
   values), JSON (JavaScript Object Notation) or one of the other output
   formats.  With the <a href="http://www.sciserver.org/support/updates/#release1p7p3">SciServer
   release in 2016</a>, you are now also able to select your CasJobs MyDB as
   an output location <u>as long as you are logged in</u>.
   </li>
   <li>For all queries that return very large output sets or take a long
   time to run, you are much better off using the asynchronous  <a
   href="http://casjobs.sdss.org/casjobs">CasJobs</a> batch query
   service.
   </li>
   <li>Be sure to exclude invalid values (unset or uncalculated quantities), as described on the SQL in SkyServer page under 
   <a href="<%=url%>/help/docs/sql_help.aspx#invalid">Excluding Invalid Data Values</a>.
   </li>
   <li>SkyServer returns all values with a default precision. For some applications (such as doing high-precision astrometry with 
   RA and Dec values), the default precision is not enough. For these applications, use the <b>STR(<i>column</i>,<i>n</i>,<i>d</i>)</b> SQL 
   construct (where <i>n</i> is the total number of digits and <i>d</i> is the number of decimal places) to set the precision of the column that your query requests. The SkyServer returns values with a default 
   precision that is set for each data type, and this may not be enough for columns like ra, dec etc. 
   See the <a href="#nbrrun">Selected neighbors in run</a> sample query below for examples of how to use STR.
   </li>
</ol>
<p><br><br>

<%
	string cmdRun;
	string qName = "basic";
	string qry = "Basic SELECT-FROM-WHERE";
	string tableDef = "<table width=720 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>\r\n<tr><td colspan=2>\r\n";
	string cmd = tableDef;
    string cmd2;
	cmd += "-- This is the \"Hello world\" example of how to search for data in DR8.<br>\r\n";
	cmd += "<br>\r\n";
	
	cmd += "-- This query shows the basic structure of a SQL query:<br>\r\n";
	cmd += "-- <b>SELECT [variables] FROM [table] WHERE [constraints]</b><br>\r\n";
	cmd += "-- Although many of your SQL queries will be more complex,<br>\r\n";
    cmd += "-- they will all follow this same basic structure.<br>\r\n";
	cmd += "<br>\r\n";	
	
	cmd += "-- This sample query finds unique objects in an RA/Dec box.<br>\r\n";
	cmd += "-- For a more efficient way to find objects by position, see the next query,<br>\r\n";
	cmd += "-- <a href=\"#spatial\">Searching around a sky position</a>.";
	cmd += "<br>\r\n";
	cmd += "<br>\r\n";	
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 100</td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   objID, ra ,dec </dd>    </td> 		<td> -- Get the unique object ID and coordinates</td> </tr>\r\n";
	cmd += "<tr> <td> FROM </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoPrimary+V\">PhotoPrimary</a>	</dd>	</td> <td> -- From the table containing photometric data for unique objects </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> WHERE </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> ra &gt; 185 and ra &lt; 185.1 </dd>  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> AND dec &gt; 15 and dec &lt; 15.1 </dd> </td> <td> -- that matches our criteria </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2><br></td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );

	qName = "spatial";
	qry = "Basic position search";
	cmd = tableDef;
	cmd += "-- Find galaxies within 1' of a given point (ra=185.0, dec=-0.5). <br>\r\n";
	cmd += "-- This is a slightly more complex query, but it can be easily adapted to search<br>\r\n";
	cmd += "-- around any point in the sky.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- To see how to limit the search only to objects with clean photometry, see the<br>\r\n";
	cmd += "-- <a href=\"#clean\">Clean imaging</a> query.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 100 G.objID, GN.distance\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a> as G\r\n";
	cmd += "<tr> <td> JOIN dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fGetNearbyObjEq+F\">fGetNearbyObjEq(185.,-0.5, 1)</a> AS GN\r\n";
	cmd += "<tr> <td> <dd>  ON G.objID = GN.objID\r\n";
	cmd += "<tr> <td> ORDER BY distance\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );

	qName = "phototag";
	qry = "Using the PhotoTag table";
	cmd = tableDef;
	cmd += "-- This query introduces the <a href=\""+url+"/help/browser/browser.aspx?description+PhotoTag+U\">PhotoTag</a> table, which contains the most frequently used columns<br>\r\n";
	cmd += "-- of <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a>. Queries to PhotoTag will run more quickly than those to photoObj.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- This sample query finds data for all objects in fields with desired PSF width. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 100</td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    r.run,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    r.rerun,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    f.camCol,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    f.field,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    p.objID,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    p.ra,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    p.dec,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    p.modelMag_r,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    f.psfWidth_r  </td> </tr>\r\n";
	cmd += "<tr> <td> FROM  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoTag+U\">PhotoTag</a> AS p </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Field+U\">Field</a> AS f ON f.fieldid = p.fieldid </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Run+U\">Run</a> AS r ON f.run = r.run </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE mode=1 &nbsp;&nbsp;&nbsp;&nbsp;-- select primary objects only</td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   and f.psfWidth_r &gt; 1.2  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   and  p.modelMag_r &lt; 21.  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   and  r.stripe = 21  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );

	qName = "between";
	qry = "Search for a Range of Values: BETWEEN";
	cmd = tableDef;
	cmd += "-- The BETWEEN statement can be used to set constraints on a range of values.</br>\r\n";
	cmd += "</br>\r\n";
	
	cmd += "-- This sample query finds galaxies with g magnitudes between 18 and 19.</br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 10 objID, cModelMag_g </td> </tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>     </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE </td></tr>\r\n";
	cmd += "<tr> <td> <dd>   cModelMag_g between 18 and 19</td> <td> -- 18 &lt cModelMag_g &lt 19</td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );
	
	
	qName = "rect";
	qry = "Rectangular position search";
	cmd = tableDef;
	cmd += "-- There are several built-in functions available to CAS users that make spatial\r\n";
	cmd += "<br>-- queries, i.e., those with coordinate cuts, much more efficient than simply\r\n";
	cmd += "<br>-- including the coordinate constraints in the WHERE clause.  This  example \r\n";
	cmd += "<br>-- illustrates the use of the dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fGetObjFromRectEq+F\">fGetObjFromRectEq</a> function that invokes \r\n";
	cmd += "<br>-- the <a href=\"http://www.skyserver.org/htm/\">Hierarchical Triangular Mesh (HTM)</a> functionality.\r\n";
	cmd += "<br>\r\n";
	cmd += "<br>-- a) Rectangular search using straight coordinate constraints:\r\n";
	cmd += "<br>SELECT objID, ra, dec \r\n";
	cmd += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a> \r\n";
	cmd += "<br>WHERE (ra between 179.5 and 182.3) and (dec between -1.0 and 1.8)\r\n";
	cmd += "<br>\r\n";
	cmd += "<br>-- b) This query can be rewritten as follows to use the HTM function that returns a\r\n";
	cmd += "<br>-- rectangular search area (The \"Run this Query\" button above will run this query):\r\n";
	cmd += "<br>\r\n";
	cmd2 = "<br>SELECT p.objID, p.ra, p.dec\r\n";
	cmd2 += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a> p \r\n";
	cmd2 += "<dd>JOIN dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+GetObjFromRectEq+F\">fGetObjFromRectEq</a>(179.5, -1.0, 182.3, 1.8) r ON p.objID = r.objID\r\n";
	cmd2 += "<br><br></td></tr>\r\n";
	cmd2 += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd+cmd2 );	


	qName = "join";
	qry = "Searching more than one table: JOIN...ON";
	cmd = tableDef;
	cmd += "-- When you need to search for data in two or more tables, you must \"join\" the tables<br>\r\n";
	cmd += "-- together for the purposes of your query by using a JOIN...ON statement.<br>\r\n";
	cmd += "-- JOIN...ON allows you to search for data and/or constraints in both tables.<br>\r\n";
	cmd += "<br>\r\n"; 
	cmd += "-- The syntax of the statement is:<br>\r\n";
	cmd += "-- <b>JOIN [the second table] ON [a variable the tables have in common]</b>.<br>\r\n"; 
	cmd += "-- The variable the tables have in common is called the \"key\" (think of it<br>\r\n";
	cmd += "-- as the key that unlocks your ability to search two tables).<br>\r\n";
	cmd += "-- The key variable(s) in each table are shown on the <a href=\"intro.aspx\">About the Database</a> page.<br>\r\n";
	cmd += "-- Find the two tables you want to join and look for a key variable they have in common.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- The sample query looks for spectra of quasars and shows the date and time at which<br>\r\n";
	cmd += "-- each spectrum was taken.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 100";
	cmd += "<tr> <td> <dd>  sp.objID,  </td> </tr>\r\n";	
	cmd += "<tr> <td> <dd>  sp.ra,  </td> </tr>\r\n";	
	cmd += "<tr> <td> <dd>  sp.dec,  </td> </tr>\r\n";	    	
	cmd += "<tr> <td> <dd>  sp.mjd,  </td> </tr>\r\n";		
	cmd += "<tr> <td> <dd>  px.taiBegin,  </td> </tr>\r\n";	
	cmd += "<tr> <td> <dd>  px.taiEnd,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  sp.fiberID,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  sp.z  </td> </tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+specPhoto+V\">specPhoto</a> AS sp    </td> </tr>\r\n";
	cmd += "<tr> <td> JOIN plateX AS px";
	cmd += "<tr> <td> <dd> ON sp.plateID = px.plateID </td></tr>\r\n";
	cmd += "<tr> <td> WHERE </td></tr>\r\n";
	cmd += "<tr> <td> <dd>  (sp.class='QSO') </td></tr>\r\n";
	cmd += "<tr> <td> <dd>  AND sp.z > 3 </td></tr>\r\n";		
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );

	qName = "specphoto";
	qry = "Photometry and Spectroscopy: SpecPhoto";
	cmd = tableDef;
	cmd += "-- This query introduces the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecPhoto+V\">SpecPhoto</a> view, which is a <i>pre-computed join</i><br>\r\n";
	cmd += "-- of the most commonly-searched fields in <i>both</i> the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Specobj+U\">SpecObj</a> view (which<br>\r\n";
	cmd += "-- contains spectroscopy data) and the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+U\">PhotoObj</a> view (which<br>\r\n";
	cmd += "-- contains photometry data). This means that to combine <br>\r\n";
	cmd += "-- photometry and spectroscopy tables yourself using JOIN...ON,<br>\r\n";
	cmd += "-- the join already has been \"precomputed\" and done for you.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- You should use <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecPhoto+V\">specPhoto</a> whenever your variables of interest<br>\r\n";
	cmd += "-- can be found there; using specPhoto means that your queries will<br>\r\n";
	cmd += "-- return results <i>much faster</i> than using JOIN...ON.<br>\r\n";
	cmd += "-- that your queries will return results <i>much faster</i> than using JOIN...ON.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- This sample query retrieves both magnitudes (from photometry) and<br>\r\n";
	cmd += "-- redshifts (from spectroscopy) of 100 quasars. Note that this query<br>\r\n"; 
	cmd += "-- also introduces the use of mathematical operators (in this case subtraction)<br>\r\n";
	cmd += "-- in queries.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT top 100<br>\r\n";
	cmd += "<dd>objid, ra, dec, psfmag_i-extinction_i AS mag_i,<br>\r\n";
	cmd += "<dd>psfmag_r-extinction_r AS mag_r, z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -- In SpecPhoto, \"z\" is the redshift <br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecPhoto+V\">SpecPhoto</a> <br>\r\n";
	cmd += "WHERE <br>\r\n";
	cmd += "<dd> (class = 'QSO') \r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );	
	

	qName = "countgroup";
	qry = "Counting objects by type or category";
	cmd = tableDef;
	cmd += "-- This simple query introduces two important SQL structures while showing how to count the number of<br>\r\n";
	cmd += "-- spectra of each spectral classification (galaxy, quasar, star) in DR8.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- When included in the SELECT block, the <b>count(*)</b> statement returns the <b>number</b> of objects that<br>\r\n";
	cmd += "-- meet your search criteria.<br>\r\n";
	cmd += "-- The <b>GROUP BY</b> statement sorts results into groups (categories) based on the value of a data column.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- In this query, the grouping occurs on the 'class' column of the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObj+V\">SpecObj</a> view, which contains<br>\r\n";
	cmd += "-- the spectral classification of the object.<br>\r\n";
	cmd += "-- The query can be easily modified to find object counts sorted by other columns.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- For another example, see the <a href='#countsbytype'>Counts by Type and Program</a> sample query.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT class, count(*) <br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObj+V\">SpecObj</a> <br>\r\n";
	cmd += "GROUP BY class\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );	



	qName = "starflag";
	qry = "Using flags";
	cmd = tableDef;
	cmd += "-- Another useful query is to select stars that are not saturated.<br> \r\n";
	cmd += "-- This query introduces bitwise logic for flags, and uses the 'as' syntax to <br>\r\n";
	cmd += "-- make the query more readable. Note that if a flag is not set, the value <br>\r\n";
	cmd += "-- will be zero. If you want to ensure multiple flags are not set, you can <br>\r\n";
	cmd += "-- either check that each individually is zero, or their sum is zero. <br>\r\n";
	cmd += "--   (From <a href=\"mailto:gtr@astro.princeton.edu\">Gordon Richards</a>) <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- <b>Important caveat</b>: The 'flags' column is the union of the flag values in  <br>\r\n";
	cmd += "-- each band,and using it may produce unexpected results, for example if a <br>\r\n";
	cmd += "-- bad flag bit is set in only one band (e.g. in the 'flags_r' value), that bit <br>\r\n";
	cmd += "-- will be bad in the overall 'flags' value as well.  For more information, <br>\r\n";
	cmd += "-- please see the <a href=\""+globals.SdssUrl+"algorithms/flags_detail.php\">'Photometric flags detail' entry in Algorithms.</a> <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- NOTE: This query takes a long time to run without the \"TOP 1000\". <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 1000  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  objID,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  ra,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  dec,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  psfMag_u, psfMag_g, psfMag_r, psfMag_i, psfMag_z,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  dbo.fPhotoFlagsN(flags) </td></tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>  </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  (flags & (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('SATURATED'))) != 0  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );



	qName = "subsamp";
	qry = "Data subsample";
	cmd = tableDef;
	cmd += "-- Give me the colors of a random 1% sample of objects from all fields that     <br>\r\n";
	cmd += "-- are \"survey quality\" so that I could plot up color-color diagrams and play  <br>\r\n";
	cmd += "-- around with more sophisticated cuts.  Query requested by <a href=\"mailto:kgb@pha.jhu.edu\">Karl Glazebrook</a>. <br>\r\n";
	cmd += "-- Uses the HTM spatial index ID as a random number generator.  The htmID is      <br>\r\n";
	cmd += "-- multiplied by a prime number (37) to remove bias and generate a random number <br>\r\n";
	cmd += "-- from the lowermost 16 bits.  This number is then constrained to be between 650<br>\r\n";
	cmd += "-- and 65000 to generate a random sample between 1 and 100% of the data            <br>\r\n";
	cmd += "-- respectively.  So replacing the \"1\" by a different number between 1 and 99    <br>\r\n";
	cmd += "-- will generate a sample of the required percentage of objects. <br>\r\n";
	cmd += "-- Note that this is much faster than the standard \"ORDER BY RANDOM()\" SQL method. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td colspan=\"2\"> SELECT TOP 100 u, g, r, i, z FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a> </td> </tr>\r\n";
	cmd += "<tr> <td colspan=\"2\"> WHERE </td> </tr>\r\n";
	cmd += "<tr> <td colspan=\"2\"> <dd> (htmid*37 & 0x000000000000FFFF) </td> </tr> \r\n";
	cmd += "<tr> <td> <dd>&nbsp;&nbsp;&nbsp; &lt; (650 * 1) </td> <td> -- Replace the \"1\" with a number &lt; 99 to get a higher percentage data subsample  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );



	qName = "closepairs";
	qry = "Objects in close pairs using neighbors";
	cmd = tableDef;
	cmd += "-- This query introduces the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Neighbors+U\">Neighbors</a> table, which contains each    <br>\r\n";
	cmd += "-- object's neighbors within 30 arcseconds.                       <br>\r\n";
	cmd += "-- Find all objects within 30 arcseconds of one another           <br>\r\n";
	cmd += "-- that have very similar colors: that is where the color ratios  <br>\r\n";
	cmd += "-- u-g, g-r, r-I are less than 0.05m.                             <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 10 P.ObjID 			</td><td>-- distinct cases  </td></tr>\r\n";
	cmd += "<tr> <td>   FROM	<a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoPrimary+V\">PhotoPrimary</a> AS P	</td><td>-- P is the primary object</td></tr>\r\n";
	cmd += "<tr> <td> <dd> JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Neighbors+U\">Neighbors</a> AS N ON P.ObjID = N.ObjID	</td><td>-- N is the neighbor link</td></tr>\r\n";
	cmd += "<tr> <td colspan=2> <dd> JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoPrimary+V\">PhotoPrimary</a> AS L ON L.ObjID = N.NeighborObjID	</td></tr>\r\n";
	cmd += "<tr> <td> </td><td>-- L is the lens candidate of P</td></tr>\r\n";
	cmd += "<tr> <td>  WHERE </td><td> </td></tr>\r\n";
	cmd += "<tr> <td> <dd>   P.ObjID &lt; L. ObjID 			</td><td>-- avoid duplicates</td></tr>\r\n";
	cmd += "<tr> <td> <dd>   and abs((P.u-P.g)-(L.u-L.g))<0.05 	</td><td>-- L and P have similar spectra.</td></tr>\r\n";
	cmd += "<tr> <td> <dd>   and abs((P.g-P.r)-(L.g-L.r))<0.05	</td><td> </td></tr>\r\n";
	cmd += "<tr> <td> <dd>   and abs((P.r-P.i)-(L.r-L.i))<0.05	</td><td> </td></tr>\r\n";
	cmd += "<tr> <td> <dd>   and abs((P.i-P.z)-(L.i-L.z))<0.05	</td><td> </td></tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );


	qName = "nbrrun";
	qry = "Selected neighbors in run";
	cmd = tableDef;
	cmd += "-- A more complex query that also uses the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Neighbors+U\">Neighbors</a> table.     <br>\r\n";
	cmd += "-- This is a query from <a href=\"mailto:rhl@astro.princeton.edu\">Robert Lupton</a> that finds selected neighbors in a given run and <br>\r\n";
	cmd += "-- camera column.  It contains a nested query containing a join, <i>and</i> a join with the <br>\r\n";
	cmd += "-- results of the nested query to select only those neighbors from the list that meet       <br>\r\n";
	cmd += "-- certain criteria.  The nested queries are required because the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Neighbors+U\">Neighbors</a> table does      <br>\r\n";
	cmd += "-- not contain all the parameters for the neighbor objects. This query also contains   <br>\r\n";
	cmd += "-- examples of setting the output precision of columns with STR.     <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 10 \r\n";
	cmd += "<dd>        obj.run, obj.camCol, str(obj.field, 3) as field,\r\n";
	cmd += "<dd>        str(obj.rowc, 6, 1) as rowc, str(obj.colc, 6, 1) as colc,\r\n";
	cmd += "<dd>        str(dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fObj+F\">fObj</a>(obj.objId), 4) as id,  \r\n";
	cmd += "<dd>        str(obj.psfMag_g - 0*obj.extinction_g, 6, 3) as g,\r\n";
	cmd += "<dd>        str(obj.psfMag_r - 0*obj.extinction_r, 6, 3) as r,\r\n";
	cmd += "<dd>        str(obj.psfMag_i - 0*obj.extinction_i, 6, 3) as i,\r\n";
	cmd += "<dd>        str(obj.psfMag_z - 0*obj.extinction_z, 6, 3) as z,\r\n";
	cmd += "<dd>        str(60*distance, 3, 1) as D,\r\n";
	cmd += "<dd>        dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fField+F\">fField</a>(neighborObjId) as nfield,\r\n";
	cmd += "<dd>        str(dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fObj+F\">fObj</a>(neighborObjId), 4) as nid<br>\r\n";
	cmd += "FROM\r\n";
	cmd += "<dd>        (SELECT obj.objId,\r\n";
	cmd += "<dd> &nbsp;&nbsp;                run, camCol, field, rowc, colc,\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 psfMag_u, extinction_u,\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 psfMag_g, extinction_g,\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 psfMag_r, extinction_r,\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 psfMag_i, extinction_i,\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 psfMag_z, extinction_z,\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 NN.neighborObjId, NN.distance\r\n";
	cmd += "<dd>         FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a> as obj\r\n";
	cmd += "<dd>         &nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Neighbors+U\">neighbors</a> as NN on obj.objId = NN.objId\r\n";
	cmd += "<dd>         WHERE\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 60*NN.distance between 0 and 15 and\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 NN.mode = 1 and NN.neighborMode = 1 and\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 run = 756 and camCol = 5 and\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 obj.type = 6 and (obj.flags & 0x40006) = 0 and\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 nchild = 0 and obj.psfMag_i &lt; 20 and\r\n";
	cmd += "<dd> &nbsp;&nbsp;                 (g - r between 0.3 and 1.1 and r - i between -0.1 and 0.6)\r\n";
	cmd += "<dd>         ) as obj <br>\r\n";
	cmd += "<dd>JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a> as nobj on nobj.objId = obj.neighborObjId <br>\r\n";
	cmd += "WHERE \r\n";
	cmd += "<dd>        nobj.run = obj.run and\r\n";
	cmd += "<dd>        (abs(obj.psfMag_g - nobj.psfMag_g) &lt; 0.5 or\r\n";
	cmd += "<dd>         abs(obj.psfMag_r - nobj.psfMag_r) &lt; 0.5 or\r\n";
	cmd += "<dd>         abs(obj.psfMag_i - nobj.psfMag_i) &lt; 0.5)  <br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );
	


	qName = "objcount";
	qry = "Object counting and logic";
	cmd = tableDef;
	cmd += "-- Using object counting and logic in a query. <br>\r\n";
	cmd += "-- Find all objects similar to the colors of a quasar at 5.5<redshift<6.5.   <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT count(*) 					as 'total', 	\r\n";
	cmd += "<tr> <td> <dd>sum( case when (Type=3) then 1 else 0 end) 		as 'Galaxies',\r\n";
	cmd += "<tr> <td> <dd>sum( case when (Type=6) then 1 else 0 end) 		as 'Stars',\r\n";
	cmd += "<tr> <td> <dd>sum( case when (Type not in (3,6)) then 1 else 0 end) 	as 'Other'\r\n";
	cmd += "<tr> <td>  FROM 	<a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoPrimary+V\">PhotoPrimary</a>				-- for each object\r\n";
	cmd += "<tr> <td>  WHERE (( u - g &gt; 2.0) or (u &gt; 22.3) ) 	-- apply the quasar color cut.\r\n";
	cmd += "<tr> <td> <dd>   and ( i between 0 and 19 ) \r\n";
	cmd += "<tr> <td> <dd>   and ( g - r &gt; 1.0 ) \r\n";
	cmd += "<tr> <td> <dd>   and ( (r - i &lt; 0.08 + 0.42 * (g - r - 0.96)) or (g - r &gt; 2.26 ) )\r\n";
	cmd += "<tr> <td> <dd>   and 	( i - z &lt; 0.25 )\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );

	qName = "htm";
	qry = "Galaxy counts on HTM grid";
	cmd = tableDef;
	cmd += "-- Create a count of galaxies for each of the HTM triangles.<br> \r\n";
	cmd += "-- Galaxies should satisfy a certain color cut, like<br>\r\n";
	cmd += "-- 0.7u-0.5g-0.2i<1.25 && r<21.75, output it in a form<br>\r\n";
	cmd += "-- adequate for visualization.<br>\r\n";
	
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT (htmID / power(2,24)) as htm_8 , \r\n";
	cmd += "<tr> <td> <dd>     -- group by 8-deep HTMID (rshift HTM by 12)\r\n";
	cmd += "<tr> <td> <dd> 	avg(ra) as ra, \r\n";
	cmd += "<tr> <td> <dd>	avg(dec) as [dec], \r\n";
	cmd += "<tr> <td> <dd>        count(*) as pop		-- return center point and count for display\r\n";
	cmd += "<tr> <td> FROM  <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>	 				-- only look at galaxies\r\n";
	cmd += "<tr> <td> WHERE  (0.7*u - 0.5*g - 0.2*i) &lt; 1.25 		-- meeting this color cut\r\n";
	cmd += "<tr> <td> <dd>   and  r &lt; 21.75		-- brighter than 21.75 magnitude in red band.\r\n";
	cmd += "<tr> <td> group by  (htmID /power(2,24))	-- group into 8-deep HTM buckets.\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "repeatz";
	qry = "Repeated high-<i>z</i> objects";
	cmd = tableDef;
	cmd += "-- Compare different redshift measurements of the same object for objects\r\n";
	cmd += "<br>-- with high redshift\r\n";
	cmd += "<br>\r\n";
	cmd += "<br>SELECT prim.bestObjId, prim.mjd AS PrimMJD, prim.plate AS PrimPlate, \r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; other.mjd AS OtherMJD, other.plate AS OtherPlate,\r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; prim.z AS PrimZ, other.z AS OtherZ, plate.programname\r\n";
	cmd += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObjAll+U\">SpecObjAll</a> prim\r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObjAll+U\">SpecObjAll</a> other ON prim.bestObjId = other.bestObjId\r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+platex+U\">platex</a> AS plate ON other.plate = plate.plate AND other.mjd = plate.mjd\r\n";
	cmd += "<br>WHERE other.bestObjId &gt; 0\r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; AND prim.sciencePrimary = 1\r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; AND other.sciencePrimary = 0\r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; AND prim.z &gt; 2.5\r\n";
	cmd += "<br>ORDER BY prim.bestObjId\r\n";
	cmd += "<br><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "split64";
	qry = "Splitting 64-bit values into two 32-bit values";
	cmd = tableDef;
	cmd += "-- The flag fields in the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObjAll+U\">SpecObjAll</a> table are 64-bit, but some<br>\r\n";
	cmd += "-- analysis tools (and FITS format) only accept 32-bit integers.<br>\r\n";
	cmd += "-- Here is a way to split them up, using bitmasks to extract<br>\r\n";
	cmd += "-- the higher and lower 32 bits, and dividing by a power of<br>\r\n";
	cmd += "-- 2 to shift bits to the right (since there is no bit shift<br>\r\n";
	cmd += "-- operator in SQL.) The hexadecimal version can be used for debugging<br>\r\n";
	cmd += "-- to make sure you are splitting them up right.<br>\r\n";
	
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<td><tr>\r\n";
	cmd += "<tr><td colspan=2>SELECT TOP 10 objid,ra,dec,	<td></tr>\r\n";
	cmd += "<tr><td><dd>   flags,				</td><td>	-- output the whole bigint as a check </td></tr>\r\n";
	cmd += "<tr><td><dd>   flags & 0x00000000FFFFFFFF AS flags_lo, </td><td>	-- get the lower 32 bits with a mask </td></tr>\r\n";
	cmd += "<tr><td colspan=2><dd>   -- shift the bigint to the right 32 bits, then use the same mask to</td></tr>\r\n";
	cmd += "<tr><td colspan=2><dd>   -- sget upper 32 bits</td></tr>\r\n";	   
	cmd += "<tr><td colspan=2><dd>   (flags/power(cast(2 as bigint),32)) & 0x00000000FFFFFFFF AS flags_hi	 </td></tr>\r\n";
	cmd += "<tr><td colspan=2>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a>	 </td></tr>\r\n";
	cmd += "<tr><td colspan=2> &nbsp; </td></tr>\r\n";
	cmd += "<tr><td colspan=2>-- Hexadecimal version of above query - use for debugging (\"Run this Query\" button will run this). 	 </td></tr>\r\n";
	cmd2 = "<tr><td colspan=2>SELECT TOP 10 objid,ra,dec,	 </td></tr>\r\n";
	cmd2 += "<tr><td colspan=2><dd> CAST(flags AS BINARY(8)) AS flags,	 </td></tr>\r\n";
	cmd2 += "<tr><td colspan=2><dd> CAST(flags & 0x00000000FFFFFFFF AS BINARY(8)) AS flags_lo,	 </td></tr>\r\n";
	cmd2 += "<tr><td colspan=2><dd> CAST((flags/POWER(CAST(2 AS BIGINT),32)) & 0x00000000FFFFFFFF AS BINARY(8)) AS flags_hi	 </td></tr>\r\n";
	cmd2 += "<tr><td colspan=2>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a> 	 <br></td></tr>\r\n";
	cmd2 += "<tr><td colspan=2>	 <br></td></tr>\r\n";
	cmd2 += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd+cmd2 );
	
	
	qName = "outer";
	qry = "Using LEFT OUTER JOIN";
	cmd = tableDef;
	cmd += "-- This query demonstrates the use of a LEFT OUTER JOIN to include rows from the joined table<br>\r\n";
	cmd += "-- that do not satisfy the JOIN condition. The OUTER JOIN (LEFT or RIGHT) <br>\r\n";
	cmd += "-- is an <i>inclusive</i> JOIN, whereas the INNER (default) JOIN is an <i>exclusive</i> JOIN. <br>\r\n";
	cmd += "-- In this case the query returns galaxies with or without spectra that meet the criteria <br>\r\n";
	cmd += "-- in the WHERE clause. The ISNULL operator is used to replace null <br>\r\n";
	cmd += "-- values with zeros for galaxies without spectra.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 10 p.objid, p.ra, p.dec, ISNULL(s.specobjid,0) AS specobjid, ISNULL(s.z, 0) AS z <br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy AS p</a>\r\n";
	cmd += "<dd>LEFT OUTER JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObj+V\">SpecObj</a> s ON s.bestObjID = p.objID <br>\r\n";
	cmd += "WHERE \r\n";
	cmd += "<dd>p.u BETWEEN 0 AND 19.6 AND p.g BETWEEN 0 AND 20\r\n";
	cmd += "<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );
	

	qName = "nested";
	qry = "Using Nested Queries";
	cmd = tableDef;
	cmd += "-- This query demonstrates, among other tings, the use of a <i>nested</i> query (a query <br>\r\n";
	cmd += "-- inside another query) in which the outer query operates on the result of the inner query.  The  <br>\r\n";
	cmd += "-- query also gets the sky brighness and turns it into a flux, which illustrates the use of    <br>\r\n";
	cmd += "-- the POWER() function and CAST to change the string representation into floating             <br>\r\n";
	cmd += "-- point.  The <a href=\""+url+"/help/browser/browser.aspx?cmd=description+First+U\">First</a> table contains matches between SDSS and FIRST survey objects.             <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 10 fld.run, fld.avg_sky_muJy, fld.runarea AS area, ISNULL(fp.nfirstmatch,0) <br>\r\n";
	cmd += "FROM ( <br>\r\n";
	cmd += "--first part: for each run, get total area and average sky brightness <br>\r\n";
	cmd += "<dd>        SELECT run, sum(primaryArea) AS runarea,\r\n";
	cmd += "<dd>        3631e6*avg(power(cast(10. as float),-0.4*sky_r)) as avg_sky_muJy\r\n";
	cmd += "<dd>        FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Field+U\">Field</a>\r\n";
	cmd += "<dd>        GROUP BY run <br>\r\n";
	cmd += ") AS fld <br>\r\n";
	cmd += "LEFT OUTER JOIN ( <br>\r\n";
	cmd += "-- second part: for each run,get total number of FIRST matches. To get the run number <br>\r\n";
	cmd += "-- for each FIRST match, need to join FIRST with PHOTOPRIMARY. Some runs may have     <br>\r\n";
	cmd += "-- 0 FIRST matches, so these runs will not appear in the result set of this subquery. <br>\r\n";
	cmd += "-- But we want to keep all runs from the first query in the final result, hence       <br>\r\n";
	cmd += "-- we need a LEFT OUTER JOIN between the first and the second query.                  <br>\r\n";
	cmd += "-- The LEFT OUTER JOIN returns all the rows from the first subquery and matches       <br>\r\n";
	cmd += "-- with the corresponding rows from the second query. Where the second query          <br>\r\n";
	cmd += "-- has no corresponding row, a NULL is returned. The ISNULL() function in the         <br>\r\n";
	cmd += "-- SELECT above converts this NULL into a 0 to say \"0 FIRST matches in this run\".     <br>\r\n";
	cmd += "<dd>        SELECT p.run, count(*) AS nfirstmatch\r\n";
	cmd += "<dd>        FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+First+U\">FIRST</a> AS fm\r\n";
	cmd += "<dd>        INNER JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoPrimary+V\">photoprimary</a> as p\r\n";
	cmd += "<dd>        ON p.objid=fm.objid\r\n";
	cmd += "<dd>        GROUP BY p.run <br>\r\n";
	cmd += ") AS fp <br>\r\n";
	cmd += "ON fld.run=fp.run <br>\r\n";
	cmd += "ORDER BY fld.run <br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );	


	qName = "qsospec";
	qry = "QSOs by spectroscopy";
	cmd = tableDef;
	cmd += "-- The easiest way to find quasars is by finding objects whose spectra have<br>\r\n";
	cmd += "-- been classified as quasars. This sample query searches the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObj+V\">SpecObj</a><br>\r\n";
	cmd += "-- table for the IDs and redshifts of objects with the <em>class</em> column equal to 'QSO'<br>\r\n";
	cmd += "<br>\r\n";
	
	cmd += "</td></tr>\r\n";
	cmd += "<tr><td>SELECT TOP 100 specObjID, z </td></tr>\r\n";
	cmd += "<tr><td>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObj+V\">SpecObj</a> </td></tr>\r\n";
	cmd += "<tr><td>WHERE  class = 'QSO' AND zWarning = 0</td></tr>\r\n";
	cmd += "<tr><td colspan=2><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );


	qName = "qsocol";
	qry = "QSOs using colors";
	cmd = tableDef;
	cmd += "-- Low-z QSO candidates using the color cuts from <a href=\"mailto:gtr@astro.princeton.edu\">Gordon Richards</a>. <br>\r\n";
	cmd += "-- Also a simple query with a long WHERE clause. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 100  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  g,   </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  run,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  rerun,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  camcol,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  field,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  objID  </td> </tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>                             </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE ( (g &lt;= 22)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    and (u - g &gt;= -0.27)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    and (u - g &lt; 0.71)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    and (g - r &gt;= -0.24)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    and (g - r &lt; 0.35)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    and (r - i &gt;= -0.27)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    and (r - i &lt; 0.57)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    and (i - z &gt;= -0.35)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>    and (i - z &lt; 0.70) )  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );


	qName = "quasar3";
	qry = "FIRST matches for quasars";
	cmd = tableDef;
	cmd += "-- This sample query is a useful quasar query (from <a href=\"mailto:jester@fnal.goV\">Sebastian Jester</a>). <br>\r\n";
	cmd += "-- Getting magnitudes for spectroscopic quasars - retrieves photometry. <br>\r\n";
	cmd += "-- This query uses the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecPhoto+V\">SpecPhoto view</a> of the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecPhotoAll+U\">SpecPhotoAll table</a>, which is a <i>pre-computed join</i> <br>\r\n";
	cmd += "-- of the important fields in the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecobjAll+U\">SpecObjAll</a> and <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObjAll+U\">PhotoObjAll</a> tables.  It is very convenient and much <br>\r\n";
	cmd += "-- <i>faster</i> to use this when you can instead of doing the join yourself. <br>\r\n";
	cmd += "-- Getting FIRST data for spectroscopic quasars - returns only those quasars that have <br>\r\n";
	cmd += "-- matches in the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+First+U\">FIRST</a> (Far-InfraRed Survey Telescope) table. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT sp.ra,sp.dec,sp.z, \r\n";
	cmd += "<dd>  sp.psfmag_i-sp.extinction_i AS mag_i,\r\n";
	cmd += "<dd>  peak,integr <br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecPhoto+V\">SpecPhoto</a> AS sp <br>\r\n";
	cmd += "<dd> INNER JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+First+U\">FIRST</a> AS f ON sp.objid = f.objid <br>\r\n";
	cmd += "WHERE <br>\r\n";
	cmd += "<dd>  class = 'QSO'<br> \r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "galview";
	qry = "Photometric data only for stars or galaxies";
	cmd = tableDef;
	cmd += "-- SkyServer includes views called <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a> and <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Galaxy</a>, which<br>\r\n";
	cmd += "-- contain photometric data (but no spectral data such as<br>\r\n";
	cmd += "-- redshift) for stars and galaxies respectively.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- This sample query shows how you can search for data<br>\r\n";
	cmd += "-- for galaxies using the Galaxy view. Searching for stars<br>\r\n";
	cmd += "-- using the Star view would work the same, but with<br>\r\n";
	cmd += "-- \"Star\" in the FROM clause.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- This sample query finds 1000 galaxies<br>\r\n";
	cmd += "-- brighter thanr-magnitude 22, extinction-corrected.<br>\r\n";
	cmd += "-- You could remove the \"TOP 1000\" to find all galaxies brighter<br>\r\n";
	cmd += "-- than r=22, but it would take a long time to run and might<br>\r\n";
	cmd += "-- time out. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 1000 objID </td></tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a> </td></tr>\r\n";
	cmd += "<tr> <td> WHERE </td></tr>\r\n";
	cmd += "<tr> <td> <dd>  (r - extinction_r) &lt; 22 </td> <td>-- extinction-corrected r magnitude</td></tr>\r\n";
	cmd += "<tr><td colspan=2><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );


	qName = "clean";
	qry = "Clean photometry: the CLEAN flag";
	cmd = tableDef;
	cmd += "-- One of the most important requirements for selecting data<br>\r\n";
	cmd += "-- useful for research is to select only data that has passed<br>\r\n";
	cmd += "-- a certain standard of clean photometry. Starting with DR8,<br>\r\n";
	cmd += "-- the SDSS-III has made this easier by providing a flag called CLEAN<br>\r\n";
	cmd += "-- that indicates that an object's photometry has passed all tests<br>\r\n";
	cmd += "-- to bedeclared useful for science. A value of CLEAN=1 (true)<br>\r\n";
	cmd += "-- indicates that that object's photometry has been vetted as clean.<br>\r\n";
	cmd += "-- For more on using flags, see the <a href=\"#starflag\">Using Flags</a> Sample Query.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- In some contexts, it is important to know what conditions<br>\r\n";
	cmd += "-- are required for theimaging pipeline to set the CLEAN flag,<br>\r\n";
	cmd += "-- so that you can adjust these requirements to suit your needs.<br>\r\n";
	cmd += "-- The CLEAN flag works differently for stars and galaxies. For stars,<br>\r\n";
	cmd += "-- see the <a href=\"#cleanStars\">Clean photometry - stars</a> sample query. For galaxies,<br>\r\n";
    cmd += "-- see the <a href=\"#cleanGals\">Clean photometry - galaxies</a> sample query.<br>\r\n";
	cmd += "<br>SELECT top 10 objID, ra, dec, g, clean\r\n";
	cmd += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a>\r\n";
	cmd += "<br>WHERE CLEAN=1<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "<tr><td colspan=2><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";	
	showQuery( qName, qry, cmd, cmd );
	
	qName = "mjd";
	qry = "Using Field MJD (Modified Julian Date)";
	cmd = tableDef;
	cmd += "-- This sample query allows you to find the MJD (astronomical date)<br>\r\n";	
	cmd += "-- on which a specific SDSS-III field was observed. (This query uses<br>\r\n";
	cmd += "-- the r-band, but you can specify other magnitude bands.<br>\r\n";
	cmd += "-- It also returns only fields observed after MJD 53140 (May 15, 2004).<br>\r\n";
	cmd += "--  There is an <a href=\"http://www.csgnetwork.com/julianmodifdateconv.html\">online calculator</a> for converting between MJDs and<br>\r\n";
	cmd += "-- calendar dates.<br>\r\n";
	cmd += "<br>\r\n";	
	cmd += "-- This query uses the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Field+U\">Field</a> table, which contains data on SDSS fields.<br>\r\n";
	cmd += "-- It is also possible to search for the observation date of a specific<br>\r\n";
	cmd += "-- object by joining the Field table with the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+U\">PhotoObj</a> table or its<br>\r\n";
	cmd += "-- associated views.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT top 100 \r\n";
	cmd += "<dd>   run, rerun, camcol, field, \r\n";
	cmd += "<dd>   mjd_r as primary_mjd \r\n";
	cmd += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Field+U\">Field</a>\r\n";
	cmd += "<br>WHERE \r\n";
	cmd += "<dd>mjd_r > 53140 <br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );
	


	qName = "lines";
	qry = "Finding objects by their spectral lines";
	cmd = tableDef;
	cmd += "-- DR8 handles searches by spectral lines differently than previous\r\n";
	cmd += "<br>-- releases. In addition, spectral lines for galaxies and stars are\r\n";
	cmd += "<br>-- identified through different processes.\r\n";
	cmd += "<br>\r\n";
	cmd += "<br>-- Spectral lines for galaxies are calculated using the MPA-JHU\r\n";
	cmd += "<br>-- spectroscopic reanalysis (<a href=\"http://adsabs.harvard.edu/abs/2004ApJ...613..898T\">Tremonti et al. 2004</a>; <a href=\"http://adsabs.harvard.edu/abs/2004MNRAS.351.1151B\">Brinchmann et al. 2004</a>)\r\n";
	cmd += "<br>-- and are stored in the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+galSpecLine+U\">galSpecLine</a> table. For more on how spectral lines\r\n";
	cmd += "<br>-- of galaxies are found, see the <a href=\""+globals.SdssUrl+"spectro/galspec.php\">Galspec</a> page of the sdss3.org website.\r\n";
    cmd += "<br>-- Spectral lines for stars are calculated using the SEGUE Stellar Parameter\r\n";
    cmd += "<br>-- Pipeline (SSPP; <a href=\"http://adsabs.harvard.edu/abs/2008AJ....136.2022L\">Lee et al. 2008</a>) and are stored in the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+sppLines+U\">sppLines</a> \r\n";
    cmd += "<br>-- table. For more on how spectral lines of stars are found, see \r\n";
    cmd += "<br>-- the <a href=\"" + globals.SdssUrl + "spectro/sspp.php\">SSPP</a> page of the sdss3.org website.\r\n";
    cmd += "<br>\r\n";
    
    cmd += "<br>-- The \"Run this Query\" button will run the second query, which finds stars\r\n";
    cmd += "<br>-- by searching CaII lines.\r\n";

	cmd += "<br>\r\n";
	cmd += "<br>-- a) Finding galaxies by their emission lines:\r\n";
	cmd += "<br>-- This query selects galaxy spectra with high internal reddening,\r\n";
	cmd += "<br>-- as measured by the standard Balmer decrement technique. It\r\n";
	cmd += "<br>-- makes use of the galSpec tables for the measurements of\r\n";
	cmd += "<br>-- galaxy lines.  In this case we use <a href=\""+url+"/help/browser/browser.aspx?cmd=description+galSpecLine+U\">galSpecLine</a>, which has\r\n";	
	cmd += "<br>-- emission line measurements.\r\n";
	cmd += "<br>\r\n";
    
	cmd += "<br>SELECT\r\n"; 
	cmd += "<br><dd>s.plate, s.fiberid, s.mjd, s.z, s.zwarning,\r\n";
	cmd += "<br><dd>g.h_beta_flux, g.h_beta_flux_err,\r\n"; 
	cmd += "<br><dd>g.h_alpha_flux, g.h_alpha_flux_err \r\n";
	cmd += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+galSpecLine+U\">GalSpecLine</a> AS g \r\n";
	cmd += "<br>JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObj+V\">SpecObj</a> AS s \r\n";
	cmd += "<br><dd>ON s.specobjid = g.specobjid \r\n";
	cmd += "<br>WHERE \r\n";
	cmd += "<br><dd>h_alpha_flux > h_alpha_flux_err*5 \r\n";
	cmd += "<br><dd>AND h_beta_flux > h_beta_flux_err*5 \r\n";
	cmd += "<br><dd>AND h_beta_flux_err > 0 \r\n";
	cmd += "<br><dd>AND h_alpha_flux > 10.*h_beta_flux \r\n";
	cmd += "<br><dd>AND s.class = 'GALAXY' \r\n";
	cmd += "<br><dd>AND s.zwarning = 0 \r\n";
	cmd += "<br>\r\n";
	
	cmd += "<br>-- b) This query selects red stars (spectral type K), with\r\n";
	cmd += "<br>-- large CaII triplet eq widths, with low errors on the CaII triplet\r\n";
	cmd += "<br>-- equivalent widths.\r\n";
	
	cmd += "<br>\r\n";
		 
	cmd2 = "<br> SELECT\r\n";
	cmd2 += "<br><dd>sl.plate,sl.mjd,sl.fiber,\r\n";
	cmd2 += "<br><dd>sl.caIIKside,sl.caIIKerr,sl.caIIKmask,\r\n";
	cmd2 += "<br><dd>sp.fehadop,sp.fehadopunc,sp.fehadopn,\r\n";
	cmd2 += "<br>sp.loggadopn,sp.loggadopunc,sp.loggadopn\r\n";
	cmd2 += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+sppLines+U\">sppLines</a> AS sl";
	cmd2 += "<br>JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+sppParams+U\">sppParams</a> AS sp \r\n";
	cmd2 += "<br><dd>ON sl.specobjid = sp.specobjid\r\n";
    cmd2 += "<br>WHERE\r\n";
    cmd2 += "<br><dd>fehadop &lt; -3.5\r\n";
    cmd2 += "<br><dd>AND fehadopunc between 0.01\r\n";
    cmd2 += "<br><dd> and 0.5 and fehadopn &gt; 3 \r\n";
   	cmd2 += "<br><br></td></tr>\r\n";
	cmd2 += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd+cmd2 );


	qName = "unspec";
	qry = "Finding spectra by classification (object type)";
	cmd = tableDef;
	cmd += "-- This sample query find all objects with spectra<br>\r\n";
	cmd += "-- classified as stars. The query also checks that <em>zWarning</em> has no bits set,<br>\r\n";
	cmd += "-- meaning that there are no known problems with the spectra. <br>\r\n";
	cmd += "<br>\r\n";
	
	cmd += "-- Other possible values with of <em>class</em> are 'QSO', 'GALAXY' and 'UNKNOWN'.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr><td>SELECT TOP 100 specObjID </td></tr>\r\n";
	cmd += "<tr><td>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObj+V\">SpecObj</a> </td></tr>\r\n";
	cmd += "<tr><td>WHERE  class = 'STAR' AND zWarning = 0</td></tr>\r\n";
	cmd += "<tr><td colspan=2><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );


	qName = "movast";
	qry = "Moving Asteroids";
	cmd = tableDef;
	cmd += "-- Provide a list of moving objects consistent with an asteroid. <br>\r\n";
	cmd += "-- This sample query uses the 'as' syntax, which allows you to <br>\r\n";
	cmd += "-- give your own names to columns in the results.<br>\r\n";
	cmd += "<br>\r\n";
    cmd += "-- This query is an example of a situation where you <b>must</b><br>\r\n";
    cmd += "-- search the full <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a>	view, since the <br>\r\n";
    cmd += "-- columns <em>rowv</em> and <em>colv</em> are not in PhotoTag.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 10  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  objID, ra, dec,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  sqrt( power(rowv,2) + power(colv, 2) ) as velocity  </td> </tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a>   </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE   </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  (power(rowv,2) + power(colv, 2)) &gt; 50   </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  AND rowv != -9999 and colv != -9999  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );

	qName = "repeat";
	qry = "Finding plates with repeat spectra";
	cmd = tableDef;
	cmd += "-- A query to list plates that have objects in common. <br>\r\n";
	cmd += "-- Returns the pairs of plates, the total number of nights <br>\r\n";
	cmd += "-- on which the objects they have in common have been observed, the progam to <br>\r\n";
	cmd += "-- which the special plate belongs, and the number of objects the plates <br>\r\n";
	cmd += "-- have in common. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT first.plate, other.plate, \r\n";
	cmd += "<dd>  COUNT(DISTINCT other.mjd) + COUNT(DISTINCT first.mjd) AS nightsObserved, \r\n";
	cmd += "<dd>  otherPlate.programname, count(DISTINCT other.bestObjID) AS objects\r\n";
	cmd += "<br>  FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObjAll+U\">SpecObjAll</a> first\r\n";
	cmd += "<dd>  JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObjAll+U\">SpecObjAll</a> other ON first.bestObjID = other.bestObjID\r\n";
	cmd += "<dd>  JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PlateX+U\">PlateX</a> AS firstPlate ON firstPlate.plate = first.plate\r\n";
	cmd += "<dd>  JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PlateX+U\">PlateX</a> AS otherPlate ON otherPlate.plate = other.plate\r\n";
	cmd += "<br>  WHERE first.scienceprimary = 1 AND other.scienceprimary = 0 \r\n";
	cmd += "<dd>  AND other.bestObjID &gt; 0\r\n";
	cmd += "<br>  GROUP BY first.plate, other.plate, otherPlate.programname\r\n";
	cmd += "<br>  ORDER BY nightsObserved DESC, otherPlate.programname, \r\n";
	cmd += "<dd>  first.plate, other.plate<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "galstar";
	qry = "Galaxies blended with stars";
	cmd = tableDef;
	cmd += "-- Find galaxies that are blended with a star, and output the <br>\r\n";
	cmd += "-- deblended galaxy magnitudes.  <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- This query introduces the use of multiple tables or views with a table JOIN clause.<br>\r\n";
	cmd += "-- You can assign nicknames to tables as in the FROM clause below. Since you are using<br>\r\n";
	cmd += "-- multiple tables, you must specify which table each quantity in the SELECT clause   <br>\r\n";
	cmd += "-- comes from.  The \"ON <condition>\" part of the JOIN clause specifies the joining    <br>\r\n";
	cmd += "-- condition between the two tables, which is achieved by requiring that a quantity   <br>\r\n";
	cmd += "-- present in both tables be equal. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 10 G.ObjID, G.u, G.g, G.r, G.i, G.z     </td> <td> -- get the ObjID and final mags  </td> </tr>\r\n";
	cmd += "<tr> <td> FROM  <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a> AS G 	</td> <td> -- use two Views, <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a> and <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a>, as a   </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a> AS S	</td> <td> -- convenient way to compare objects</td> </tr>\r\n";
	cmd += "<tr> <td> <dd> &nbsp;&nbsp; ON G.parentID = S.parentID	</td> <td> -- JOIN condition: star has same parent  </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE G.parentID &gt; 0             		</td> <td> -- galaxy has a \"parent\", which tells us this   </td> </tr>\r\n";
	cmd += "<tr> <td> 				 		</td> <td> -- object was deblended  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );


	qName = "countsbytype";
	qry = "Object counts by type and program";
	cmd = tableDef;
	cmd += "-- List the number of each type of object observed by each <br>\r\n";
	cmd += "-- special spectroscopic observation program. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT plate.programname, class, \r\n";
	cmd += "<dd>COUNT(specObjId) AS numObjs \r\n";
	cmd += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObjAll+U\">SpecObjAll</a>\r\n";
	cmd += "<dd>JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PlateX+U\">PlateX</a> AS plate ON plate.plate = specObjAll.plate\r\n";
	cmd += "<br>GROUP BY plate.programname, class\r\n";
	cmd += "<br>ORDER BY plate.programname, class\r\n";
	cmd += "<br><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "footprint";
	qry = "Checking if objects are in SDSS footprint";
	cmd = tableDef;
	cmd += "-- This query uses the OUTER APPLY construct to apply a <br>\r\n";
	cmd += "-- table-valued function to the results of a query. <br>\r\n";
	cmd += "-- ( See also example below of checking whether a single point is in the SDSS footprint.)  <br>\r\n";
	cmd += "-- In this example, we use the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fInFootprintEq+F\">fFootPrintEq</a> function which returns a <br>\r\n";
	cmd += "-- a non-NULL value (\"POLYGON\") if the area specified by the RA, dec and  <br>\r\n";
	cmd += "-- radius is inside the SDSS footprint.             <br>\r\n";
	cmd += "-- For each point in the input list, in this case the result of a query   <br>\r\n";
	cmd += "-- on PhotoObj, return \"yes\" or \"no\" depending on whether the point is in <br>\r\n";
	cmd += "-- the SDSS footprint or not, along with any other needed columns.        <br>\r\n";
	cmd += "-- Note that this is really a trivial example since every point in PhotoObj <br>\r\n";
	cmd += "-- is already in the SDSS footprint.  To be really meaningful, a query like  <br>\r\n";
	cmd += "-- this needs to be run on a list of RA, decs that may or may not be in the  <br>\r\n";
	cmd += "-- in the SDSS footprint.  This can be done using a MyDB table in CasJobs <br>\r\n";
	cmd += "-- containing the list of points, for example, or by uploading a list in <br>\r\n";
	cmd += "-- the Object Crossid tool. <br>\r\n";
	cmd += "<br>SELECT top 100 objID, ra, dec,\r\n";
	cmd += "<dd> (CASE WHEN q.type IS NULL THEN 'NO' ELSE 'YES' END) AS found\r\n";
	cmd += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+V\">PhotoObj</a> AS p\r\n";
	cmd += "<dd>OUTER APPLY dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fFootprintEq+F\">fFootprintEq</a>(ra,dec,0.1) AS q\r\n";
	cmd += "<br>WHERE (ra BETWEEN 179.5 AND 182.3) AND (dec BETWEEN -1.0 AND 1.8)\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "<tr><td colspan=2><br>\r\n";
	cmd2 = "-- Checking the footprint for a single point with the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fInFootprintEq+F\">fInFootprintEq</a> scalar function. \r\n";
	cmd2 += "<br>SELECT dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fInFootprintEq+F\">fInFootprintEq</a>(180, -0.5, 0.2)\r\n";
	cmd2 += "<br><br>\r\n";
	cmd2 += "-- Or if you have a table containing ra,dec values (for example a MyDB table <br>\r\n";
	cmd2 += "-- in CasJobs), you can do something lile:\r\n";
	cmd2 += "<br>SELECT dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fInFootprintEq+F\">fInFootprintEq</a>(t.ra, t.dec, 0.1)\r\n";
	cmd2 += "<br>FROM MyTable_10 AS t\r\n";
	cmd2 += "<br></td></tr>\r\n";
	cmd2 += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd+cmd2 );	
	
	

	qName = "cleanStars";
	qry = "Clean photometry with flags - Stars";
	
	cmd = tableDef;
	cmd += "-- The <a href=\"#clean\">Clean Photometry</a> sample query above showed how<br>\r\n";
	cmd += "-- to select only objects for which SDSS-III imaging pipeline has declared <br>\r\n";
	cmd += "-- the photometry clean. Usually, it is sufficient to search only the CLEAN flag;<br>\r\n";
	cmd += "-- but in some contexts, it is important to know what conditions<br>\r\n";
	cmd += "-- are required for the CLEAN flag to be set. The imaging pipeline sets the<br>\r\n";
	cmd += "-- CLEAN flag based on the values of other flags; these necessary values are<br>\r\n";
	cmd += "-- different for stars and galaxies. The version of this sample query for galaxies<br>\r\n";
	cmd += "-- can be found in the <a href=\"#cleanGals\">Clean photometry - Galaxies</a> sample query.<br>\r\n";
	cmd += "<br>\r\n";
	
	cmd += "-- For queries on star objects, when you use PSF mags, use only PRIMARY objects  <br>\r\n";
	cmd += "-- and the flag combinations indicated below.  If you use the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a> view as this sample<br>\r\n";
	cmd += "-- query does, you will get only primary objects; otherwise you will need to add<br>\r\n";
	cmd += "-- a \"mode=1\" constraint. For example, if you are interested in r-band magnitudes<br>\r\n";
	cmd += "-- of objects, perform the following checks (add analogous checks with AND for<br>\r\n";
	cmd += "-- other bands if you are interested in multiple magnitudes or colors).<br>\r\n";
	cmd += "<br>\r\n";
	
	cmd += "-- In this query, the human-readable flag names (through calls to the flag<br>\r\n";
	cmd += "-- functions have been replaced with explicit values. Using explicit values for flags<br>\r\n";
	cmd += "-- makes the queries run much faster.";
	
	cmd += "<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</tr></td>\r\n";
	cmd += "<tr><td colspan=2>\r\n";
	cmd += "SELECT TOP 10 u,g,r,i,z,ra,dec, flags_r <br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a> <br>\r\n";
	cmd += "WHERE <br>\r\n";
	cmd += "<dd> ra BETWEEN 180 and 181 AND dec BETWEEN -0.5 and 0.5\r\n";
	cmd += "<dd> AND ((flags_r & 0x10000000) != 0)\r\n";
	cmd += "<dd> -- detected in BINNED1\r\n";
	cmd += "<dd> AND ((flags_r & 0x8100000c00a4) = 0) \r\n";
	cmd += "<dd> -- not EDGE, NOPROFILE, PEAKCENTER, NOTCHECKED, PSF_FLUX_INTERP, \r\n";
	cmd += "<dd> -- SATURATED, or BAD_COUNTS_ERROR\r\n";
	cmd += "<dd> AND (((flags_r & 0x400000000000) = 0) or (psfmagerr_r <= 0.2))\r\n";
	cmd += "<dd> -- not DEBLEND_NOPEAK or small PSF error \r\n";
	cmd += "<dd> -- (substitute psfmagerr in other band as appropriate)\r\n";
	cmd += "<dd> AND (((flags_r & 0x100000000000) = 0) or (flags_r & 0x1000) = 0)\r\n";
	cmd += "<dd> -- not INTERP_CENTER or not COSMIC_RAY <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "cv";
	qry = "Cataclysmic variables (CVs) using colors";
	cmd = tableDef;
	cmd += "-- Search for Cataclysmic Variables and pre-CVs with White Dwarfs and <br>\r\n";
	cmd += "-- very late secondaries, using simple color cuts from <a href=\"mailto:szkody@astro.washington.edu\">Paula Szkody</a>.<br>\r\n";
	cmd += "-- This is a simple query that uses math in the WHERE clause.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 100 run,           </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  camCol,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  rerun,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  field,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  objID,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  u, g, r, i, z,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  ra, dec   		</td> <td> -- Just get some basic quantities  </td> </tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a>	</td> <td> -- From all stellar primary detections</td> </tr>\r\n";
	cmd += "<tr> <td> WHERE  u - g &lt; 0.4  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  and  g - r &lt; 0.7  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  and  r - i &gt; 0.4   </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  and  i - z &gt; 0.4   	</td> <td> -- that meet the color criteria  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );
	

	qName = "bincol";
	qry = "Binary stars colors";
	cmd = tableDef;
	cmd += "-- Find binary stars with specific colors.                         <br>\r\n";
	cmd += "-- At least one of them should have the colors of a white dwarf.   <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 100 s1.objID as s1, s2.objID as s2		</td><td> </td></tr>\r\n";
	cmd += "<tr> <td> FROM	<a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a> AS S1	</td><td> -- S1 is the white dwarf </td></tr>\r\n";
	cmd += "<tr> <td> &nbsp;&nbsp; JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Neighbors+U\">Neighbors</a> AS N  ON S1.objID = N.objID	</td><td> -- N is the precomputed neighbors lists </td></tr>\r\n";
	cmd += "<tr> <td> &nbsp;&nbsp; JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a> AS S2 ON S2.objID = N.NeighborObjID		</td><td> -- S2 is the second star </td></tr>\r\n";
	cmd += "<tr> <td> WHERE </td><td>  </td></tr>\r\n";
	cmd += "<tr> <td> <dd>    N.NeighborType = dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoType+F\">fPhotoType</a>('Star')	</td><td> -- and S2 is a star </td></tr>\r\n";
	cmd += "<tr> <td> <dd>    and N.distance &lt; .05				</td><td> -- the 3 arcsecond test </td></tr>\r\n";
	cmd += "<tr> <td> <dd>    and ((S1.u - S1.g) &lt; 0.4 )			</td><td> -- and S1 meets Paul Szkodys color cut for </td></tr>\r\n";
	cmd += "<tr> <td> <dd>    and (S1.g - S1.r) &lt; 0.7 			</td><td> -- white dwarfs. </td></tr>\r\n";
	cmd += "<tr> <td> <dd>    and (S1.r - S1.i) &gt; 0.4 			</td><td>  </td></tr>\r\n";
	cmd += "<tr> <td> <dd>    and (S1.i - S1.z) &gt; 0.4			</td><td>  </td></tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "spplines";
	qry = "Using the sppLines table";
	cmd = tableDef;
	cmd += "-- Another example of using the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+sppLines+U\">sppLines</a> table generated by<br>\r\n";
	cmd += "-- the <a href=\""+globals.SdssUrl+"spectro/sspp.php\">SEGUE Spectroscopic Parameter Pipeline</a>. This sample query<br>\r\n";
	cmd += "-- selects low metallicity stars ([Fe/H] &lt; -3.5) where more than three<br>\r\n";
	cmd += "-- different measures of feh are ok and are averaged. <br>\r\n";

	cmd += "<br> SELECT sl.plate, sl.mjd, sl.fiber,\r\n";
	cmd += "<dd>        sl.caIIKside, sl.caIIKerr, sl.caIIKmask,\r\n";
	cmd += "<dd>        sp.fehadop, sp.fehadopunc,sp. fehadopn,\r\n";
	cmd += "<dd>        sp.loggadopn,sp.loggadopunc,sp.loggadopn</dd>\r\n";
	cmd += "<br> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+sppLines+U\">sppLines</a> AS sl\r\n";
	cmd += "<dd> JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+sppParams+U\">sppParams</a> AS sp ON sl.specobjid = sp.specobjid</dd>\r\n";
	cmd += "<br>WHERE\r\n";
	cmd += "<dd>        fehadop &lt; -3.5 and fehadopunc between 0.01 and 0.5\r\n";
	cmd += "<dd>        AND fehadopn &gt; 3\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );
	

	qName = "sppparams";
	qry = "Using the sppParams table";
	cmd = tableDef;
	cmd += "-- This sample query searches the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+sppParams+U\">sppParams</a> table, which contains<br>\r\n";
	cmd += "-- stellar parameters calculated by the <a href=\""+globals.SdssUrl+"spectro/sspp.php\">SEGUE Spectroscopic Parameter Pipeline</a>.<br>\r\n";
	cmd += "-- The sample query selects spectroscopic stars in specific ranges of metallicity,<br>\r\n";		
	cmd += "--  gravity and temperature (with some flag checks).<br>\r\n";

	cmd += "<br> SELECT top 10 so.bestobjid, so.specobjid, so.plate, so.mjd, so.fiberid,\r\n";
	cmd += "<dd>  sp.teffadop, sp.fehadop, sp.loggadop, sp.snr, sp.flag \r\n";
//	cmd += "<dd>  , sp.elodiervfinalerr, sp.elodiervfinal, ph.ra, ph.dec, ph.psfmag_u, ph.psfmag_g,\r\n";
//	cmd += "<dd>  ph.psfmag_r, ph.psfmag_i, ph.psfmag_z\r\n";
	cmd += "<br> FROM specobjall so\r\n";
	cmd += "<dd> -- get the stellar params for each spectrum.\r\n";
	cmd += "<dd> -- the sciencePrimary=1 guarantees no repeats in this query, but not all\r\n";
	cmd += "<dd> -- these spectra will be from SEGUE\r\n";
	cmd += "<dd> JOIN sppparams sp ON so.specobjid = sp.specobjid and so.sciencePrimary=1\r\n";
	cmd += "<dd> -- get the photometry info. note the \"dr7\" context prefix that will go\r\n";
	cmd += "<dd> -- away when we get the dr8 imaging\r\n";
	cmd += "<br> WHERE sp.teffadop > 4500 and sp.teffadop < 5500\r\n";
	cmd += "<dd>  and fehadop > -2 and fehadop < -1.5\r\n";
	cmd += "<dd>  and loggadop > 2 and loggadop < 3\r\n";
	cmd += "<dd> -- demand that the first two letters of the sspp flags be n (see web page docs)\r\n";
	cmd += "<dd> -- the like and % are for sub-string comparisons\r\n";
	cmd += "<dd>  and sp.flag like '_n%'\r\n";
	cmd += "<dd>  and sp.snr > 30<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "pm";
	qry = "Proper motions in an open cluster";
	cmd = tableDef;
	cmd += "-- Select stars surrounding the open cluster M67, include positions, color mag \r\n";
	cmd += "<br />-- and propermotion and pm errors. \r\n";
	cmd += "<br />\r\n";
	cmd += "<br>SELECT TOP 100 s.ra, s.dec, s.psfmag_g, (s.psfmag_g - s.psfmag_r) as gmr,\r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; pm.pmra, pm.pmdec, pm.pmraerr, pm.pmdecerr, pm.pml, pm.pmb\r\n";
	cmd += "<br>FROM star s\r\n";
	cmd += "<br>&nbsp;&nbsp;&nbsp; JOIN propermotions pm ON s.objid = pm.objid\r\n";
	cmd += "<br>WHERE \r\n";
	cmd += "<dd>s.ra between 132.85-0.25 and 132.85+0.25 \r\n";
	cmd += "<dd>and s.dec between 11.82-0.25 and 11.82+0.25\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "photoz";
	qry = "Photometric Redshifts";
	cmd = tableDef;
	cmd += "-- Here is a simple query for objects with reliable redshift estimation in the 0.4 < z < 0.5 range<br>\r\n";
	cmd += "-- The query uses the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Photoz+U\">Photoz</a> table that contains photometric redshift estimates for galaxies. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<td><tr>\r\n";
	cmd += "<tr><td colspan=2>SELECT TOP 100 objId,z,zErr,absMagR<br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Photoz+U\">Photoz</a><br>\r\n";
	cmd += "WHERE<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;&nbsp; z BETWEEN 0.4 and 0.5<br>\r\n";
	cmd += "</td></tr>\r\n";
    cmd += "<tr><td>&nbsp;&nbsp;&nbsp;&nbsp; and photoErrorClass=1 </td><td> -- the estimated object has low photometric errors, and enough nearest<br>\r\n</td></tr>";
    cmd += "<tr><td>&nbsp;&nbsp;&nbsp;&nbsp; and nnCount>95  </td><td> -- neighbors in the reference set; note that zErr=-9999 indicates an<br>\r\n</td></tr>";
    cmd += "<tr><td>&nbsp;&nbsp;&nbsp;&nbsp; and zErr BETWEEN 0 and 0.03   </td><td> -- unreliable redshift estimate, hence the lower bound on zErr<br>\r\n</td></tr>";
	cmd += "<tr><td colspan=2><br>\r\n";
	cmd2 = "-- A simple luminosity function with the same selection criteria as above<br>\r\n";
	cmd2 += "-- Returns a histogram of absolute magnitudes for the given redshift range.<br>\r\n";
	cmd2 += "-- (You will need to cut and paste this query if you want to run it in the <a href=\""+url+"/tools/search/sql.aspx\">SQL Search page</a>, <br>\r\n";
	cmd2 += "-- the above buttons will only load/run the first query).<br>\r\n";
	cmd2 += "SELECT round(absMagR,1) as absMagR, COUNT(*) as cnt<br>\r\n";
	cmd2 += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Photoz+U\">Photoz</a><br>\r\n";
	cmd2 += "WHERE<br>\r\n";
	cmd2 += "&nbsp;&nbsp;&nbsp;&nbsp; z BETWEEN 0.4 and 0.5<br>\r\n";
    cmd2 += "&nbsp;&nbsp;&nbsp;&nbsp; and photoErrorClass=1 and nnCount>95<br>\r\n";
	cmd2 += "&nbsp;&nbsp;&nbsp;&nbsp; and  zErr BETWEEN 0 and 0.03<br>\r\n";
	cmd2 += "group by round(absMagR,1)<br>\r\n";
	cmd2 += "order by round(absMagR,1)<br>\r\n";
	cmd2 += "<br></td></tr>\r\n";
	cmd2 += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd+cmd2 );

	qName = "specOther1";
	qry = "Finding Spectra in Other Programs - I";
	cmd = tableDef;
	cmd += "-- This sample query find objects with spectra in the<br>\r\n";
	cmd += "-- regular program of the SEGUE-2 survey.  It checks<br>\r\n";
	cmd += "-- both the \"survey\" tag (which tells you the overall<br>\r\n";
	cmd += "-- survey) and the \"programname\" tag (which distinguishes<br>\r\n";
	cmd += "-- subprograms within each survey).  The PlateX table<br>\r\n";
	cmd += "-- also has the survey and programname tags.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 50 ra, dec, specobjid, plate, mjd, fiberid<br>\r\n";
	cmd += "FROM specObj<br>\r\n";
	cmd += "WHERE survey = 'segue2' and programname = 'segue2'<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "specOther2";
	qry = "Finding Spectra in Other Programs - II";
	cmd = tableDef;
	cmd += "-- There are five possible survey names (\"sdss\", \"segue1\",<br>\r\n";
	cmd += "-- \"segue2\", \"boss\" and \"apogee\", though APOGEE is not<br>\r\n";
	cmd += "-- available in DR9 and earlier).  Within each survey there<br>\r\n";
	cmd += "-- can be a number of programnames; the main programs<br>\r\n";
	cmd += "-- of each survey are:<br>\r\n";
	cmd += "--  survey = 'sdss' and programname = 'legacy'<br>\r\n";
	cmd += "--  survey = 'segue1' and programname = 'segue'<br>\r\n";
	cmd += "--  survey = 'segue2' and programname = 'segue2'<br>\r\n";
	cmd += "--  survey = 'boss' and programname = 'boss'<br>\r\n";
	cmd += "-- For the SEGUE-1 and SDSS surveys in particular there<br>\r\n";
	cmd += "-- are multiple programs.  A full list of surveys and programs<br>\r\n";
	cmd += "-- can be obtained with:<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT DISTINCT survey, programname<br>\r\n";
	cmd += "FROM platex<br>\r\n";
	cmd += "ORDER BY survey<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "cleanGals";
	qry = "Clean photometry with flags - Galaxies";
	cmd = tableDef;
	
	cmd += "-- The <a href=\"#clean\">Clean Photometry</a> sample query above showed how<br>\r\n";
	cmd += "-- to select only objects for which SDSS-III imaging pipeline has declared <br>\r\n";
	cmd += "-- the photometry clean. Usually, it is sufficient to search only the CLEAN flag;<br>\r\n";
	cmd += "-- but in some contexts, it is important to know what conditions<br>\r\n";
	cmd += "-- are required for the CLEAN flag to be set. The imaging pipeline sets the<br>\r\n";
	cmd += "-- CLEAN flag based on the values of other flags; these necessary values are<br>\r\n";
	cmd += "-- different for stars and galaxies. The version of this sample query for stars<br>\r\n";
	cmd += "-- can be found in the <a href=\"#cleanstars\">Clean photometry - Stars</a> sample query.<br>\r\n";
	cmd += "<br>\r\n";
	
	cmd += "-- For galaxies (i.e. not using PSF mags): Again use only PRIMARY objects. Other <br>\r\n";
	cmd += "-- cuts are nearly the same, but remove the cut on EDGE. Possibly also remove <br>\r\n";
	cmd += "-- the cut on INTERP flags. <br>\r\n";
	cmd += "<br>\r\n";
	
	cmd += "-- In this query, the human-readable flag names (through calls to the flag<br>\r\n";
	cmd += "-- functions have been replaced with explicit values. Using explicit values for flags<br>\r\n";
	cmd += "-- makes the queries run much faster.<br>\r\n";
	
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 10 u,g,r,i,z,ra,dec, flags_r <br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a> <br>\r\n";
	cmd += "WHERE<br>\r\n"; 
	cmd += "<dd> ra BETWEEN 180 and 181 AND dec BETWEEN -0.5 and 0.5\r\n";
	cmd += "<dd> AND ((flags_r & 0x10000000) != 0)\r\n";
	cmd += "<dd> -- detected in BINNED1\r\n";
	cmd += "<dd> AND ((flags_r & 0x8100000c00a0) = 0) \r\n";
	cmd += "<dd> -- not NOPROFILE, PEAKCENTER, NOTCHECKED, PSF_FLUX_INTERP, SATURATED, \r\n";
	cmd += "<dd> -- or BAD_COUNTS_ERROR.\r\n";
	cmd += "<dd> -- if you want to accept objects with interpolation problems for PSF mags,\r\n";
	cmd += "<dd> -- change this to: AND ((flags_r & 0x800a0) = 0)\r\n";
	cmd += "<dd> AND (((flags_r & 0x400000000000) = 0) or (psfmagerr_r <= 0.2))\r\n";
	cmd += "<dd> -- not DEBLEND_NOPEAK or small PSF error \r\n";
	cmd += "<dd> -- (substitute psfmagerr in other band as appropriate)\r\n";
	cmd += "<dd> AND (((flags_r & 0x100000000000) = 0) or (flags_r & 0x1000) = 0)\r\n";
	cmd += "<dd> -- not INTERP_CENTER or not COSMIC_RAY - omit this AND clause if you want to\r\n";
	cmd += "<dd> -- accept objects with interpolation problems for PSF mags. <br>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "galblue";
	qry = "Galaxies with blue centers";
	cmd = tableDef;
	cmd += "-- Galaxies with bluer centers, by Michael Strauss. For all galaxies with r_Petro &lt; 18, <br>\r\n";
	cmd += "-- not saturated, not bright, and not edge, give me those with centers appreciably bluer <br>\r\n";
	cmd += "-- than their outer parts, i.e., define the center color as: u_psf - g_psf and define <br>\r\n";
	cmd += "-- the outer color as: u_model - g_model; give me all objs which have <br>\r\n";
	cmd += "-- &nbsp;&nbsp;&nbsp;&nbsp;(u_model - g_model) - (u_psf - g_psf) &lt; -0.4 <br>\r\n";
	cmd += "-- <br>\r\n";
	cmd += "-- Another flags-based query. <br>\r\n";
	cmd += "-- NOTE: This query takes a long time to run without the \"TOP 1000\". <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 1000  </td> </tr>\r\n";
	cmd += "<tr> <td>  <dd> modelMag_u, modelMag_g,  objID    </td> </tr>\r\n";
	cmd += "<tr> <td> FROM  <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>  </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE   </td> </tr>\r\n";
	cmd += "<tr> <td>   <dd>( Flags & (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('SATURATED') +   </td> </tr>\r\n";
	cmd += "<tr> <td>   <dd>&nbsp;&nbsp;&nbsp;              dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BRIGHT') +    </td> </tr>\r\n";
	cmd += "<tr> <td>   <dd>&nbsp;&nbsp;&nbsp;              dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('EDGE')) ) = 0   </td> </tr>\r\n";
	cmd += "<tr> <td>   <dd>and petroRad_r &lt; 18  </td> </tr>\r\n";
	cmd += "<tr> <td>   <dd>and ((modelMag_u - modelMag_g) - (psfMag_u - psfMag_g)) &lt; -0.4  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd );

	qName = "diamlim";
	qry = "Diameter limited sample";
	cmd = tableDef;
	cmd += "-- Diameter-limited sample of galaxies from <a href=\"mailto:annis@fnal.gov\">James Annis</a>. <br>\r\n";
	cmd += "-- Another query showing the use of flags, now using the bitwise '|' (or). <br>\r\n";
	cmd += "-- NOTE: This query takes a long time to run without the \"TOP 10\", please see below for a faster version. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 10  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  run,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   camCol,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   rerun,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   field,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   objID,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   ra,   </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>   dec  </td> </tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>  </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE ( flags & (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED1')  </td> </tr>\r\n";
	cmd += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;                | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED2')  </td> </tr>\r\n";
	cmd += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;                 | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED4')) ) &gt; 0   </td> </tr>\r\n";
	cmd += "<tr> <td> &nbsp; &nbsp;   and ( flags & (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BLENDED')  </td> </tr>\r\n";
	cmd += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;                 | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('NODEBLEND')  </td> </tr>\r\n";
	cmd += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;                 | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('CHILD')) ) != dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BLENDED')  </td> </tr>\r\n";
	cmd += "<tr> <td> &nbsp; &nbsp;   and ( (flags & dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('NOPETRO') = 0)  </td> </tr>\r\n";
	cmd += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;       and  petroR50_i &gt; 15)  </td> </tr>\r\n";
	
    cmd2 = "<tr> <td colspan=2><br>-- A much faster way to do this query is to substitute the actual flag values rather   <br>\r\n";
	cmd2 += "<tr> <td colspan=2>-- than calling the dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a> functions for each row selected by the query.    <br></td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2>-- Invoking these functions for potentially millions of rows is quite expensive.  You <br></td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2>-- can avoid this by first running the 4 quick \"pre-queries\" shown below, with the  <br></td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2>-- indicated values returned from each query.  Then use these values to substitute <br></td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2>-- in the original query as shown in the last query below.  <br></td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd2 += "<tr> <td>1) SELECT (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED1')  </td> </tr>\r\n";
	cmd2 += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;                | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED2')  </td> </tr>\r\n";
	cmd2 += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;                 | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED4')) </td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2> -- This returns the value 1879048192. </td> </tr>\r\n"; 
	cmd2 += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd2 += "<tr> <td>2) SELECT (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BLENDED')  </td> </tr>\r\n";
	cmd2 += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;                 | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('NODEBLEND')  </td> </tr>\r\n";
	cmd2 += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;                 | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('CHILD')) </td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2> -- This returns the value 88. </td> </tr>\r\n"; 
	cmd2 += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd2 += "<tr> <td>3) SELECT dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BLENDED')  &nbsp; &nbsp; &nbsp; &nbsp;-- This returns 8.</td> </tr>\r\n";
	cmd2 += "<tr> <td>4) SELECT dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('NOPETRO')  &nbsp; &nbsp; &nbsp; &nbsp;-- This returns 256.</td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd2 += "<tr> <td colspan=2> -- Finally, here is the original query with these values instead of the function calls. </td> </tr>\r\n"; 
	var cmd3 = "<tr> <td>SELECT TOP 10 </td> </tr>\r\n";
	cmd3 += "<tr> <td> <dd>  run,  </td> </tr>\r\n";
	cmd3 += "<tr> <td> <dd>   camCol,  </td> </tr>\r\n";
	cmd3 += "<tr> <td> <dd>   rerun,  </td> </tr>\r\n";
	cmd3 += "<tr> <td> <dd>   field,  </td> </tr>\r\n";
	cmd3 += "<tr> <td> <dd>   objID,  </td> </tr>\r\n";
	cmd3 += "<tr> <td> <dd>   ra,   </td> </tr>\r\n";
	cmd3 += "<tr> <td> <dd>   dec  </td> </tr>\r\n";
	cmd3 += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>  </td> </tr>\r\n";
	cmd3 += "<tr> <td>WHERE </td> </tr>\r\n";
	cmd3 += "<tr> <td> &nbsp; &nbsp; ( flags & 1879048192  ) &gt; 0 </td> </tr>\r\n";
	cmd3 += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;  and ( flags & 88 ) != 8 </td> </tr>\r\n";
	cmd3 += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;  and ( (flags & 256 = 0) </td> </tr>\r\n";
	cmd3 += "<tr> <td> &nbsp; &nbsp; &nbsp; &nbsp;       and  petroR50_i &gt; 15)  </td> </tr>\r\n";
	cmd3 += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd3 += "</table>\r\n<br><br>\r\n";
	showQuery( qName, qry, cmd, cmd+cmd2+cmd3 );

	qName = "lrg";
	qry = "SDSS luminous red galaxy selection";
	cmd = tableDef;
	cmd += "-- A version of the LRG sample, by James Annis. <br>\r\n";
	cmd += "-- Not precisely the same version as that used in target selection. <br>\r\n";
	cmd += "-- Another query with many conditions and flag tests. <br>\r\n";
	cmd += "-- As with the previous example, this query will run much faster if <br>\r\n";
	cmd += "-- the flag function calls are replaced with explicit values. <br>\r\n";
	cmd += "<br>\r\n";
	cmd += "</td></tr>\r\n";
	cmd += "<tr> <td> SELECT TOP 10  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  run,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  camCol,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  rerun,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  field,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  objID,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  ra,  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>  dec  </td> </tr>\r\n";
	cmd += "<tr> <td> FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>  </td> </tr>\r\n";
	cmd += "<tr> <td> WHERE ( ( flags & (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED1')  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd>                   | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED2')  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd>                   | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BINNED4')) ) &gt; 0  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>     and ( flags & (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BLENDED')  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd>                   | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('NODEBLEND')  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd>                   | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('CHILD')) ) != dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('BLENDED')  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>     and ( flags & (dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('EDGE')  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd>                   | dbo.<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fPhotoFlags+F\">fPhotoFlags</a>('SATURATED')) ) = 0  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>     and petroMag_i &gt; 17.5  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>     and (petroMag_r &gt; 15.5  or  petroR50_r &gt; 2)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>     and (petroMag_r &gt; 0  and  g &gt; 0  and  r &gt; 0  and  i &gt; 0)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>     and ( (petroMag_r-extinction_r) &lt; 19.2  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>       and (petroMag_r - extinction_r &lt;  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd>              (13.1 + (7/3) * (dered_g - dered_r) + 4 * (dered_r - dered_i)   </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd> <dd> 		- 4 * 0.18) )    </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>       and ( (dered_r - dered_i - (dered_g - dered_r)/4 - 0.18) &lt; 0.2)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>       and ( (dered_r - dered_i - (dered_g - dered_r)/4 - 0.18) &gt; -0.2)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> -- dered_ quantities already include reddening  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>       and ( (petroMag_r - extinction_r +  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd>              2.5 * LOG10(2 * 3.1415 * petroR50_r * petroR50_r)) &lt; 24.2) )  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>     or  ( (petroMag_r - extinction_r &lt; 19.5)  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>       and ( (dered_r - dered_i - (dered_g - dered_r)/4 - 0.18) &gt; (0.45 - 4 *   </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd> 		(dered_g - dered_r)) )  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>       and ( (dered_g - dered_r) &gt; (1.35 + 0.25 * (dered_r - dered_i)) ) )  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd>     and ( (petroMag_r - extinction_r +  </td> </tr>\r\n";
	cmd += "<tr> <td> <dd> <dd>            2.5 * LOG10(2 * 3.1415 * petroR50_r * petroR50_r) ) &lt; 23.3 ) )  </td> </tr>\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "zoo";
	qry = "Classifications from Galaxy Zoo";
	cmd = tableDef;
	cmd += "-- DR8 includes data on visual galaxy morphologies from the <br>\r\n";
	cmd += "-- Galaxy Zoo project. <a href=\"http://www.galaxyzoo.org\">Galaxy Zoo</a> is a web-based project<br>\r\n";
	cmd += "-- that used the collective efforts of about 100,000 volunteer <br>\r\n";
	cmd += "-- citizen scientists to classify more than one million<br>\r\n";
	cmd += "-- SDSS DR7 Main Galaxy Sample (MGS) galaxies.<br>\r\n";
	cmd += "-- Full details on the classification process, including the operation<br>\r\n";
	cmd += "-- of the site and estimates of classification accurary, are given in<br>\r\n";
    cmd += "-- <a href=\"http://adsabs.harvard.edu/abs/2008MNRAS.389.1179L\">Lintott et al. (2008)</a>.<br>\r\n";
	cmd += "<br>\r\n";
	
    cmd += "-- Galaxy Zoo data are contained in tables that begin with <em>zoo</em><br>\r\n";
    cmd += "-- in the DR8 schema. For each galaxy, available data includes its<br>\r\n";
    cmd += "-- SDSS object ID and weighted probabilities for each of six different<br>\r\n";
    cmd += "-- morphological classifications based on counts of volunteer \"votes\".<br>\r\n";
    cmd += "-- Full details on what data the Galaxy Zoo catalog contains are given</a><br>\r\n";
    cmd += "-- in <a href=\"http://adsabs.harvard.edu/abs/2011MNRAS.410..166L\">Lintott et al. (2010).</a><br>\r\n";
    cmd += "<br>\r\n";
    
    cmd += "-- The first query below finds the weighted probability that a given galaxy<br>\r\n";
    cmd += "-- has each of the six morphological classifications.<br>\r\n";
    cmd += "-- The second query finds 100 galaxies that have clean photometry,<br>\r\n";
    cmd += "-- at least 10 Galaxy Zoo volunteer votes and at least an 80% probability<br>\r\n";
    cmd += "-- of being clockwise spirals.<br>\r\n";
    
	cmd += "<br>\r\n";	      
	
	cmd += "</td></tr>\r\n";
	cmd += "<tr><td>SELECT</td></tr>\r\n";
	cmd += "<tr><td><dd> objid, nvote,</td></tr>\r\n";
	cmd += "<tr><td><dd> p_el as elliptical,</td></tr>\r\n";
    cmd += "<tr><td><dd> p_cw as spiralclock, p_acw as spiralanticlock, p_edge as edgeon,</td></tr>\r\n";
    cmd += "<tr><td><dd> p_dk as dontknow, p_mg as merger</td></tr>\r\n";
	cmd += "<tr><td>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+ZooNoSpec+U\">ZooNoSpec</a> </td></tr>\r\n";
	cmd += "<tr><td>WHERE objid = 1237656495650570395</td></tr>\r\n";
	cmd += "<tr><td colspan=2><br></td></tr>\r\n";
	
	cmd += "<tr><td colspan=2>-- Second query: find likely clockwise spirals.<br>\r\n";
	cmd += "<br>\r\n";	
	
	cmd += "</td></tr>\r\n";

	cmd2 =  "<tr><td colspan=2>SELECT TOP 100</td></tr>\r\n";
	cmd2 += "<tr><td><dd> g.objid, zns.nvote,</td></tr>\r\n";
	cmd2 += "<tr><td><dd> zns.p_el as elliptical,</td></tr>\r\n";
    cmd2 += "<tr><td><dd> zns.p_cw as spiralclock, zns.p_acw as spiralanticlock, zns.p_edge as edgeon,</td></tr>\r\n";
    cmd2 += "<tr><td><dd> zns.p_dk as dontknow, zns.p_mg as merger</td></tr>\r\n";
    cmd2 += "<tr><td colspan=2>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a> as G<br></td></tr>\r\n";
   	cmd2 += "<tr> <td> JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+ZooNoSpec+U\">ZooNoSpec</a> AS zns";
	cmd2 += "<tr> <td> <dd> ON G.objid = zns.objid </td></tr>\r\n";
	cmd2 += "<tr><td>WHERE g.clean=1 and zns.nvote >= 10 and zns.p_cw > 0.8</td></tr>\r\n";
	cmd2 += "<tr><td colspan=2>	 <br></td></tr>\r\n";
	cmd2 += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd+cmd2 );



	qName = "bosstarg";
	qry = "BOSS Target Selection Sample";
	cmd = tableDef;
	cmd += "-- This query selects Luminous Red Galaxies between redshifts 0.4 and 0.65, \r\n";
	cmd += "<br>-- in a quasi-mass limited manner.  This query is very similar to part of the \r\n";
	cmd += "<br>-- selection of BOSS targets (the so-called CMASS LRGs). \r\n";
	cmd += "<br>\r\n";
	cmd += "<br>SELECT TOP 10 * \r\n";
	cmd += "<br>FROM photoprimary \r\n";
	cmd += "<br>WHERE";
	cmd += "<dd>(dered_r-dered_i) &lt; 2 AND ";
	cmd += "<dd>cmodelmag_i-extinction_i BETWEEN 17.5 AND 19.9 AND ";
	cmd += "<dd>(dered_r-dered_i) - (dered_g-dered_r)/8. &gt; 0.55 AND ";
	cmd += "<dd>fiber2mag_i &lt; 21.7 AND devrad_i &lt; 20. AND ";
	cmd += "<dd>dered_i &lt; 19.86 + 1.60*((dered_r-dered_i) - (dered_g-dered_r)/8. - 0.80) \r\n";
	cmd += "<br><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );



	qName = "bossgal1";
	qry = "BOSS Galaxy Stellar Masses";
	cmd = tableDef;
	cmd += "<br>-- This query does a table JOIN between the Portsmouth Passive (stellarMassPassivePort) \r\n";
	cmd += "<br>-- and Portsmouth Starforming (stellarMassStarformingPort) and Wisconsin PCA (stellarmMassPCAWisc) \r\n";
	cmd += "<br>-- tables and selects the stellar masses for a particular PLATE-MJD: \r\n";
	cmd += "<br>\r\n";
	cmd += "<br>SELECT TOP 10 passive.fiberid as fiberID, passive.ra, passive.dec, \r\n";
	cmd += "<dd>passive.z as z_noqso, passive.zerr as z_noqso_err, \r\n";
	cmd += "<dd>passive.logmass as passive_logmass, \r\n";
	cmd += "<dd>starforming.logmass as starforming_logmass, \r\n";
	cmd += "<dd>pca.mstellar_median as pca_logmass \r\n";
	cmd += "<br>FROM stellarMassPassivePort AS passive \r\n";
	cmd += "<dd>JOIN stellarMassStarformingPort AS starforming ON passive.specobjid = \r\n";
	cmd += "<br>starforming.specobjid \r\n";
	cmd += "<dd>JOIN stellarMassPCAWisc AS pca ON passive.specobjid = pca.specobjid \r\n";
	cmd += "<br>WHERE passive.plate = 3606 AND passive.mjd = 55182 AND pca.warning=0 \r\n";
	cmd += "<br><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );



	qName = "bossgal2";
	qry = "BOSS Galaxy Stellar Velocity Dispersions";
	cmd = tableDef;
	cmd += "<br>-- This query does a table JOIN between the Portsmouth Emission Lines (emissionLinesPort) \r\n";
	cmd += "<br>-- and Wisconsin PCA (stellarmMassPCAWisc) and the SpecObj tables and selects \r\n";
	cmd += "<br>-- the velocity dispersion for a particular PLATE-MJD: \r\n";
	cmd += "<br>\r\n";
	cmd += "<br>SELECT TOP 10 emline.fiberid as fiberID, emline.ra, emline.dec, \r\n";
	cmd += "<dd>emline.z as z_noqso, emline.zerr as z_noqso_err, \r\n";
	cmd += "<dd>emline.sigmaStars as emline_vdisp, emline.sigmaStarsErr as emline_vdisp_err, \r\n";
	cmd += "<dd>pca.vdisp_median as pca_vdisp, pca.vdisp_err as pca_vdisp_err, \r\n";
	cmd += "<dd>sp.veldisp as sp_vdisp, sp.veldisperr as sp_vdisp_err \r\n";
	cmd += "<br>FROM emissionLinesPort AS emline \r\n";
	cmd += "<dd>JOIN stellarMassPCAWisc AS pca ON emline.specobjid = pca.specobjid \r\n";
	cmd += "<dd>JOIN specObj as sp ON emline.specobjid = sp.specobjid \r\n";
	cmd += "<br>WHERE emline.plate = 3606 AND emline.mjd = 55182 AND pca.warning=0\r\n";
	cmd += "<br><br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );



	qName = "multiple";
	qry = "Stars multiply measured";
	cmd = tableDef;
	cmd += "<br>-- This query selects multiply-detected sources (stars) in photometry,\r\n";
	cmd += "<br>-- using the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+thingIndex+U\">thingIndex</a> and <a href=\""+url+"/help/browser/browser.aspx?cmd=description+detectionIndex+U\">detectionIndex</a> tables.  <a href=\""+url+"/help/browser/browser.aspx?cmd=description+thingIndex+U\">thingIndex</a> contains\r\n";
	cmd += "<br>-- a list of all unique sources, with a primary key defined called thingId,\r\n";
	cmd += "<br>-- and <a href=\""+url+"/help/browser/browser.aspx?cmd=description+detectionIndex+U\">detectionIndex</a> contains the objId of each observation of each\r\n";
	cmd += "<br>-- thingId.  The objId can be used to join with the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+thingIndex+V\">Star</a> view of the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObjAll+U\">photoObjAll</a> table\r\n";
	cmd += "<br>-- in order to recover the photometric data associated with each stellar observation.\r\n";
	cmd += "<br>\r\n";
	cmd += "<br>SELECT TOP 10 t.thingid, t.ndetect, d.objid, p.psfMag_r,\r\n";
	cmd += "<dd>p.psfMagerr_r \r\n";
	cmd += "<br>FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+thingIndex+U\">thingIndex</a> AS t\r\n";
	cmd += "<dd>JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+detectionIndex+U\">detectionindex</a> AS d ON t.thingid = d.thingid\r\n";
	cmd += "<dd>JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a> AS p ON d.objid = p.objid\r\n";
	cmd += "<br>WHERE t.ndetect > 1\r\n";
	cmd += "<tr> <td colspan=2> <br> </td> </tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "timeseries";
	qry = "Multiple Detections and Time Series";
	cmd = tableDef;
	cmd += "-- The <a href=\""+url+"/help/browser/browser.aspx?cmd=description+detectionIndex+U\">detectionIndex table</a> contains all detections of a given physical object,<br>\r\n";
	cmd += "-- which is uniquely identified by the \"thingid\". In order to extract photometry, <br>\r\n";
	cmd += "-- you need a join with the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObjAll+U\">PhotoObjAll table</a>, using the objid.<br>\r\n";
	cmd += "-- There is also a flag field called <i>isPrimary</i>, which is 1 for the object that<br>\r\n";
	cmd += "-- is found on a primary polygon/field, all the other detections have 0 in this field.<br>\r\n";
	cmd += "-- Here is a compound query to find all time series around a certain object with a thingid= 97423000<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    LTRIM(STR(mjd_r,20,2)) AS MJD,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    dbo.fSDSS(p.objId) AS ID,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    modelMag_g, modelMagErr_g,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    modelMag_r, modelMagErr_r,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    modelMag_i, modelMagErr_i, p.ra, p.dec <br>\r\n";
	cmd += "INTO #list<br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+detectionIndex+U\">detectionindex</a> d <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObjAll+U\">PhotoObjAll</a> p ON d.objid=p.objid<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Field+U\">Field</a> f ON p.fieldid=f.fieldid<br>\r\n";
	cmd += "WHERE d.thingid=97423000<br>\r\n";
	cmd += "ORDER BY 1<br>\r\n";
	cmd += "--  <br>\r\n";
	cmd += "-- Now find objects near each of the detections <br>\r\n";
	cmd += "--  <br>\r\n";
	cmd += "SELECT a.*, b.* <br>\r\n";
	cmd += "FROM #list a<br>\r\n";
	cmd += " CROSS APPLY <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fGetNearbyObjEq+F\">dbo.fGetNearbyObjEq</a>(a.ra, a.dec, 0.1) b<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "apogeePlate";
	qry = "Find All APOGEE Plate Visits";
	cmd = tableDef;
	cmd += "-- <i>Get all PLATES observed for a given LOCATION_ID:</i><br>\r\n";
	cmd += "-- The APOGEE survey is conducted along a number of different lines of<br>\r\n";
	cmd += "-- sight, each referred to as as a \"field\" or \"location\"<br>\r\n";
	cmd += "-- (interchangeably). Each field has a name and an id number<br>\r\n";
	cmd += "-- (LOCATION_ID). The stars in each field are observed multiple times on<br>\r\n";
	cmd += "-- multiple visits, on different MJDs. These may involve one or more<br>\r\n";
	cmd += "-- physical plug plates.<br>\r\n";
	cmd += "-- <br>\r\n";
	cmd += "-- To find all the plate visits, one can search as follows (for LOCATION_ID<br>\r\n";
	cmd += "-- 4105):<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT plate, mjd FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeePlate+U\">apogeePlate</a> WHERE location_id=4105<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "-- The same field can be searched by its name (in this case 'M13'):<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT plate, mjd FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeePlate+U\">apogeePlate</a> WHERE name = 'M13'<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "aspcapParams";
	qry = "Get ASPCAP parameters and errors";
	cmd = tableDef;
	cmd += "-- <i>Get ASPCAP parameters and errors for all stars that were targeted as part of the main APOGEE survey:</i><br>\r\n";
	cmd += "-- The stellar parameters are available for all stars that had ASPCAP run<br>\r\n";
	cmd += "-- on them. However, this includes some spectra known to be bad as well as<br>\r\n";
	cmd += "-- stars targeted as part of ancillary programs of various<br>\r\n";
	cmd += "-- sorts. Restricting to the good, main survey targets requires checking on<br>\r\n";
	cmd += "-- target and catalog flags, as in the examples below:<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 100<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;s.apogee_id,s.ra, s.dec, s.glon, s.glat,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;s.vhelio_avg,s.vscatter,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;a.teff, a.teff_err, a.logg, a.logg_err, a.param_m_h, a.param_m_h_err,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;a.param_alpha_m,  a.param_alpha_m_err,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeAspcapFlagN+F\">dbo.fApogeeAspcapFlagN</a>(a.aspxcapflag),<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeAspcapFlagN+F\">dbo.fApogeeStarFlagN</a>(s.starflag)<br>\r\n";
	cmd += "FROM apogeeStar s<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+aspcapStar+U\">aspcapStar</a> a on a.apstar_id = s.apstar_id<br>\r\n";
	cmd += "WHERE (a.aspxcapflag & <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeAspcapFlag+F\">dbo.fApogeeAspcapFlag</a>('STAR_BAD')) = 0 and<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    s.commiss = 0 and<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   (s.apogee_target1 &<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    (<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeTarget1+F\">dbo.fApogeeTarget1</a>('APOGEE_SHORT')+<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;     <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeTarget1+F\">dbo.fApogeeTarget1</a>('APOGEE_INTERMEDIATE')+<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;     <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeTarget1+F\">dbo.fApogeeTarget1</a>('APOGEE_LONG'))) != 0<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "apogeeStars";
	qry = "APOGEE Stars [Fe/H]<-2 and no BAD Flags";
	cmd = tableDef;
	cmd += "-- <i>Get parameters for all stars with [Fe/H] < -2 with no BAD FLAGS set:</i><br>\r\n";
	cmd += "-- You can also select a subset of the stars based on their<br>\r\n";
	cmd += "-- properties. This example finds a set of metal-poor stars, without any<br>\r\n";
	cmd += "-- flags set indicating that the observations or analysis is bad.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 100<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;s.apogee_id,s.ra, s.dec, s.glon, s.glat,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;s.vhelio_avg,s.vscatter,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;a.teff,a.logg, a.param_m_h, a.param_alpha_m,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeAspcapFlagN+F\">dbo.fApogeeAspcapFlagN</a>(a.aspxcapflag),<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeStarFlagN+F\">dbo.fApogeeStarFlagN</a>(s.starflag)<br>\r\n";
	cmd += "FROM apogeeStar s<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+aspcapStar+U\">aspcapStar</a> a on a.apstar_id = s.apstar_id<br>\r\n";
	cmd += "WHERE (a.aspxcapflag & <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeAspcapFlag+F\">dbo.fApogeeAspcapFlag</a>('STAR_BAD')) = 0 <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;and a.teff > 0 and a.param_m_h < -2<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "aspcapCLuster";
	qry = "ASPCAP Parameters for Cluster Members";
	cmd = tableDef;
	cmd += "-- <i>Get ASPCAP parameters for stars flagged as known cluster members:</i><br>\r\n";
	cmd += "-- In addition to selecting main survey targets, you can<br>\r\n";
	cmd += "-- select other objects according how they were selected. This is<br>\r\n";
	cmd += "-- an example of selecting objects chosen to be calibrator stars in<br>\r\n";
	cmd += "-- clusters with known metallicities (APOGEE_CALIB_CLUSTER).<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 100<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;s.apogee_id,s.ra, s.dec, s.glon, s.glat,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;s.vhelio_avg,s.vscatter,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;a.teff, a.teff_err, a.logg, a.logg_err, a.param_m_h, a.param_m_h_err,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;a.param_alpha_m,  a.param_alpha_m_err,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeAspcapFlagN+F\">dbo.fApogeeAspcapFlagN</a>(a.aspxcapflag),<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeStarFlagN+F\">dbo.fApogeeStarFlagN</a>(s.starflag)<br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStar+U\">apogeeStar</a> s<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+aspcapStar+U\">aspcapStar</a> a on a.apstar_id = s.apstar_id<br>\r\n";
	cmd += "WHERE (a.aspxcapflag & <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeAspcapFlag+F\">dbo.fApogeeAspcapFlag</a>('STAR_BAD')) = 0 and<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;s.commiss = 0 and<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;(s.apogee_target2 & (<a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeTarget2+F\">dbo.fApogeeTarget2</a>('APOGEE_CALIB_CLUSTER')) != 0)<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "apogeePMs";
	qry = "Proper Motions for HV APOGEE Stars";
	cmd = tableDef;
	cmd += "-- <i>Get proper motions, JHK mag and errors, K-band extinction and radial<br>\r\n";
	cmd += "-- velocities, for stars with RVs > 300 km/s (with no BAD flags for RVs):</i><br>\r\n";
	cmd += "-- There is photometric data associated with each target, including proper<br>\r\n";
	cmd += "-- motions and other information. This example looks for such information<br>\r\n";
	cmd += "-- for larger (heliocentric) radial velocity stars. It restricts to objects<br>\r\n";
	cmd += "-- with good measured ASPCAP parameters. This requires joining the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStar+U\">apogeeStar</a> and<br>\r\n";
	cmd += "-- <a href=\""+url+"/help/browser/browser.aspx?cmd=description+aspcapStar+U\">aspcapStar</a> tables with the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeObject+U\">apogeeObject</a> table, which has the target information.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 100<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;star.apogee_id, star.ra, star.dec, star.glon, star.glat, <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;star.vhelio_avg, star.vscatter,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;obj.j, obj.h, obj.k, obj.ak_targ, obj.ak_targ_method, obj.ak_wise,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;aspcap.teff, aspcap.logg, aspcap.param_m_h<br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStar+U\">apogeeStar</a> star<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+aspcapStar+U\">aspcapStar</a> aspcap on aspcap.apstar_id = star.apstar_id<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeObject+U\">apogeeObject</a> obj on aspcap.target_id = obj.target_id<br>\r\n";
	cmd += "WHERE (aspcap.aspxcapflag & dbo.fApogeeAspcapFlag('STAR_BAD')) = 0 and aspcap.teff > 0<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  and (star.vhelio_avg > 300) and (star.starflag &<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeStarFlag+F\">dbo.fApogeeStarFlag</a>('SUSPECT_RV_COMBINATION')) = 0<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  and star.nvisits > 2 order by aspcap.apogee_id<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "apogeeClusterCenters";
	qry = "APOGEE Stars Near Cluster Center";
	cmd = tableDef;
	cmd += "-- <i>Get ASPCAP parameters and targeting flags for all stars with 1 degree of a cluster center:</i><br>\r\n";
	cmd += "-- CASJobs allows search for objects near any particular RA and Dec. The<br>\r\n";
	cmd += "-- following example searches for ASPCAP parameters and targeting flags for<br>\r\n";
	cmd += "-- the stars observed near M13.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT star.apstar_id,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;star.apogee_id, star.ra, star.dec, star.glon, star.glat,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;star.apogee_target1, star.apogee_target2, <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;aspcap.teff,aspcap.logg,aspcap.param_m_h<br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStar+U\">apogeeStar</a> star<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fGetNearbyApogeeStarEq+F\">dbo.fGetNearbyApogeeStarEq</a>(250.423458,36.461306,60) near on<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;star.apstar_id=near.apstar_id<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+aspcapStar+U\">aspcapStar</a> aspcap on aspcap.apstar_id = star.apstar_id<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "apogeeRVs";
	qry = "RVs for Individual APOGEE Visits";
	cmd = tableDef;
	cmd += "-- <i>Get individual RVs from individual visits, the ASPCAP parameters for the combined<br>\r\n";
	cmd += " spectra for stars which have more than 6 visits:</i><br>\r\n";
	cmd += "-- Each star is visited several times, and in some case many times, in<br>\r\n";
	cmd += "-- order to build up signal-to-noise and to detect radial velocity<br>\r\n";
	cmd += "-- variations. The information about each visit to each star is in the<br>\r\n";
	cmd += "-- <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeVisit+U\">apogeeVisit</a> table. One could join this table with <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStar+U\">apogeeStar</a> on<br>\r\n";
	cmd += "-- apogee_id in order to literally find all visits to each star. However,<br>\r\n";
	cmd += "-- in this example we are interested in just finding those visits that<br>\r\n";
	cmd += "-- actually contributed to each combined spectrum. In this case, bad visits<br>\r\n";
	cmd += "-- are excluded and commissioning data and survey data are kept separate<br>\r\n";
	cmd += "-- (not combined). To find these stars, one may use the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStarVisit+U\">apogeeStarVisit</a><br>\r\n";
	cmd += "-- table in CAS, or the array visit_pk which exists for each star in the<br>\r\n";
	cmd += "-- allStar file. Alternatively, if you wanted to find all visits to a<br>\r\n";
	cmd += "-- particular star, one could replace in the code below <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStarVisit+U\">apogeeStarVisit</a><br>\r\n";
	cmd += "-- with <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStarAllVisit+U\">apogeeStarAllVisit</a> and visit_pk with all_visit_pk.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT  top 100<br>\r\n";
	cmd += "  visit.*, aspcap.teff, aspcap.logg, aspcap.param_m_h<br>\r\n";
	cmd += "FROM apogeeVisit visit<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStarVisit+U\">apogeeStarVisit</a> starvisit on visit.visit_id = starvisit.visit_id<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+aspcapStar+U\">aspcapStar</a> aspcap on aspcap.apstar_id = starvisit.apstar_id<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStar+U\">apogeeStar</a> star on star.apstar_id = starvisit.apstar_id<br>\r\n";
	cmd += "WHERE (aspcap.aspxcapflag & <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeAspcapFlag+F\">dbo.fApogeeAspcapFlag</a>('STAR_BAD')) = 0 and aspcap.teff > 0<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  and (star.apogee_target1 & <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fApogeeTarget1+F\">dbo.fApogeeTarget1</a>('APOGEE_LONG')) > 0<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  and star.nvisits > 6  <br>\r\n";
	cmd += "ORDER BY visit.apogee_id<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "apogeeSegue";
	qry = "Stars with APOGEE and SEGUE Spectra";
	cmd = tableDef;
	cmd += "-- <i>Get APOGEE_IDs and SDSS/BOSS plate, mjd, fiberid for all stars that have both APOGEE and SEGUE spectra:</i><br>\r\n";
	cmd += "-- A small number of objects have been observed both in the optical with<br>\r\n";
	cmd += "-- the SDSS and/or BOSS spectrographs and in the infrared with the APOGEE<br>\r\n";
	cmd += "-- spectrograph. The examples below finds all matches between primary<br>\r\n";
	cmd += "-- SDSS/BOSS spectra and APOGEE stars with a 3 arcsec tolerance for such<br>\r\n";
	cmd += "-- cases (note that there are some cases where an entry in one catalog<br>\r\n";
	cmd += "-- matches multiple entries in the other).<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 50<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  specobj.plate as specobj_plate, specobj.mjd as specobj_mjd,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  specobj.fiberid as specobj_fiberid, <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  specobj.ra as specobj_ra, specobj.dec as specobj_dec, <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  star.apstar_id, star.ra as star_ra, star.dec as star_dec<br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStar+U\">apogeeStar</a> AS star <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   CROSS APPLY <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fGetNearestSpecObjEq+F\">dbo.fGetNearestSpecObjEq</a>( star.ra, star.dec, 0.05) AS near <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+SpecObj+U\">specobj</a> ON near.specobjid=specobj.specobjid <br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "apogeeStarPhoto";
	qry = "SDSS Photometry for APOGEE Stars";
	cmd = tableDef;
	cmd += "-- <i>Get SDSS ugriz photometry, errors and flags, ASPCAP parameters for the APOGEE stars with b > 60:</i><br>\r\n";
	cmd += "-- In addition to matching to the SDSS spectroscopy, you can also match to<br>\r\n";
	cmd += "-- the SDSS photometric imaging data. In this case, we only give an example<br>\r\n";
	cmd += "-- within CAS. To do this purely with flat files requires either<br>\r\n";
	cmd += "-- downloading the full photometric catalog (about 3 Tbytes) or the<br>\r\n";
	cmd += "-- \"datasweep\" files (about 300 Gbytes), both described in the imaging data<br>\r\n";
	cmd += "-- access documentation, and constructing an efficient flat-file method to<br>\r\n";
	cmd += "-- do the matching. For most purposes, CAS will be the right way to do this.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 50<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  photoobj.run, photoobj.camcol, photoobj.field, photoobj.obj,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  photoobj.psfmag_u, photoobj.psfmag_g, photoobj.psfmag_r,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  photoobj.psfmag_i, photoobj.psfmag_z, <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  photoobj.ra as photoobj_ra, photoobj.dec as photoobj_dec, <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  star.apstar_id, star.ra as star_ra, star.dec as star_dec, <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  aspcap.teff, aspcap.param_m_h, aspcap.logg<br>\r\n";
	cmd += "FROM <a href=\""+url+"/help/browser/browser.aspx?cmd=description+apogeeStar+U\">apogeeStar</a> AS star <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   CROSS APPLY <a href=\""+url+"/help/browser/browser.aspx?cmd=description+fGetNearestObjEq+F\">dbo.fGetNearestObjEq</a>( star.ra, star.dec, 0.05) AS near <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObj+U\">photoobj</a> ON near.objid=photoobj.objid <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   JOIN <a href=\""+url+"/help/browser/browser.aspx?cmd=description+aspcapStar+U\">aspcapStar</a> as aspcap ON star.apstar_id = aspcap.apstar_id<br>\r\n";
	cmd += "WHERE star.glat > 60. and aspcap.teff > 0<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "wisexmatch";
	qry = "Using the WISE Cross-Match Table";
	cmd = tableDef;
	cmd += "-- The <a href=\""+url+"/help/browser/browser.aspx?cmd=description+WISE_allsky+U\">WISE_allsky</a> is a straightforward import of the WISE all-sky data release catalog.  <br>\r\n";
	cmd += "-- It has hundreds of columns containing all manner of<br>\r\n";
	cmd += "-- WISE measurements. It has 563,921,584 rows.  This catalog includes data<br>\r\n";
	cmd += "-- from the first part of the WISE mission, when all four of its mid-IR<br>\r\n";
	cmd += "-- channels (3.4, 4.6, 12, and 22 microns) were operational.  It is<br>\r\n";
	cmd += "-- all-sky.<br>\r\n";
	cmd += "-- <br>\r\n";
	cmd += "-- The <a href=\""+url+"/help/browser/browser.aspx?cmd=description+WISE_xmatch+U\">WISE_xmatch</a> is an astrometric cross-match between the WISE_allsky<br>\r\n";
	cmd += "-- and SDSS photoObj objects.  It contains 495,003,196 matches.  The<br>\r\n";
	cmd += "-- <a href=\""+url+"/help/browser/browser.aspx?cmd=description+WISE_xmatch+U\">WISE_xmatch</a> table itself just contains three columns: IDs of the WISE<br>\r\n";
	cmd += "-- and SDSS objects, and the distance between them.  I used a matching<br>\r\n";
	cmd += "-- radius of 4 arcsec, and duplicate matches are allowed.<br>\r\n";
	cmd += "-- <br>\r\n";
	cmd += "-- To use the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+WISE_xmatch+U\">WISE_xmatch</a> table, join on one of the SDSS Photo* tables<br>\r\n";
	cmd += "-- (<a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoObjAll+U\">PhotoObjAll</a>, <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoPrimary+V\">PhotoPrimary</a>, <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoTag+V\">PhotoTag</a>, <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Galaxy+V\">Galaxy</a>, <a href=\""+url+"/help/browser/browser.aspx?cmd=description+Star+V\">Star</a>) and the <a href=\""+url+"/help/browser/browser.aspx?cmd=description+WISE_allsky+U\">WISE_allsky</a><br>\r\n";
	cmd += "-- table, like so:<br>\r\n";
	cmd += " <br>\r\n";
	cmd += "select top 10<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp; S.ra as sdss_ra, S.dec as sdss_dec, W.ra as wise_ra, W.dec as wise_dec,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp; S.psfmag_r as r, W.w1mpro as w1<br>\r\n";
	cmd += "from <a href=\""+url+"/help/browser/browser.aspx?cmd=description+WISE_xmatch+U\">wise_xmatch</a> as X<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp; join <a href=\""+url+"/help/browser/browser.aspx?cmd=description+WISE_allsky+U\">wise_allsky</a> as W on X.wise_cntr = W.cntr<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp; join <a href=\""+url+"/help/browser/browser.aspx?cmd=description+PhotoTag+V\">photoTag</a> as S on X.sdss_objid = S.objid<br>\r\n";
	cmd += "where S.nchild = 0<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "mangaCubes";
	qry = "MaNGA Data Cubes";
	cmd = tableDef;
	cmd += "-- <i>Find all MaNGA data cubes of galaxies in the main or ancillary target sample.</i> <br>\r\n";
	cmd += "-- Get the unique observation identifier (plateifu), object identifier (mangaid),<br>\r\n";
	cmd += "-- object coordinates, primary sample targeting bit (mngtarg1) and summary data<br>\r\n";
	cmd += "-- reduction quality bit (drp3qual)<br>\r\n";
	cmd += "-- A basic SELECT-FROM-WHERE query.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 2000 plateifu,        -- Get the unique object ID,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   mangaid, objra, objdec, mngtarg1, drp3qual -- and other quantities<br>\r\n";
	cmd += "FROM mangadrpall        -- From the drpall catalog<br>\r\n";
	cmd += "WHERE<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   mngtarg1 != 0 or mngtarg3 != 0 -- Require that either mngtarg1 is nonzero<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   -- (galaxy in the primary, secondary, or color-enhanced sample) or that<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;   -- mngtarg3 is nonzero (galaxy is an ancillary program target)<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "mangaCubesGood";
	qry = "MaNGA Data Cubes of Good Quality";
	cmd = tableDef;
	cmd += "-- <i>Find all MaNGA data cubes of galaxies in the main<br>\r\n";
	cmd += "-- or ancillary target sample that are of good reduction quality</i><br>\r\n";
	cmd += "-- Use the largest 127-fiber bundles, have NSA redshift > 0.03,<br>\r\n";
	cmd += "-- and have NSA elliptical petrosian stellar mass > 10^10 Msun.<br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 2000 plateifu,        -- Get the unique object ID,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  mangaid, objra, objdec, mngtarg1, drp3qual -- and other quantities<br>\r\n";
	cmd += "FROM mangadrpall        -- From the drpall catalog<br>\r\n";
	cmd += "WHERE<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  ((mngtarg1 != 0 or mngtarg3 != 0)<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    and (drp3qual < 10000)<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    and (ifudesignsize = 127)<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    and (nsa_z > 0.03)<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    and (nsa_elpetro_mass >1e10))<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "mangaCubesPrimary";
	qry = "MaNGA Data Cubes of Primary Sample";
	cmd = tableDef;
	cmd += "-- <i>Find all MaNGA data cubes of galaxies in the <br>\r\n";
	cmd += "-- Primary+ (Primary v1_2_0 and color enhanced v1_2_0) sample<br>\r\n";
	cmd += "-- that are of good reduction quality.</i><br>\r\n";
	cmd += "<br>\r\n";
	cmd += "SELECT TOP 2000 plateifu,  &nbsp;&nbsp;&nbsp;-- Get the unique object ID,<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  mangaid, objra, objdec, mngtarg1, drp3qual -- and other quantities<br>\r\n";
	cmd += "FROM mangadrpall -- From the drpall catalog<br>\r\n";
	cmd += "WHERE<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;  (((mngtarg1 & (power(2,10)+power(2,12))) != 0) -- Either bit 10 or 12 of mngtarg1<br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;    and ((drp3qual & power(2,30))  = 0)) -- Not bit 30 of drp3qual<br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


	qName = "mangaTarget";
	qry = "MaNGA Targets";
	cmd = tableDef;
	cmd += "-- <i>Find all MaNGA targets in the Primary sample allocated to a tile</i> <br>\r\n";
	cmd += "-- Return the unique identifier (mangaID), the tile they were allocated <br>\r\n";
	cmd += "-- to (manga_tileid) and the size of the IFU they were allocated <br>\r\n";
	cmd += "-- (ifudesignsize) <br>\r\n";
	cmd += " <br>\r\n";
	cmd += "SELECT mangaID,manga_tileid,ifudesignsize  <br>\r\n";
	cmd += "FROM mangatarget <br>\r\n";
	cmd += "WHERE  (manga_target1 & (power(2,10)) != 0) AND manga_tileid > 0 AND IFUDESIGNSIZE > 0 <br>\r\n";
	cmd += "   <br>\r\n";
	cmd += "-- Find all of the MaNGA data cubes that were in the Primary+ sample <br>\r\n";
	cmd += "-- match to the target catalog and return the minimum and maximum  <br>\r\n";
	cmd += "-- redshift each target could have been observed over (ezmin, ezmax). <br>\r\n";
	cmd += "-- These can be used to calculate Vmax weights. <br>\r\n";
	cmd += " <br>\r\n";
	cmd += "/* ( To run second query, click 'Load Query', delete first query, uncomment this one and press Submit)  <br>\r\n";
	cmd += "SELECT m.plateifu,t.mangaID,t.ezmin,t.ezmax,m.mngtarg1  <br>\r\n";
	cmd += "FROM mangatarget as t, mangadrpall as m <br>\r\n";
	cmd += "WHERE  t.mangaID = m.mangaID AND ((mngtarg1 & (power(2,10)+power(2,12))) <br>\r\n";
	cmd += "!= 0)  <br>\r\n";
	cmd += "ORDER BY m.plateifu <br>\r\n";
	cmd += "*/   <br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );

	qName = "qsoVar";
	qry = "eBOSS QSO Variability";
	cmd = tableDef;
	cmd += "-- <i>An example of how to use the eBOSS QSO Variability VAC</i> <br>\r\n";
	cmd += "-- Get the structure function parameters (A,gamma) from PTF photometry for all quasar targets, except in the stripe region</i> <br>\r\n";
	cmd += "-- The cut VAR_CHI2>2 and VAR_A>0.1 selects objects with a significantly varying lightcurve. <br>\r\n";
	cmd += "  <br>\r\n";
	cmd += "SELECT <br>\r\n";
	cmd += "&nbsp;&nbsp;&nbsp;&nbsp; TOP 100 RA, DEC, VAR_A, VAR_GAMMA, VAR_CHI2 <br>\r\n";
	cmd += "FROM qsoVarPTF <br>\r\n";
	cmd += "WHERE qsoVarPTF.VAR_CHI2>2 AND qsoVarPTF.VAR_A>0.1 <br>\r\n";
	cmd += " <br>\r\n";
	cmd += "<br></td></tr>\r\n";
	cmd += "</table>\r\n<br><br>";
	showQuery( qName, qry, cmd, cmd );


%>


</div>
</asp:Content>
