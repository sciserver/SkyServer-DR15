<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="SearchImage3.aspx.cs" Inherits="SkyServer.Help.Cooking.SearchImage3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Images and Spectra</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Submit a query to Image List (<a href="../../../tools/chart/list.aspx" target="tools">Open in new window</a>)</h2>

<hr />

<ol>

  <li><p>Replace the default query in the textbox with your own query. <em>IMPORTANT</em>: the <i>SELECT</i> block of the 
  query must take the form:</p>
  
  <table width="100%" class="code">
    <tr>
      <td>SELECT <i>name</i>, ra, dec</td>
    </tr>
  </table>
  
  <p>The name can be any piece of data you want, but the RA and Dec must be the <i>ra</i> and <i>dec</i> 
     fields from the database (note: SQL is not case-sensitive). For example, this query returns object 
     IDs and positions of 40 galaxies:</p>

  
  <table width="100%" class="code">
    <tr>
      <td>SELECT top 40 objid, ra, dec</td>
    </tr>
    <tr>
      <td>FROM photoObj</td>
    </tr>
    <tr>
      <td>WHERE type = 3</td>
    </tr>
  </table>
    
    
  <p>The Image List tool is limited to returning 1,000 objects from search results. If you request more than 
  1,000 objects, the list will only display the first 1,000.</p>
  
  </li>
  
  <li><p>Click <b>Submit</b> to send the query to the database. A list of results will come up in a new frame 
  in the same window.</p></li>
  
  <li><p>Click <b>Send to List</b> to send the results to the Image List tool. You will now see a frame of 
  thumbnail images of your search results.</p></li>
    
 
</ol>

<hr />

<p><a href="searchimage4.aspx">Next: View your search results</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="searchimage2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="searchimage4.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
