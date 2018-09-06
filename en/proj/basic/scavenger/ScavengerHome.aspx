<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="ScavengerHome.aspx.cs" Inherits="SkyServer.Proj.Scavenger.ScavengerHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <p><h1>Scavenger Hunt</h1>
      <p>The Sloan Digital Sky Survey has seen many kinds of objects 
      in the sky: stars, galaxies, quasars, asteroids, comets and meteors. 
      In this scavenger hunt, you will look for a 
      list of these different types of objects. See how many you can find!</p>
      <p>Before you start, you should learn a little about the objects you 
      will see. Click "Next" to find out what you will look for!</p>
      <p></p>
      <p></td>
    </tr>

    <tr>
      <td></td>
    </tr>
    <tr>
      <td>&nbsp;<a href="colors.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
