<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Pairs2.aspx.cs" Inherits="SkyServer.Help.Cooking.Pairs2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Close Pairs</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>How do I...</h2>

<h2>View thumbnails (<a href="../../../tools/chart/list.aspx" target="tools">open Image List in new window</a>)</h2>

<hr />

<ol>

<li><p>In the Image List tool, click on the <b>Use query to fill form</b> link, near the top left of the tool. 
You will see a textbox appear in the main panel of the window.</p></li>

<li><p>Queries in the Image List tool must take a slightly different form than queries in the SQL Search 
tool. All Image List queries must have the following for their SELECT blocks:</p>

<table width="100%" class="code">
  <tr>
    <td>SELECT <i>name</i>, ra, dec</td>
  </tr>
</table>

<p>So you must rewrite your query as:</p>

<table width="100%" class="code">
  <tr>
    <td>SELECT	top 100 P1.objID as name, P1.ra as ra, P1.dec as dec</td>
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
    <td>&nbsp;&nbsp;&nbsp;&nbsp;JOIN PhotoTag   P2 ON P2.objID = P1.objID				-- P2 is the second object</td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td>WHERE N.Distance < .05			-- objects are within 3 arcseconds  </td>
  </tr>		
</table>

<p>	Note that this will return only the name and position of the first object in the pair (although you should be 
able to see both objects in the thumbnail image). Also, note that the <i>top 100</i> means that the query 
will be limited to return 100 objects.</p>

</li>

<li><p>Click <b>Submit</b>, then <b>Send to List</b>. You will see thumbnail images for each of the objects that 
match your search criteria. The object at the center of the image will be only one of the objects, but both should 
be visible in the frame. You may find it helpful to turn on the <b>Grid</b> and <b>PhotoObjs</b> checkbox options.</p></li>

<li><p>Note that if you run this query without the <i>top 100</i>, the query will return many results. To get all 
results you will probably need to use <a href="<%=globals.CasJobs %>" target="tools">CasJobs</a> (link opens in new window). 
See the <a href="<%=globals.CasJobs %>guide.aspx" target="tools">CasJobs help pages</a> (new window) for more information.</p></li>

</ol>

<hr />

 

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="pairs.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
