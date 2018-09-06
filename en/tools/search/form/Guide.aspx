<%@ Page Title="" Language="C#" MasterPageFile="../../../help/HelpMaster.master" AutoEventWireup="true" CodeBehind="Guide.aspx.cs" Inherits="SkyServer.Tools.Search.FormGuide" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Search Form User Guide</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">

<tr><td>

<img src="images/default2.jpg" align=right>

<p>When you first launch the Search Form, you will see a screen like the one on the right. Read over the 
sentence described by the form. Here are what the different menu choices on the form mean:</p>

<a name="objtypes"></a>
<h3>Object types and positions</h3>

<table border=0>
  <tr>
    <td></td>
    <td align=right><p><img src="images/anyobjects.jpg"></p></td>
  </tr>
</table>

<p>lets you specify what type of object you want the form to return. "Any objects" will return all types of 
objects. The other choices are: <a href="../../../astro/stars/stars.aspx" target="help">stars</a>, 
<a href="../../../astro/galaxies/galaxies.aspx" target="help">galaxies</a>, and <a href="../../../astro/galaxies/galaxies.aspx#quasars" target="help">quasars</a>.</p>

<a name="region"></a>
<table border=0>
  <tr>
    <td></td>
    <td align=right><p><img src="images/anywhere.jpg"></p></td>
  </tr>
</table>

<p>lets you specify what region of sky you want to search. "Anywhere" will return objects anywhere in the sky. If you change 
the menu to "around: ", a new item will appear just below:</p>


<table border=0>
  <tr>
    <td></td>
    <td align=right><p><img src="images/radec.jpg"></p></td>
  </tr>
</table>

<p>lets you specify what region of the sky you want to search. RA (Right Ascension) and dec (Declination) are sky 
coordinates; Right Ascension is like longitude and Declination is like latitude. Here are two good 
explanations of how the right ascension and declination system works:<br>
<a href="http://library.thinkquest.org/29033/begin/coordinate.htm" target="help">ThinkQuest</a><br>
<a href="http://www.wwnorton.com/astro21/sandt/celcoords.html" target="help">Sky & Telescope</a></p>

<p>RA runs from 0 to 360 degrees (note that 
SkyServer always uses decimal degrees rather than hours-minutes-seconds), and dec runs from -90 to 90 degrees. Also, enter a search 
radius in arcminutes (60 arcminutes = 1 degree). The maximum radius the form can accept is 600 arcminutes (10 degrees). 
If you select "around: " for the region, be sure to enter an ra, dec, and radius here.</p>

<a name="checkfootprint"></a>
<h3>Check SDSS Footprint</h3>

<p>This button will allow you to check whether the region you chose has been seen by the SDSS. After you have entered your 
region, click the button. A new window will open telling you whether or not this region is part of the SDSS. The maximum allowed radius is 60 arcminutes.</p>

<a name="mags"></a>
<h3>Magnitudes and Colors</h3>

<table border=0>
  <tr>
    <td></td>
    <td align=right><p><img src="images/mags2.jpg"></p></td>
  </tr>
</table>

<p>lets you specify what magnitudes and colors your results should have. Magnitude is a measure of how bright an object 
is. <a href="http://www.schoolsobservatory.org.uk/astro/textb/phys/mags.htm" target="help">This magnitude page</a> gives a good 
explanation of how the magnitude scale works. Color is defined as the difference in an object's magnitude when seen 
through two different filters; see SkyServer's <a href="../../../proj/basic/color" target="help">Color</a> project for 
more information.
</p>

<p>You can search for objects of different magnitudes by specifying upper and lower limits in each wavelength filter (u,g,r,i,z). 
Enter the lower limit in the left-hand textbox and the upper limit in the right-hand textbox. You can enter either one or two limits. 
"20 &lt; g" would return only objects with a magnitude greater than 20 in the g filter; similarly, "g &lt; 20" would return only objects with a 
magnitude less than 20 in the g filter. "18 &lt; g &lt; 20" would return only objects with magnitudes between 18 and 20.</p>

<p>Remember that the magnitude scale runs backwards, so if you want objects with g brighter than magnitude 18, you 
should enter g &lt; 18. The <b>g</b> magnitude is the one closest to what you see with your eyes.
</p>

