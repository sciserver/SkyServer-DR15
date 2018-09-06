<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="MoreThanOnce.aspx.cs" Inherits="SkyServer.Help.Cooking.MoreThanOnce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Multiple Observations</div>
<div id="pdflink">
  <a href="swf/morethanonce.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/morethanonce.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Stars index</a></p>

<h2>How do I...</h2>

<h2>Find stars that have been seen more than once?</h2>

<hr />

<p>Most of the sky area seen by the SDSS has been observed only once over the course of the survey. 
However, there are many areas have been observed more than once, so there are many objects that have 
been observed at different times. Finding these objects could give more measurements for light curves 
of variable stars.</p>

<p>You can find these stars using an <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> 
(link opens in a new window). To learn more about SQL, see the <a href="../../howto/search/">SQL Tutorial</a>. 
You can then examine each observation of the object using the <a href="../../../tools/explore/obj.aspx" target="tools">
Explore</a> tool (new window).</p>

<hr />

<p><a href="morethanonce2.aspx">Next: Using SQL to search for stars with multiple observations</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="morethanonce2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
