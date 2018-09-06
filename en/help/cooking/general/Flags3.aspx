<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Flags3.aspx.cs" Inherits="SkyServer.Help.Cooking.Flags3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Check Flags</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Interpreting Flags (<a href="../../browser/browser.aspx" target="tools">open Schema Browser in new window</a>)</h2>

<hr />

<ol>
<li><p>Use the <a href="../../browser/browser.aspx" target="tools">Schema Browser</a> (link opens in a new 
    window) to study the list of the SDSS's flags.</p></li>
       
<li><p>Type <b>flags</b> into the <b>Search</b> window and click <b>Go</b>.</p></li>  

<li><p>Results of your search will show up in the right-hand window of the Schema Browser. Click on the 
       very first <b>PhotoObj</b> link, next to the name <b>flags</b>. You will go to the schema browser 
       entry for the PhotoObj view. </p></li>     

<li><p>The 13<sup>th</sup> entry in the table is <b>flags</b>. Click on the <a href="../../browser/browser.aspx?cmd=enum+PhotoFlags+E" target="help"><img src="../../docs/images/info.gif" alt="Link to PhotoFlags" border="0" /> </a> 
       link to the right of <b>flags</b>. </p></li>
       
<li><p>The <em>Data Values</em> table shows the name, value, and description of each flag. <em>Name</em> is the 
       name of the flag; this is what you will see in the Explore tool. <em>Value</em> is the bitmask value 
       for the flag. <em>Description</em> is a short description of what the flag means.</p></li>
       
<li><p>The <em>Access Functions</em>, <span class="sml">fPhotoFlags</span> and <span class="sml">fPhotoFlagsN</span>, 
       are needed to use the flag names in SQL queries.</p></li>       
</ol>


<hr />

<p><a href="flags4.aspx">Next: Search for Flags in Imaging Query Form</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="flags2.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="flags4.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
