<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="CV2.aspx.cs" Inherits="SkyServer.Help.Cooking.CV2" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cataclysmic Variables</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Stars index</a></p>

<h2>Search for CVs by color (<a href="../../../tools/search/sql.aspx" target="tools">open tool in new window</a>)</h2>

<hr />

<ol>

  <li><p>Go to the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> tool 
  (link opens in new window). From the astronomers' main page, look under <i>Search Tools</i>. From the 
  public main page, look under <i>SkyServer Tools</i>, then <i>Search</i>.</p></li>

  <li><p>In the main window, type the following query (or run the query from the query box at the bottom of 
  this page):</p>
  
  <table width="100%" class="code">
    <tr>
      <td>SELECT objID, ra, dec&nbsp;&nbsp;&nbsp;-- get object ID, ra, dec of binary star</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td>FROM PhotoPrimary&nbsp;&nbsp;&nbsp;-- From all primary objects (best detections)</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td>WHERE u - g < 0.4&nbsp;&nbsp;&nbsp;-- Search based on known colors of CVs</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;AND g - r < 0.7</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;AND r - i > 0.4 </td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;AND i - z > 0.4 </td>
    </tr>
  </table>
  
  <p>The query returns the object ID, RA, and dec of each binary star. By changing the color 
  constraints (such as u - g < 0.4) to the color constraints of another type of object you want 
  to find, you can search for those objects instead.</p>
  
  </li>

</ol>

    <p>Use the query box below to practice running the query shown above. You can modify the query to return other data if 
    you want. Click <b>Submit</b> to run the query or <b>Reset</b> to reset the query box.</p>


	<%	
        string query = "SELECT objID, ra, dec   -- get object ID, ra, dec of binary star\n";
        query += "FROM PhotoPrimary   -- From all primary objects (best detections)\n";
        query += "WHERE u - g < 0.4   -- Search based on known colors of CVs\n";
        query += "   AND g - r < 0.7\n";
        query += "   AND r - i > 0.4\n";
        query += "   AND i - z > 0.4";
	   	ResponseAux.sqlform(0,query,url,Response); 	%>



<hr />

<p><a href="cv3.aspx">Next: View the CVs</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="cv.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="cv3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
