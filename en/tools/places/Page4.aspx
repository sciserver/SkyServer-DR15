<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="SkyServer.Tools.Places.Page4" %>
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
    <div id="title">Famous Places - Clusters</div>

    <div id="black">
    <table WIDTH=740 border=0 cellspacing="0" cellpadding="10">

    <tr>
     <td colspan=2>
       <p>Galaxies are found in clusters of hundreds or thousands, held together by their 
          mutual gravity. One of the SDSS's major goals is to understand how galaxies form 
          clusters and larger structures, up to the large-scale structure of the universe. Click on any cluster to see it in the Navigation tool (the tool will open in a new window). To learn more about galaxy clusters, see the <a href="../../proj/basic/galaxies">
       Galaxies</a> and the <a href="../../proj/basic/universe">Universe</a> projects.</p>
     </td>
    </tr>


    <tr valign="top">
    <td>
	    <% ResponseAux.pTable("abell168", 18.837, 0.260, Response);%>
	    Abell 168, a nearby cluster of galaxies.
    </td>
    <td>
	    <% ResponseAux.pTable("richcluster", 29.071, 1.051, Response);%>
	    A rich cluster, detected by the SDSS. 
    </td>
    </tr>

    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("meddistance", 213.601, -0.378, Response);%>
	    A medium distant cluster of galaxies.  The Sloan Survey has
	    detected thousands of galaxy clusters, most of which have never been
	    catalogued.
    </td>
    <td>
	    <% ResponseAux.pTable("abell267", 28.174, 1.008, Response);%>
	    Abell 267, a distant rich cluster of galaxies.
    </td>
    </tr>

    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("3clusters", 178.270, 1.025, Response);%>
	    The ensemble of faint images is a superposition of three clusters of galaxies
	    at different distances along the line of sight.  The estimated redshifts of
	    the clusters are 0.38, 0.43, and 0.50.  The different redshifts give rise
	    to slightly different colors in the galaxies, with the most distant objects
	    appearing to be the reddest.
    </td>
    <td>
	    <% ResponseAux.pTable("anotherrichcluster", 252.398, 64.484, Response);%>
	    A rich cluster, detected by the SDSS.
    </td>
    </tr>

    <tr valign=top>
    <td>
	    <% ResponseAux.pTable("abell957", 153.378, -0.850, Response);%>
	    Abell 0957, a well-known rich cluster, at a redshift
	    of 0.0423, detected by the SDSS.
    </td>
    <td>
	    <% ResponseAux.pTable("abell2255", 258.145, 64.071, Response);%>
	    ZwCl 1710, also Abell 2255, a rich cluster, at a redshift 0.081, 
	    detected by the SDSS. This cluster was also detected in X-rays.
    </td>
    </tr>


    <tr valign="top">
    <td>
    </td>
    <td>
    </td>
    </tr>


    <% ResponseAux.pLinks(Response);%>

    </table>
    </div>
    <p>
</asp:Content>
