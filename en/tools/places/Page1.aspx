<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="SkyServer.Tools.Places.Page1" %>
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

    <div id="title">Famous Places - Galaxies</div>

    <div id="black">
    <table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

    <tr>
     <td colspan=2>
       <p>The Sloan Digital Sky Survey has taken images of more than 50 million galaxies, 
       from giant spirals to tiny smudges of light. Below are some of the most beautiful. 
       Click on any galaxy to see it in the Navigation tool (the tool will open in a new    window). To learn more about galaxies, see the <a href="../../proj/basic/galaxies">
       Galaxies</a> project.</p>
     </td>
    </tr>

    <tr valign=top>

	    <td><% ResponseAux.pTable("ngc450",18.876,-0.861,Response);%>
	    NGC 450 and a companion. Although the two galaxies appear to form a pair, they are 
	    actually at much different distances. The smaller, fainter object is 7 times farther away.
	    </td>

	    <td><% ResponseAux.pTable("ngc5792", 224.594, -1.090, Response);%>
	    NGC 5792, a spiral galaxy that we see nearly edge-on. The bright red star 
	    is in the Milky Way, very, very close to us compared to the distant galaxy. The star 		makes a colorful counterpart to the blue galaxy, although the two are unrelated.
	    </td>

    </tr>

    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("ngc4437", 188.190, 0.114, Response);%>
	    NGC 4437, a spectacular edge-on spiral galaxy.
    </td>
    <td>
	    <% ResponseAux.pTable("ngc1032", 39.849, 1.094, Response);%>
	    NGC 1032, another edge-on galaxy. 
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <%ResponseAux.pTable("ngc4753", 193.092, -1.199, Response);%>
	    NGC 4753, an elliptical galaxy with strange dust filaments. The 
	    dust filaments may be the shredded remains of a small spiral galaxy
	    that was captured by the much larger elliptical.
    </td>
    <td>
	    <%ResponseAux.pTable("ngc60", 3.992, -0.303, Response);%>
	    NGC 60, a distant spiral galaxy with unusually distorted spiral arms.
	    Arms like these normally arise from the gravitational effects of 
	    neighbor galaxies, but for this object there is no obvious neighbor.
    </td>
    </tr>

    <tr valign="top">
    <td>
	    <%ResponseAux.pTable("ngc5496", 212.907, -1.158, Response);%>
	    NGC 5496, another edge-on spiral galaxy.
    </td>
    <td>
	    <%ResponseAux.pTable("ngc936", 36.907, -1.155, Response);%>
	    NGC 936, a nearby barred spiral galaxy.
    </td>
    </tr>

    <% ResponseAux.pLinks(Response);%>

    </table>
    <p>
    </div>
    <p>
</asp:Content>
