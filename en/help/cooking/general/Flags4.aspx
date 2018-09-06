<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Flags4.aspx.cs" Inherits="SkyServer.Help.Cooking.Flags4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Check Flags</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Flags in Imaging Query Form (<a href="../../../tools/search/iqs.aspx" target="tools">open in new window</a>)</h2>

<hr />

<p>You can search through flags as part of your searches with the <a href="../../../tools/search/iqs.aspx" target="tools">Imaging 
   Query Form</a> (link opens in a new window). You can request that the tool return only objects that possess one or more flags, such as 
   searching for moving objects by looking for the <i>MOVED</i> flag. Or you can search for only those objects that 
   do not possess certain flags, such as searching for unsaturated objects by checking that the <i>SATURATED</i> 
   flag is off.</p>

<ol>

<li><p>Go to the <a href="../../../tools/search/iqs.aspx" target="tools">Imaging Query Form</a>. From the astronomers' 
       main page, look under <b>Search Tools</b>. For more on how to use the Imaging Query Form, see the guide 
       <a href="getdata.aspx">How do I find data for all objects in a given RA/Dec/Magnitude/Absolute Magnitude 
       range?</a></p></li>
       
<li><p>Select any parameters you like on the form, then look at the <b>Obj Flags</b> drop-down menus at the 
       bottom of the form.</p></li>
       
<li><p>To guarantee that your results will possess a certain flag, select the flag from the <i>At least one of 
       these flags ON</i> menu. To select more than one flag to check, hold down the CTRL key while selecting.</p></li>       
       
<li><p>To guarantee that your results will not possess a certain flag, select the flag from the <i>All of these flags 
       OFF</i> menu. To select more than one flag to check, hold down the CTRL key while selecting.</p></li>       

<li><p>The flags will not show up in the search results unless you specifically request them in the 
       <i>Imaging</i> menu of the <b>Parameters to Return</b> section above. But the flags will be searched, and the 
       search will return only objects that meet your flag criteria.</p></li>
       
<li><p>Click <b>Submit Request</b> to send your query to the database.</p></li>       
       
</ol>


<hr />

<p><a href="flags5.aspx">Next: Search for flags with SQL</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="flags3.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="flags5.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
