<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="TwoMass2.aspx.cs" Inherits="SkyServer.Help.Cooking.TwoMass2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">2MASS Optical Matches</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Galaxies index</a></p>

<h2>Find Optical Counterparts (<a href="../../../tools/crossid/upload.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<ol>

<li><p>The first step is to get 2MASS infrared data, using whatever tools you are most comfortable with. 
The only constraint is that the RA and dec must appear <em>last</em> in the data list. One way to get the 
data is to use the <b>Simple Query</b> section of the <a href="http://www.openskyquery.org" target="offsite">OpenSkyQuery</a> tool of the 
<a href="http://www.us-vo.org" target="offsite">National Virtual Observatory</a> (links open in the same 
new window) to get the 2MASS object ID, the j, h, and k magnitudes, and the positions.</p></li>

<li><p>Go to SkyServer's <a href="../../../tools/crossid/upload.aspx" target="tools">Imaging Cross-Identification</a> tool. 
To get there from astronomers' home page, look under <i>Search Tools</i>. To get there from the public home page, 
look under <i>SkyServer Tools</i>, then <i>Object Crossid</i>.</p></li>

<li><p>In the <b>Search Type</b> dropdown menu, choose the type of search you want to do. Because you want to find 
the single best observation of the single SDSS object that corresponds to each 2MASS object, select 
<i>The nearest primary object</i>.</p></li>

<li><p>Enter a search radius (in arcminutes) in the <b>Search Radius</b> textbox. This is the radius around 
each of your objects that the tool will search as it looks for a matching SDSS object. The maximum radius you can 
enter is 3 arcminutes.</p></li>

<li><p>Enter the number of columns that precede your RA and dec in the textbox labeled <b>Number of preceding 
non-data columns</b>. If you had the 2MASS object ID and the three 2MASS magnitudes preceding the RA and dec, 
you would enter <i>4</i> here.</p></li>

<li><p>You can either cut and paste the 2MASS data into the textbox or type the name of the data file in 
the <b>Or upload it as a text file</b> box. When there is data in the textbox and a file specified in the 
upload box, the file takes priority.</p></li>

<li><p>You can change the data that the tool returns by changing the SQL query displayed in the bottom textbox. 
The default query will return the following SDSS data for each matching object: object ID, positions, types, and 
magnitudes (<i>u</i>, <i>g</i>, <i>r</i>, <i>i</i>, and <i>z</i>).</p></li>

<li><p>Choose the <b>Format</b> you would like results returned in. <i>HTML</i> will return results as a table 
in your browser. <i>CSV</i> will return results as a comma-separated value file, which can be opened by 
many graphing programs.</p></li>

<li><p>If you want to limit returned results just to galaxies (excluding the stars), add the following line to 
the WHERE block of the query in the textbox:</p>

<table width="100%" class="code">
  <tr>
    <td>AND p.type = 3</td>
  </tr>
</table>

<p>The full query will look like this:</p>

<table width="100%" class="code">
  <tr>
    <td>SELECT</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;p.objID, p.ra, p.dec, </td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;dbo.fPhotoTypeN(p.type) as type,</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;p.modelMag_u, p.modelMag_g, p.modelMag_r,</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;p.modelMag_i, p.modelMag_z </td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td>FROM #x x, #upload u, PhotoTag p</td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td>WHERE u.up_id = x.up_id and x.objID=p.objID </td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;AND p.type = 3</td>
  </tr>
  <tr>
    <td>ORDER BY x.up_id</td>
  </tr>
</table>

</li>

<li><p>Click <b>Submit</b> to run the query, and view the results. </p></li>

</ol>



<hr />

<p><a href="twomass3.aspx">Next: Explore the optical counterparts</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="twomass.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="twomass3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
</tr>

<tr>
  <td>
    <p><a href="../">Back to Cooking with Sloan main page</a><br />
    <a href="../../">Back to Help main page</a><br />
    <a href="<%=globals.ContactUrl+"&url="+Server.UrlEncode("http://"+Request.ServerVariables["SERVER_NAME"]+Request.ServerVariables["SCRIPT_NAME"]+Request.ServerVariables["QUERY_STRING"])%>">Contact Help Desk </a></p>
  </td>
</tr>

</table>
</div>
</asp:Content>
