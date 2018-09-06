<%@ Page Title="" Language="C#" MasterPageFile="AsteroidsMaster.master" AutoEventWireup="true" CodeBehind="AsteroidsHome.aspx.cs" Inherits="SkyServer.Proj.Asteroids.AsteroidsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AsteroidsContent" runat="server">
<div id="transp">
  <table width=600 border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Asteroids</h1>
           
      <p>The Sloan Digital Sky Survey spends most of its time looking at galaxies and 
      quasars very far from Earth. However, SDSS also sees many things in our own 
      cosmic backyard. In addition to 
      the occasional comet or meteor, Data Release <%=globals.ReleaseNumber%> contains <%=globals.NAsteroids%>
      asteroids! In this lesson you will learn what asteroids are, and how to find them 
      in SDSS images.</p>
            
      <table width=365 align="left" border=1>
      <tr><td align="center"><img src="images/meteor.gif" width=365></td></tr>
      <tr><td align=center><p><span class='caption'>A meteor streaks across the sky<br>   
      in this SDSS image
      </span></p></td></tr>
      </table>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td>&nbsp;<a href="findingasteroids1.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