<p>Searching by color works in the same way as searching by magnitude.</p>

<p>The number textboxes accept only the following reasonable values:</p>

<ul>
<li>All magnitudes: 0 to 30</li>
<li>All colors: -20 to 20</li>
</ul>

<a name="spec"></a>
<h3>Spectra and Redshift</h3>

<table border=0 ID="Table1">
  <tr>
    <td></td>
    <td align=right><p><img src="images/allorspectra.jpg"></p></td>
  </tr>
</table>

<p>lets you choose whether the form will return all objects or only objects for which the SDSS has measured a 
<em>spectrum</em>. A spectrum is a graph of how much light an object emits as a function of wavelength; 
<a href="http://www.astro.uiuc.edu/~kaler/sow/spectra.html" target="help">this page from the University of Illinois</a> 
gives a good introduction to spectra. A spectrum can tell you a lot of information about an object, but the SDSS 
has measured far fewer spectra than images and magnitudes. Your menu choices are "all objects" and "only objects 
with spectra". If you change the menu to "all objects with spectra", a new item will appear just below:</p>

<a name="redshift"></a>
<table border=0 ID="Table2">
  <tr>
    <td></td>
    <td align=right><p><img src="images/redshifts.jpg"></p></td>
  </tr>
</table>

<p>lets you specify the possible redshifts of your results. 
<em>Redshift</em> is a measure of how fast a galaxy or quasar is moving away from Earth. SkyServer's 
<a href="../../../proj/basic/universe/redshifts.aspx" target="help">Redshift page</a> (part of the Universe 
project) gives more information. The textboxes will only accept the (reasonable) values of between 0 
and 6. Also, the number in the first textbox must be smaller than the number in the second textbox.</p>

<a href="../../../proj/basic/universe/redshifts.aspx" target="help">
<a name="results"></a>
<h3>Results</h3>

<table border=0 ID="Table3">
  <tr>
    <td></td>
    <td align=right><p><img src="images/results.jpg"></p></td>
  </tr>
</table>

<p>lets you control what types of data your search will return. (Note that the third line, beginning with "redshift," will only 
appear if you selected "only objects with spectra" above.) The first line tells how many results the search will return. 
"Count only" means the search will return only the number of results that meet your search criteria, and not the actual data from 
those results. "100" and "1000" will return selected data for the first 100 or 1000 matches to your search. "All" will 
return data for all matching objects - but the search might take a very long time.</p>

<p>The rest of the checkboxes control what data your search will return:</p>
<ul>
	<li><em>Object IDs</em> are the 18- to 19-digit numbers that the SDSS uses to refer to an object.</li>
	<li><em>RA and dec</em> are the sky coordinates of the object, described above in the <a href="#region">Region</a> section.</li>
	<li><em>Magnitudes</em> are the brightness of the object seen through the SDSS's five filters (u,g,r,i,z).</li>
	<li><em>Redshift</em> is a measure of how fast an object is moving in the expanding universe; it can be used as 
	a measure of the object's distance.</li>
	<li><em>Spectrum ID</em> and <em>Plate/mjd/fiber number</em> are two ways of looking up a spectrum in SkyServer</li>
</ul>

<p>Check a box, and your search will return that piece of data. Uncheck a box, and it will not.</p>

<a name="update"></a>
<h3>Generating and Updating Your Query</h3>

<table border=0 ID="Table4">
  <tr>
    <td></td>
    <td align=right><p><img src="images/generate.jpg"></p></td>
  </tr>
</table>


<p>lets you generate the SQL statement that will send your search request to SkyServer. When you have finished 
selecting all the options you want to select, click "Generate Query" to see the SQL statement. 
ALWAYS click Generate Query before clicking one of the buttons below to search the database.</p>

<p>Your complete SQL query will appear in the box below "SQL Query". Study the query - it will help you learn 
how SQL works. If you want, you may return to the menus and select other options to change your query. If you do this, 
click "Update Query" to load the new version of your query.</p>

<p>If you want to edit your query directly by typing in the query box, click "Edit Query." Make your changes; when you 
are satisfied with your edited query, click "Done Edit." However, keep in mind that once you click Edit Query, you will 
NOT be able to make any further selections from the menus above unless you reset the form.</p>

