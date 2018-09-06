<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="CV3.aspx.cs" Inherits="SkyServer.Help.Cooking.CV3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cataclysmic Variables</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Stars index</a></p>

<h2>View the CVs (<a href="../../../tools/chart/list.aspx" target="tools">open Image List in new window</a>)</h2>

<hr />

<ol>

  <li><p>To view the actual cataclysmic variable (binary) stars, use the <a href="../../../tools/chart/list.aspx" target="tools">Image List</a> 
  tool (tool opens in a new window). From the astronomers' main page, look under <i>Advanced Tools</i>. From the 
  public main page, look under <i>SkyServer Tools</i>, then <i>Visual Tools</i>.</p></li>

  <li><p>Click on the small blue <b>Use query to fill form</b> link in the top left of the tool. Paste the 
  following query into the main textbox:</p>
  
  <table width="100%" class="code">
    <tr>
      <td>SELECT top 100 objID, ra, dec&nbsp;&nbsp;&nbsp;-- get object ID, ra, dec of binary star</td>
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
  
  <p>This query is identical to the one from the last page, except that it is limited to return 100 objects.</p>
  </li>
  
  <li><p>Click <b>Submit</b>, then <b>Send to List</b>. You will see thumbnail images of each candidate 
  binary star that the query matched. Click on the image to go to the <a href="../../../tools/chart/navi.aspx" target="tools">Navigate</a> 
  tool (new window) to see where the object is in the sky. Click on the name, above the image, to go to the Explore tool to learn more about the object. 
  The <a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool (new window) 
  will give you all the data that the SDSS has collected for this object.</p></li>

  <li><p>Remember that these are only candidate objects selected by color; you will have to make further 
  observations to determine if they really are cataclysmic variables.</p></li>
  
</ol>

<p><b>Note</b>: when you run this query in the SQL search tool (as you did earlier), the query may sometimes 
time out. To get all results you will probably need to use <a href="<%=globals.CasJobs %>" target="tools">CasJobs</a>. 
See the <a href="<%=globals.CasJobs %>guide.aspx" target="tools">CasJobs help page</a> for more information (both links 
open in the same new window).</p>

<hr />

</td>
</tr>

<tr>
      <td>&nbsp;<a href="cv2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
