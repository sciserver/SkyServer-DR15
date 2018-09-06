<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Hubble.aspx.cs" Inherits=" SkyServer.Help.Cooking.Hubble" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Create a Hubble Diagram</div>
<div id="pdflink">
  <a href="swf/hubble.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/hubble.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to Teaching/Labs index</a></p>

<h2>How do I...</h2>

<h2>Create a Hubble Diagram to show the expanding universe?</h2>

<hr />

<p>An extremely important topic in astronomy is the expansion of the universe. Although the expanding universe 
is nearly always discussed in lecture during astronomy survey courses, it can be difficult to address in lab 
because data can be so difficult to obtain. But the SDSS has photometric data on about <%=globals.NGalaxy %> galaxies – 
so labs are limited only by the imaginations of students and instructors.</p>

<p>SkyServer's projects have two lesson plans about the Hubble Diagram (all links open in the same new window): 
The Universe (<a href="../../../proj/basic/universe/" target="proj">student activity</a>  |  
<a href="../../../proj/teachers/basic/universe/" target="proj">teacher notes</a>) is appropriate for most K-12 and 
Astronomy 101 students, and The Hubble Diagram (<a href="../../../proj/advanced/hubble" target="proj">student 
activity</a>  |  <a href="../../../proj/teachers/advanced/hubble" target="proj">teacher notes</a>) is 
appropriate for higher-level and/or highly motivated students.</p>

<p>This guide will show you how to create a Hubble Diagram, step-by-step, in two different ways.</p>


<hr />

<p><a href="hubble2.aspx">Next: Find galaxy clusters</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="hubble2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
