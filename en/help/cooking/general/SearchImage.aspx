<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="SearchImage.aspx.cs" Inherits="SkyServer.Help.Cooking.SearchImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Find Images and Spectra</div>
<div id="pdflink">
  <a href="swf/searchimage.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/searchimage.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>How do I...</h2>

<h2>Find images and spectra for all objects in a given RA/Dec/Magnitude/Absolute Magnitude range?</h2>

<hr />

<p>You can use the SDSS search tools to find all objects that meet certain criteria, such as position, 
magnitude, color, or absolute magnitude. The guide <a href="getdata.aspx">How do I find data for all objects 
in a given RA/Dec/Magnitude/Absolute Magnitude range?</a> shows how to use SkyServer's search tools to 
find data.</p>

<p>But in addition to searching for catalog data, you can also search for images and spectra using any 
constraints you want, including position, magnitude, and absolute magnitude. To search for images and 
spectra, you will use the <a href="../../../tools/chart/list.aspx" target="tools">Image List</a> tool along 
with <a href="../../howto/search" target="help">SQL</a> (links open in separate new windows).</p>

<p>This is an extremely powerful way to access SDSS data, because it allows you to search based on any 
criteria, and then to quickly view all objects that meet your criteria.</p>

<hr />

<p><a href="searchimage2.aspx">Next: Using the Image List tool</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="searchimage2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
