<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="CrossId3.aspx.cs" Inherits="SkyServer.Help.Cooking.CrossId3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cross-Identify Objects</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Get SDSS thumbnails (<a href="../../../tools/chart/list.aspx" target="tools">open Image List in new window</a>)</h2>

<hr />

<ol>

<li><p>Once you have the SDSS object ID, RA, and dec of your objects from the Imaging Cross-ID tool, you can 
get thumbnail images of what the objects look like in the SDSS using the <a href="../../../tools/chart/list.aspx" target="tools">Image List</a> 
tool (link opens in new window). To get to the tool from the astronomers' main page, look under <i>Advanced Tools</i>. 
From the public main page, look under <i>SkyServer Tools</i>.</p></li>

<li><p>Copy and paste the object ID, RA, and dec into the textbox in the upper left of the form, just above 
<i>Cut and Paste ra/dec list</i>. Be sure to leave one space between each piece of data. Click <b>Get Image</b>. 
The Image List tool is limited to returning 1,000 objects.</p></li>

<li><p>A thumbnail image of each result will come up in a new frame within the same window.</p></li>

<li><p>Click on the thumbnail image to go to the <a href="../../../tools/chart/navi.aspx" target="tools">Navigate</a> 
tool entry for that object (link opens in a new window). The Navigate tool will give you an image of the object 
and the area around it, which you can zoom in or out of.</p></li>

<li><p>Click on the object's name (above the thumbnail image) to go to the <a href="../../../tools/chart/navi.aspx" target="tools">Explore</a> 
tool entry for that object (link opens in new window). The Explore tool shows complete data for the object, 
including a spectrum if one was observed by the SDSS.</p></li>

</ol>

<hr />

</td>
</tr>


<tr>
      <td>&nbsp;<a href="crossid2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a></td>
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
