<%@ Page Title="" Language="C#" MasterPageFile="../ToolsMaster.master" AutoEventWireup="true" CodeBehind="Named.aspx.cs" Inherits="SkyServer.Tools.Places.Named" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ToolsContent" runat="server">
    <style>
      .nn	{color:#00ff00;}
       td	{font-size:10pt;}
       span {color:#00ff00;}
       #black {position:absolute;left:200px;top:175px;}
    //   #cmap  {position:absolute;left:200px;top:175px;z-index:3;}
    </style>
    <div id="title">Famous Places - Catalogs</div>

    <div id="black">

    <table WIDTH=640 border=0 cellspacing="0" cellpadding="10">

    <tr>
      <td colspan=3>
        <p>This section of Famous Places shows SDSS images of objects in three famous catalogs: Messier, NGC, and Abell. Click on any of the images to go to one of the three catalogs. On each catalog page, you can see six objects from the catalog as seen by the SDSS. You can also download a list of all the catalog's objects in the SDSS's DR2.</p>
      </td>
    </tr>

    <tr valign=top>
      <%
          ResponseAux.pThumb("Messier", "messier.aspx", "m2,m77;m97,m102;m108,m109",Response);
          ResponseAux.pThumb("NGC", "ngc.aspx", "ngc99,ngc2681;ngc2713,ngc3440;ngc5348,ngc7108", Response);
          ResponseAux.pThumb("Abell", "abell.aspx", "abell2197,abell2255;abell1218,abell1387;abell700,abell1995", Response);
      %>
    </tr>

    </table>

    <% ResponseAux.pLinks(Response);%>

    <p>
    </div>
    <p>
</asp:Content>