<a name="submit"></a>
<h3>Submitting Your Query to SkyServer and Image List</h3>

<table border=0 ID="Table6">
  <tr>
    <td></td>
    <td align=right><p><img src="images/submits.jpg"></p></td>
  </tr>
</table>

<p>lets you submit your query to the SDSS database, either through either the SkyServer Search tool or Image List 
tool. Click "Submit Your Query to SkyServer" to submit your query to the Search tool. You will receive numerical data 
for your results. You may choose from one of two formats for these data by clicking one of the radio buttons:</p>

<ul>
<li><em>HTML</em>: a table that you can examine in your web browser</li>
<li><em>CSV</em>: a data file that can be opened by many spreadsheet programs, including Excel</li>
</ul>

<p>After you have selected your response format, click "Submit Your Query to SkyServer." If there are any 
errors in your query, you will see a message like this alerting you of the error:</p>

<table border=0 ID="Table5">
  <tr>
    <td></td>
    <td align=right><p><img src="images/alert.jpg"></p></td>
  </tr>
</table>

Otherwise, the results of your search will appear in a new window.</p>

<p>If you requested Object IDs, and you plan to open CSV files in spreadsheet programs, you will need to take steps 
to make sure the IDs don't get cut off. See SkyServer's <a href="../../../help/howto/graph/open.aspx" target="help">
Graphing Tutorial</a> to learn how to open the CSV file.</p>


<a name="imagelist"></a>
<h3>Submitting Your Query to Image List</h3>

<table border=0 ID="Table7">
  <tr>
    <td></td>
    <td align=right><p><img src="images/submit_to_imagelist.jpg"></p></td>
  </tr>
</table>

<p>lets you submit your query directly to SkyServer's <a href="../../chart/list.aspx" target="help">Image List</a> tool. 
The Image List tool will let you see thumbnail pictures of the objects match your search. This can be a powerful way 
to get a quick understanding of your search results.</p>

<p>When you click the "Submit Query to Image List" button, you will see a screen that looks something like this:</p>

<table border=0 ID="Table8">
  <tr>
    <td></td>
    <td align=right><p><img src="images/imagelist_search.jpg"></p></td>
  </tr>
</table>

<p>Click "Send to List" to load your search results into the Image List tool. The screen will change to look like this:</p>

<table border=0 ID="Table9">
  <tr>
    <td></td>
    <td align=right><p><img src="images/imagelist.jpg"></p></td>
  </tr>
</table>

<p>The thumbnails show all the objects that met your search criteria. Click on one of the "page" links at the top of the 
page to go to another page of search results. Click any of the thumbnails to open the Object in the <a href="../../chart/navi.aspx" target="help">
Navigate Tool</a>.</p>

<a name="resetform"></a>
<h3>Reset Form</h3>

<p>resets all menu choices to their default values, and clears any SQL query in the box</p>

<a name="hints"></a>
<h3>Hints for Better Searches</h3>

<p>SkyServer is a very large database, with complete information on <%= globals.NObj%> sky objects. The server that runs SkyServer 
has limits on the length of time that searches can run. If you don't plan your search carefully, you could get a message 
that says, "Timeout Expired," which means that your search will not return any data. Here are some tips to make sure your 
queries complete in a reasonable amount of time:</p>

<ul>
	<li>To get a quick estimate of how many results your search will return, select "count only." The result of the 
	search will be the total number of objects in the database that meet your search requirements.</li>
	<li>Select "top 100" or "top 1000" to limit the number of results your search will return.</li>
	<li>If you only care about a specific part of the sky, be sure to select "around: " and enter a sky position 
	in RA/dec/radius.</li>
</ul>

<p>Your search may also return a message that says, "No objects have been found". If you expected to find objects, try 
the following:</p>

<ul>
   <li>Search a larger area of sky by entering a larger radius.</li>
   <li>Search for fainter objects by reducing the lower limits for any magnitudes that you searched for.</li>
</ul>

<p>If you have questions about this form, <a href="mailto:raddick@pha.jhu.edu?subject=Search Form">contact us</a>.</p>

<p>Happy searching!</p>

</td></tr>

</table>

<P>

</div>
</asp:Content>
