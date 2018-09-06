<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Quasars3.aspx.cs" Inherits="SkyServer.Help.Cooking.Quasars3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find data for quasars</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Quasars/Cosmology index</a></p>

<h2>Search by position (<a href="../../../tools/search/sqs.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<ol>

<li><p>One of the constraints you can use is to find quasars only in a specific part of the sky. Use the <i>Position 
Constraints</i> box to choose constraints. You can choose not to use any position constraints (<b>None</b>), or 
you can choose one of three types (<b>Rectangle</b>, <b>Cone</b>, and <b>Proximity</b>).</p>

   <ol type="a">
      <li><p><b>None</b> finds objects all over the sky.</p></li>
      
      <li><p><b>Rectangle</b> finds objects within a rectangle between a minimum and maximum RA and Dec. Enter <b>minimums</b> 
and <b>maximums</b> for RA and Dec, either in decimal degrees or in HMS/DMS. HMS input can be formatted as either 
HH:MM:SS.ss or HH MM SS.ss.</p></li>

      <li><p><b>Cone</b> finds objects within a radial patch of sky defined by a center <b>RA</b> and <b>Dec</b> and a 
<b>radius</b>. The maximum search radius is 30 arcminutes.</p></li>

      <li><p><b>Proximity</b> finds objects near to a list of positions. You give the list, either by pasting into the 
textbox or by uploading a file. You can optionally specify a maximum separation in which to search.</p></li>

  </ol>
</li>

<li><p>When you have finished entering all your constraints, click <b>Submit Request</b>. The tool will return 
only the objects you asked for, in the output format you specified.</p></li>

<li><p>You will see your results<%if (globals.Access=="public") {%> in a new window<%}%>.</p></li>

<li><p>If you would rather use SQL to search by position, change your query so that you use one of the position 
functions, either <span class="sml">dbo.fGetNearbyObjEq(ra,dec,radius)</span> or 
<span class="sml">dbo.fGetObjFromRect(ra1,ra2,dec1,dec2)</span>. Specify the function in the FROM block, and be 
sure to check that the object IDs are the same in the WHERE block.</p></li>

</ol>

<p>You can also apply more constraints to your search, searching for positions or magnitudes. You can 
use an <a href="../../../tools/search/sql.aspx" target="tools">SQL search</a> (opens in new window) to request other constraints, to give you 
any type of quasar sample that you want. See the <a href="../../howto/search">SQL Tutorial</a> for more 
on how to use SQL.</p>

<hr />

<p><a href="quasars4.aspx">Next: Search by redshift</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td><a href="quasars2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="quasars4.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
