<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="CrossId2.aspx.cs" Inherits="SkyServer.Help.Cooking.CrossId2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cross-Identify Objects</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Using the Imaging Cross-ID tool (<a href="../../../tools/crossid/upload.aspx" target="tools">open in new window</a>)</h2>

<hr />

<ol>

<li><p>In the <i>Search Type</i> dropdown menu, choose the type of search that you want to do. The options are:</p>

   <ol type="a">
     <li><p><i>The nearest primary object</i> – The single primary<a href="../../docs/glossary.aspx?key=primary" target="help"><img src="../../docs/images/glossary.gif" alt="Glossary entry for 'primary'" border="0" /></a> 
     object nearest to the position that you will enter or upload. Primary object means the best single 
     observation of the object; other observations of the same object may be available.</p></li>
     
     <li><p><i>The nearest object</i> – The object nearest to the position that you will enter or upload, 
     whether or not it is a primary<a href="../../docs/glossary.aspx?key=primary" target="help"><img src="../../docs/images/glossary.gif" alt="Glossary entry for 'primary'" border="0" /></a>  
     observation.</p></li>

     <li><p><i>All nearby objects</i> – All objects within your specified search radius.</p></li>

     <li><p><i>All nearby primary objects</i> – All primary<a href="../../docs/glossary.aspx?key=primary" target="help"><img src="../../docs/images/glossary.gif" alt="Glossary entry for 'primary'" border="0" /></a> observations of 
     objects within your specified search radius.</p></li>
     
     <li><p><i>5-part SDSS ID</i> – instead of searching by RA and dec, the tool will search based on the SDSS's five-part 
     imaging ID number (run-rerun-camcol-field-object).</p></li>
   
   </ol>

</li>

<li><p>Enter a search radius (in arcminutes) in the <i>Search Radius</i> textbox. This is the radius around each 
of your objects that the tool will search as it looks for a matching SDSS object. The maximum radius you can enter 
is 3 arcminutes.</p></li>
   
<li><p>Enter the number of columns that precede your RA and dec in the textbox labeled <i>Number of preceding 
non-data columns</i>. For example, if your data consists of (name, ra, dec), enter 1 in this box.</p></li>

<li><p>You can enter your data to cross-match (in other words, the list of objects for which you want to see 
SDSS data) in one of two ways. Either enter it in the large textbox, or upload a file using the smaller textbox 
below it. When there is data in the textbox and a file specified in the upload box, the file takes priority.</p></li>

<li><p>Choose the <i>Format</i> you would like results returned in. <i>HTML</i> will return results as a table in your 
browser. <i>CSV</i> will return results as a comma-separated value file, which can be opened by many 
graphing programs.</p></li>

<li><p>You can change what types of data the query returns by editing the SQL query just above the <i>Format</i> 
selector. Make sure the photo table/view is aliased as 'p' - for example <i>photoTag p</i>. Do not modify the #x 
and #upload parts of the FROM clause; otherwise your upload will not work.</p></li>

<li><p>Click <b>Submit</b> to run your query.</p></li>

<li><p>If you have chosen the default options, the query will return the following data: the SDSS Object ID, 
the position (RA and Dec), the type of object (<i>STAR</i> or <i>GALAXY</i>), and the SDSS's five 
magnitudes (<i>u</i>, <i>g</i>, <i>r</i>, <i>i</i>, and <i>z</i>). Click on the object ID to go to the 
<a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool (link opens in new window), which will 
give you more information about the object.</p></li>

</ol>

<hr />

<p><a href="crossid3.aspx">Next: Get SDSS thumbnail images</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="crossid.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="crossid3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
