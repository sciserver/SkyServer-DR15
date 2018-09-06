<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Hubble5.aspx.cs" Inherits="SkyServer.Help.Cooking.Hubble5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Create a Hubble Diagram</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Teaching/Labs index</a></p>

<h2>Hubble Diagram for all galaxies (<a href="../../../tools/search/form/form.aspx" target="tools">open tool in new window)</a></h2>

<hr />

<p>Another way to overcome the problem of intrinsic differences between galaxy magnitudes is to look at a huge 
sample of galaxies. With a large enough sample, intrinsic differences of galaxy brightness should average out, 
meaning that the trend of the Hubble Diagram should truly reflect the expansion of the universe.</p>

<ol>

<li><p>Go to the <a href="../../../tools/search/form/form.aspx" target="tools">Search Form</a> tool (link opens in a 
new window). From the public home page, go to <i>SkyServer Tools</i>, then <i>Search</i>, then <i>Search Form</i>. 
Click <b>Launch the Search Form tool</b>. (<b>Note</b>: this Search Form is different from the <i>Imaging Query Form</i>; 
the Search Form is designed for public and student use.)</p></li>

<li><p>The principle of the Search Form tool is that you choose from menus and put values in textboxes 
to write a sentence in English. Then you click a button to generate an SQL query that represents your 
English sentence. Make the selections on the Search Form tool that are appropriate for making a Hubble diagram, 
forming this sentence (the bold items are the selections you make from the menus):</p>

<table border="1">
  <tr>
    <td><p>Show me <b>galaxies</b> in the region <b>anywhere</b> with magnitudes (<b>unspecified</b>) and 
colors (<b>unspecified</b>) for <b>only objects with spectra</b>, with redshifts (<b>unspecified</b>). Please 
return <b>1,000</b> objects with <b>object IDs</b>, <b>RA and Dec</b>, <b>magnitudes</b>, and <b>redshift</b>.</p></td>
  </tr>
</table>

</li>

<p>Click <b>Generate Query</b> to translate this sentence into SQL. The SQL statement that the tool generates 
looks like this:</p>

<table width="100%" class="code">
 <tr>
   <td>select top 1000 p.objid, p.ra, p.dec, p.u, p.g, p.r, p.i, p.z, s.z as redshift</td>
 </tr>
 <tr>
   <td>from galaxy p</td>
 </tr>
 <tr>
   <td>join specObj s on s.bestObjID = p.objID</td>
 </tr>
</table>
</li>

<li><p>Change the <b>Output Format</b> to <i>CSV</i> (comma-separated value).</p></li>

<li><p>Click <b>Submit Query to SkyServer</b>. A new window will open where you can save your 
query results to your computer.</p></li>

<li><p>Make a graph of redshift against magnitude. You will see a graph with 1,000 points on it. 
The graph will form a wide swath of points. Galaxies of a given luminosity lie on a straight line within 
this swath.</p></li>

</ol>

<hr />

</td>
</tr>


<tr>
      <td><a href="hubble4.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
