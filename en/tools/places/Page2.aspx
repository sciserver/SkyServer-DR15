<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="SkyServer.Tools.Places.Page2" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
    <style>
      .fpl	{background-color:#3366cc;}
      .nn	{color:#00ff00;}
       td	{font-size:10pt;}
       a {color:#3366cc;border-color:3366cc;};
       span {color:#00ff00;}
       #black {position:absolute;left:200px;top:175px;}
    </style>

    <div id="title">Famous Places - Spirals</div>

    <div id="black">
    <table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

    <tr>
     <td colspan=2>
       <p>The Sloan Digital Sky Survey has taken images of more than 50 million galaxies. 
       Many of these galaxies are spirals, like our own Milky Way. Below are some of the most    beautiful spiral galaxies that the SDSS has seen. Click on any galaxy to see it in the Navigation tool (the tool will open in a new    window). To learn more about galaxies, see the <a href="../../proj/basic/galaxies">
       Galaxies</a> project.</p>
     </td>
    </tr>

    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("ngc1055", 40.433, 0.449, Response);%>
	    NGC 1055, a nearby spiral seen edge-on. The galaxy has a lot of dust in
	    its disk. 
    </td>
    <td>
	    <% ResponseAux.pTable("ngc5750", 221.546, -0.223, Response);%>
	    NGC 5750
    </td>
    </tr>

    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("ngc3521", 166.454, -0.036, Response);%>
	    NGC 3521
    </td>
    <td>
	    <% ResponseAux.pTable("ngc2967", 145.514, 0.336, Response);%>
	    NGC 2967, which appears nearly face-on.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("ngc5719", 220.235, -0.318, Response);%>
	    NGC 5719
    </td>
    <td>
	    <% ResponseAux.pTable("ugc01962", 37.228, 0.370, Response);%>
	    UGC 01962, a whirlpool-like face-on spiral.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("ngc1087", 41.606, -0.499, Response);%>
	    NGC 1087, a star forming spiral
    </td>
    <td>
	    <% ResponseAux.pTable("ngc5334", 208.227, -1.114, Response);%>
	    NGC 5334, a photogenic spiral galaxy.
    </td>
    </tr>

    <% ResponseAux.pLinks(Response);%>

    </table>
    <p>
    </div>
    <p>
</asp:Content>
