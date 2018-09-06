<%@ Page Title="" Language="C#" MasterPageFile="../SdssMaster.master" AutoEventWireup="true" CodeBehind="PubsHome.aspx.cs" Inherits="SkyServer.SDSS.PubsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SdssContent" runat="server">
<div id="title">Details of SDSS Data</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">


<tr><td><h1>Publications</h1></td></tr>
<tr><td>
The Sloan Digital Sky Survey has published several papers describing the data,
the data acquisition process, and other technical details of the project.
These publications can all be found listed on the <a
href="<%=globals.SdssUrlBase%>science/publications/">SDSS publications page</a>.
</td></tr>
</table>

</div>
</asp:Content>
