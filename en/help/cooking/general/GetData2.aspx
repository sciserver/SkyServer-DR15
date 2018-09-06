<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetData2.aspx.cs" Inherits="SkyServer.Help.Cooking.GetData2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Data for Objects</div>
<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Using the Imaging Query Form (<a href="../../../tools/search/iqs.aspx" target="tools">open in new window</a>)</h2>

<hr />

<ol>
  <li><p>In the <em>Limit number of output rows</em> textbox, enter the number of objects you would like the search to 
         return. If you want unlimited number of rows returned, enter 0.</p></li>
         
  <li><p>In the <em>Output Format</em> textbox, enter the format you want for your output. <i>HTML</i> will output results as 
         a table in your browser. <i>CSV</i> output can be read by many graphing programs.</p></li>
         
  <li><p>In the <em>Parameters</em> section, select what types of <b>Imaging</b> data you would like returned. 
         <i>Typical</i> returns the most common parameters. You can also select any parameters from the menu. 
         To select more than one, hold down CTRL while clicking on each one.</p></li>
         
  <li><p>Select what type of <b>Spectroscopy</b> data you would like returned. If you select <i>None</i> under 
         Spectroscopy, the tool will not return any spectral data. If you select any of the other options, the 
         tool will return spectral data for all objects, including those for which no spectrum has been observed – 
         but objects without an observed spectrum have zeroes for all spectroscopic data.</p></li>
 
  <li><p>You can use the <b>Filters</b> checkboxes to choose which filter names to return. The Imaging Query Form 
         will return only the names of the filters, not the images. You can then use the filter names as part of a 
         query to the <a href="<%=globals.DasUrl%>">Science Archive Server (SAS).</p></li>      
</ol>

<p>Next, you will set <em>constraints</em> based on positions or imaging data. Constraints are characteristics of the objects 
   that you are interested in. The Imaging Query Form will return data for objects that meet your constraints. Click "Next" to 
   learn how to find objects by position.</p>

<hr />

<p><a href="getdata3.aspx">Next: Find by Position</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getdata.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="getdata3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
