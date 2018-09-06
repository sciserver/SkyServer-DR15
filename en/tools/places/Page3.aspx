<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="SkyServer.Tools.Places.Page3" %>
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
    <div id="title">Famous Places - Clumps</div>

    <div id="black">
    <table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

    <tr>
     <td colspan=2>
       <p>Clumps are loose collections of stars, gas, or galaxies held together by gravity. Click on any object to see it in the Navigation tool (the tool will open in a new window). To learn more about globular clusters, see the <a href="../../proj/advanced/hr">
       H-R Diagram</a> project.</p>
     </td>
    </tr>


    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("pal3",151.382,0.071,Response);%>
	    Palomar 3 (also known as Sextans C) is a globular cluster, a collection of old 
            stars orbiting the Milky Way.
    </td>
    <td>
	    <% ResponseAux.pTable("pal5", 229.013, -0.123, Response);%>
	    Globular cluster Palomar 5, which is being torn apart by the Milky Way's gravity.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("ugca285", 188.283, -0.534, Response);%>
	    UGCA 285, an ultra-low surface brightness galaxy. Galaxies come
	    in a variety of sizes and luminosities; this galaxy is so faint that even the 
            SDSS's camera can barely see it.
    </td>
    <td>
	    <% ResponseAux.pTable("ugc07332", 184.483, 0.436, Response);%>
	    UGC 07332, a nearby, blue, low surface brightness galaxy.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("ugc05205", 146.030, -0.658, Response);%>
	    UGC 05205 and its companion. These two galaxies are very
	    young, full of young, blue hot stars.
    </td>
    <td>
	    <% ResponseAux.pTable("ngc0201group", 9.895, 0.860, Response);%>
	     A nearby group of galaxies centered on NGC 0201. Galaxy groups
	     typically have about 10-20 members.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("viiizw388", 213.785, -0.4934, Response);%>
	    VIII Zw 388, a picturesque group of galaxies, discovered and 
	    catalogued by famous astronomer Fritz Zwicky.
    </td>
    <td>
	    <% ResponseAux.pTable("modredshift", 355.918, 0.311, Response);%>
	    A cluster of galaxies moderately far away.  One of the major goals of the
	    SDSS is to learn how galaxies cluster, and to use the clustering to infer the 
   	    characteristics of the early universe.
    </td>
    </tr>

    <% ResponseAux.pLinks(Response);%>

    </table>
    <p>
    </div>
    <p>
</asp:Content>
