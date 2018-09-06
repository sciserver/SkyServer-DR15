<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="Flags.aspx.cs" Inherits="SkyServer.Help.Cooking.Flags" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Check Flags</div>
<div id="pdflink">
  <a href="swf/flags.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/flags.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>How do I...</h2>

<h2>Find out if SDSS's imaging data for an object are reliable?</h2>

<hr />

<p>The SDSS does automatic processing to determine the reliability of the imaging data 
   for each of the <%=globals.NObj %> objects that it has seen. The reliability information is 
   stored in <span class="vocabulary">flags</span> data in the <span class="sml">PhotoObj</span> 
   table in the database. Understanding the flags is extremely important for doing science, 
   so that you can understand what data are reliable.</p>
   
<p>By using several flags together, you can search for only objects that have clean photometry. 
   <a href="flags6.aspx">Skip to clean photometry search guide</a></p>   

<p>Flags are yes/no parameters. If a certain flag (such as <i>Saturated</i>) is present for an object, 
   the object has that characteristic (i.e. its image is saturated). To save space in the database, the 
   flags are stored as zeros (absent) or ones (present). Each object has a long bitwise number 
   associated with it, where each set of digits corresponds to one flag. The database includes 
   functions that translate back and forth between the binary numbers and the flag names.</p>

<p>You can view flag names directly with the <a href="../../../tools/explore/obj.aspx" target="tools">
   Explore</a> tool (link opens in new window), but to work with flags in search results, you will 
   need to know how to use the translate functions.</p>

<hr />

<p><a href="flags2.aspx">Next: Check what flags are present for a single object</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="flags2.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
