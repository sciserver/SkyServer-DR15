<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="GetImage2.aspx.cs" Inherits="SkyServer.Help.Cooking.GetImage2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Get Image and Spectrum</div>


<div id="transp">
<table width="600" border="0" cellspacing="3" cellpadding="5">

<tr><td>

<p><a href="default.aspx">Back to General Tasks index</a></p>

<h2>Find the celestial coordinates (<a href="http://simbad.u-strasbg.fr/simbad/sim-fid" target="offsite">open Simbad in new window</a>)</h2>

<hr />

<ol>
  <li><p>If you know the celestial coordinates of your object, skip to the next page. If not, go to 
         the <a href="http://simbad.u-strasbg.fr/simbad/sim-fid" target="offsite">SIMBAD name resolver</a>. 
         Enter the name in the <b>Identifier</b> field. Click <b>Submit Query</b>.</p></li>
         
  <li><p>You will see the coordinates of the object in Hours - Minutes - Seconds (HMS) format. Copy 
         these numbers.</p></li>
</ol>


<hr />

<p><a href="getimage3.aspx">Next: Get an SDSS Image</a></p>

</td>
</tr>

<tr>
  <td></td>
</tr>
<tr>
      <td>&nbsp;<a href="getimage.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Go to the previous page" />
      <a href="getimage3.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Go to the next page" /></a></td>
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
