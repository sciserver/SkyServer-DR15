<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Page5.aspx.cs" Inherits="SkyServer.Tools.Places.Page5" %>
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
    <div id="title">Famous Places - Interactions</div>

    <div id="black">
    <table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

    <tr>
     <td colspan=2>
       <p>Sometimes, galaxies collide, or pass close enough to affect each other through the force of gravity. Astronomers call these collisions and forces "interactions" of galaxies. Some interactions seen by the SDSS are shown below. Click on any interaction to see it in the Navigation tool (the tool will open in a new window). To learn more about galaxy interactions, see the <a href="../../proj/basic/galaxies">
       Galaxies</a> project.</p>
     </td>
    </tr>


    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("arp240", 204.970, 0.840, Response);%>
	    ARP 240, an interacting pair of galaxies. Note how
	    the galaxies have distorted each other through their mutual gravity.
    </td>
    <td>
	    <% ResponseAux.pTable("ugc08584", 204.061, -1.040, Response);%>
	    Another pair of violently interacting galaxies. The brighter
	    object is called UGC 08584. 
    </td>
    </tr>

    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("ngc799-800", 30.551, -0.101, Response);%>
	    Two well-known spiral galaxies, NGC 799, and NGC 800, very close together.
    </td>
    <td>
	    <% ResponseAux.pTable("ngc428", 18.232, 0.981, Response);%>
	    NGC 428, a spectacularly blue nearby spiral galaxy.  The blue color
	    indicates very active star formation in this galaxy.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <%ResponseAux.pTable("ugc10770", 258.287, 59.327, Response);%>
	    UGC 10770, a young spiral galaxy, undergoing a collision. This 
	    object is mentioned in many catalogs of interacting galaxies (ARP, etc).
    </td>
    <td>
	    <%ResponseAux.pTable("ngc7603", 349.736, 0.244, Response);%>
	    NGC 7603 and PGC 07041, an interacting pair. Notice the "bridge" of stars and gas 		between the two galaxies. The bigger object, NGC 7603, is a well-known Seyfert galaxy.
	    Seyfert galaxies have small, bright, active cores.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("ugc1597", 31.566, -0.292, Response);%>
	    UGC 1597, a Seyfert galaxy with an active core. Notice the disturbed
	    appearance of the galaxy.  This object  may be the remnant of an
	    old collision between two galaxies. As a by-product of the collision,
	    gas from one galaxy is being dumped onto a black hole at the center of the
	    other galaxy, giving rise to the active core.
    </td>
    <td>
	    <% ResponseAux.pTable("quasar", 54.622, 0.366, Response);%>
	    The faint reddish object is a distant quasar (redshift z=5.0).
	    Quasars are the most luminous objects in the Universe. They consist
	    of a giant black hole in the center of a host galaxy. This object was
	    the first to exceed the magic distance threshold of z=5.0. To learn more about 
	    redshift, see the <a href="../../proj/basic/universe">Universe</a> project. To 
	    learn more about quasars, see the <a href="../../proj/advanced/quasars">Quasars</a>
	    project.
    </td>
    </tr>

    <% ResponseAux.pLinks(Response);%>

    </table>
    <p>
    </div>
    <p>
</asp:Content>
