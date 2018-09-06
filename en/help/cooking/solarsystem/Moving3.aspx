<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Moving3.aspx.cs" Inherits="SkyServer.Help.Cooking.Moving3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Moving Objects</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Solar System index</a></p>

<h2>View the moving objects (<a href="../../../tools/chart/list.aspx" target="tools">open Image List in new window</a>)</h2>

<hr />

<ol>

  <li><p>To view the actual moving object candidates, use the <a href="../../../tools/chart/list.aspx" target="tools">Image 
  List</a> (link opens in new window) tool. From the astronomers' main page, look under <i>Advanced Tools</i>. From 
  the public main page, look under <i>SkyServer Tools</i>, then <i>Visual Tools</i>.</p></li>
  
  <li><p>Click on the small blue <b>Use query to fill form</b> link in the top left of the tool. Paste the following 
  query into the main textbox:</p>

<table width="100%" class="code">
    <tr>
      <td>SELECT top 100 objID as name, ra, dec</td>
    </tr>
    <tr>
      <td></td>
    </tr>  
    <tr>
      <td>FROM PhotoObj</td>
    </tr>      
    <tr>
      <td></td>
    </tr>
    <tr>
      <td>WHERE (power(rowv,2) + power(colv, 2)) > 50</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;and rowv >= 0 and colv >=0</td>
    </tr>
  </table>

   <p>This query returns only the object ID and position of each object, as required by the Image List tool. 
   Notice that this query looks the same as the previous query, except for the SELECT clause.</p>
   
</li>

<li><p>Click <b>Submit</b>, then <b>Send to List</b>.</p></li>

<li><p>You will see thumbnail images for each object that the query matched. Click on the image to go to the 
<a href="../../../tools/chart/navi.aspx" target="tools">Navigate</a> tool (link opens in a new window) to see 
where the object is in the sky. Click on the name, above the image, to go to the <a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool 
(new window) to see complete SDSS data for that object.</p></li>

</ol>

<p>Note that when you have run these queries, you have always included "top 100" in the SELECT block. This 
limits the query to returning only the first 100 results. If you ran the query without the top 100, the query 
would probably exceed the 10 minute time limit for queries to the SkyServer SQL Search tool. However, you can 
run queries that last up to 8 hours by using <a href="<%=globals.CasJobs%>" target="tools">CasJobs</a>. See the 
<a href="<%=globals.CasJobs%>guide.aspx" target="tools">CasJobs help page</a> for more information.</p>

<hr />

</td>
</tr>

<tr>
      <td>&nbsp;&nbsp;<a href="moving2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
