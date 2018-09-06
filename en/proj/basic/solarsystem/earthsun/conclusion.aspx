<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="conclusion.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.EarthSun.Conclusion" Title="Solar System: Conclusions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Conclusion</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
       <p>The diagram below is a computer-generated image that depicts the positions of the Sun and Earth during each season. You can 
          see that the Northern and Southern hemispheres of the Earth receives different amounts of light from the Sun during different seasons.</p>
       
       <table border="0" cellpadding="2">
         <tr>
           <td><img src="images/north_season.jpg" alt="A diagram of the Sun and the Earth (not to scale) during each season"</td>
         </tr>
         <tr>
           <td align="center">
             <p class="caption">A diagram of the Sun and the Earth (not to scale) during each season</p>
           </td>
         </tr>
       </table>
       


    <tr>
      <td><a href="seasons.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: The Seasons" /></a>
      <a href="../../../../"><img align="right" src="../../../images/home.gif" alt="SkyServer home page" /></a></td>
    </tr>
    <tr>
    <td>
      <p class="midbodytext">Seasons image from <a href="http://en.wikipedia.org/wiki/Image:North_season.jpg" target="offsite">Wikipedia article</a>, under 
         <a href="http://creativecommons.org/" target="offsite">Creative Commons</a> license. Created by user "Tau'olunga". Links open in new window.</p>
      </td>
    </tr>
</table>
</div>
</asp:Content>
