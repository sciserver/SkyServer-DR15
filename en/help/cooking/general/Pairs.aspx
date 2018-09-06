<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Pairs.aspx.cs" Inherits="SkyServer.Help.Cooking.Pairs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Close Pairs</div>
<div id="pdflink">
  <a href="swf/pairs.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/pairs.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>How do I...</h2>

<h2>Find closely paired objects?</h2>

<hr />

<p>One common task is to find objects that form close pairs on the sky. Such close pairs might indicate objects that 
are interacting in some way, or might help identify clusters of objects. You can search for closely paired objects 
with an <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> (link opens in a new window). To get 
to SQL Search from the astronomers' main page, look under <i>Search Tools</i>. From the public main page, look under 
<i>SkyServer Tools</i>, then <i>Search</i>.</p>

<p>To learn more about SQL, see SkyServer's <a href="../../howto/search">SQL Tutorial</a> 
and guide to <a href="../../docs/sql_help.aspx">Using SQL with SkyServer</a>.</p>

<ol>

<li><p>In the large textbox of the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> tool (new 
window), type the following query (or see it in the textbox at the bottom of this page):</p>

<table width="100%" class="code">
  <tr>
    <td>SELECT	P1.objID as P1_ID, P1.ra as first_ra, P1.dec as first_dec,</td>
  </tr>
  <tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;P2.objID as second_ID, P2.ra as second_ra, P2.dec as second_dec</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;-- return object IDs and positions for both objects</td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td>FROM PhotoTag   P1				-- P1 is the first object</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;JOIN Neighbors  N ON N.objID = P1.objID				-- N is pre-computed neighbors</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;JOIN PhotoTag   P2 ON P2.objID = p1.OBJid				-- P2 is the second object</td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td>WHERE N.Distance < .05			-- objects are within 3 arcseconds  </td>
  </tr>		
</table>
</li>

<li><p>The query will return the object ID, ra, and dec of each of the two objects in each pair.</p></li>

<li><p>If you would like to see thumbnail images of each of the objects that matches the query, go to the 
<a href="../../../tools/chart/list.aspx" target="tools">Image List</a> tool (link opens in new window). From 
the astronomers' main page, look under <i>Advanced Tools</i>. From the public main page, look under 
<i>SkyServer Tools</i>.</p></li>

</ol>

<hr />

 

<p><a href="pairs2.aspx">Next: View thumbnail images of search results</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="pairs2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
