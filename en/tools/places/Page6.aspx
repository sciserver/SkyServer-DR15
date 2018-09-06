<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Page6.aspx.cs" Inherits="SkyServer.Tools.Places.Page6" %>
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
    <div id="title">Famous Places - Artifacts</div>

    <div id="black">
    <table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

    <tr>
     <td colspan=2>
       <p>No telescope or data processing system is perfect, and sometimes, meteors or satellites come into the telescope's field of view. The pictures below show a few of these "artifacts" - mistakes and surprises in the data. The Navigation tool does not correctly show the artifacts. To learn more about how the SDSS collects and processes data, see the <a href="../../sdss">
       About SDSS</a> section.</p>
     </td>
    </tr>


    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("94-5-489",-9999,0,Response);%>
	    The red 'ghost' is the result of light from a nearby very bright star
	    reflected inside the telescope. Even though such reflections are quite
	    weak, for very bright sources they still cause such artifacts to be detected.
    </td>
    <td>
	    <% ResponseAux.pTable("1359-3-60", -9999, 0, Response);%>
	    The blue 'ghost' is the result of light from a nearby very bright star
	    reflected inside the telescope. It is blue, because it was reflected onto
	    the detector with the blue filter.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("1359-3-59", -9999, 0, Response);%>
	    A wobbling satellite on a low-earth orbit. The varying
	    intensity of the light is due to the rotation of the satellite.
    </td>
    <td>
	    <% ResponseAux.pTable("94-5-169", -9999, 0, Response);%>
	    Bright meteor captured in the act of burning up in the earth's atmosphere.
	    The trail is colored green because the image of the meteor was captured in
	    only one of the 5 SDSS filters.
    </td>
    </tr>

    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("752-4-100", -9999, 0, Response);%>
	    A wobbling satellite on a low-earth orbit. The varying
	    intensity of the light is due to the rotation of the satellite.
	    It has crossed the telescope field in a very short time, and it is
	    red because its path fell on the detector with the red filter, not
	    that the satellite is red itself.
    </td>
    <td>
	    <% ResponseAux.pTable("1359-1-54", -9999, 0, Response);%>
	    Each bright star appears as a tilted 'cross' on the image. This pattern
	    is called a 'diffraction spike', and is due to light scattered on the four
	    beams that hold the secondary mirror of the telescope in place. 
    </td>
    </tr>

    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("94-2-288", -9999, 0, Response);%>
    </td>
    <td>
	    <% ResponseAux.pTable("1356-3-61", -9999, 0, Response);%>
    </td>
    </tr>
    <tr><td colspan=2>
	    Each star, however bright, is still point-like. They
	    only appear to be extended, with a `halo' because of the scattered light 
	    inside the telescope. 
	    The vertical and horizontal faint stripes are due to
	    the `bleeding' of charge inside the detector. On the raw images these were
	    much stronger, but our software has successfully removed most of this effect.</td>
    </tr>

    <% ResponseAux.pLinks(Response);%>

    </table>

    </div>
    <p>
</asp:Content>
