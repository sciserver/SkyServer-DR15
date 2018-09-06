<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Flags2.aspx.cs" Inherits="SkyServer.Help.Cooking.Flags2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Check Flags</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Flags for a single object (<a href="../../../tools/explore/obj.aspx" target="tools">open Explore in new window</a>)</h2>

<hr />

<ol>
<li><p>Use the <a href="../../../tools/explore/obj.aspx" target="tools">Explore</a> tool (link opens in a new 
    window) to look at a single object. See the guide <a href="getimage.aspx">How do I get an image and spectrum 
    of my favorite object?</a> to learn how to use the Explore tool.</p></li>

<li><p>Look at <b>flags</b>, the third row of data just below the object's coordinates. You will see the 
       object's flags listed, one after the other with one space in between. See the list of flags in the 
       <a href="../../browser/browser.aspx" target="tools">Schema Browser</a> for what they mean. Instructions 
       for using the Schema Browser are on the next page.</p></li>

</ol>

<hr />

<p><a href="flags3.aspx">Next: Interpreting flags</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="flags.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" /></a>
      <a href="flags3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
