<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="PlacesHome.aspx.cs" Inherits="SkyServer.Tools.Places.PlacesHome" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">

<style>
  .nn	{color:#00ff00;}
   td	{font-size:10pt;}
   span {color:#00ff00;}
   #black {position:absolute;left:200px;top:175px;}
   #cmap  {position:absolute;left:200px;top:175px;z-index:3;}
</style>

<div id="title">Famous Places</div>
<div id="black">
<table width="640" border="0" cellspacing="0" cellpadding="10">

<tr>
  <td colspan=3>
    <p>Welcome to Famous Places, SkyServer's gallery of beautiful images seen by the SDSS     telescope. The images are divided into six categories. Click any of the categories to get started.</p>
  </td>
</tr>

<tr valign=top>
  <%
	ResponseAux.pThumb("Galaxies","page1.aspx","ngc450,ngc5792;ngc4437,ngc1032;ngc4753,ngc60;ngc5496,ngc936",Response);
    ResponseAux.pThumb("Spirals", "page2.aspx", "ngc1055,ngc5750;ngc3521,ngc2967;ngc5719,ugc01962;ngc1087,ngc5334", Response);
    ResponseAux.pThumb("Clumps", "page3.aspx", "pal3,pal5;ugca285,ugc07332;ugc05205,ngc0201group;viiizw388,modredshift", Response);
  %>
</tr>
<tr valign=top>
  <%
      ResponseAux.pThumb("Clusters", "page4.aspx", "abell168,richcluster;meddistance,abell267;3clusters,anotherrichcluster;abell957,abell2255", Response);
      ResponseAux.pThumb("Interactions", "page5.aspx", "arp240,ugc08584;ngc799-800,ngc428;ugc10770,ngc7603;ugc1597,quasar", Response);
      ResponseAux.pThumb("Artifacts", "page6.aspx", "94-5-489,1359-3-60;1359-3-59,94-5-169;752-4-100,1359-1-54;94-2-288,1356-3-61", Response);
  %>
</tr>

</table>
<% ResponseAux.pLinks(Response);%>

<p>
</div>
</asp:Content>
