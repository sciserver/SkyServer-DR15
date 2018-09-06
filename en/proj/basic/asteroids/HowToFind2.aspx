<%@ Page Title="" Language="C#" MasterPageFile="AsteroidsMaster.master" AutoEventWireup="true" CodeBehind="HowToFind2.aspx.cs" Inherits="SkyServer.Proj.Asteroids.HowToFind2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AsteroidsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <a name=moving></a>
      <h1>How to Find Asteroids</h1>  
      
      <p>The arrow below points to the asteroid. Did you find it?</p>
      <table border=1>
        <tr>
          <td><img src="images/752-2-289-arrow.jpg"></td>
        </tr>
      </table>
      <p>Here's a harder picture. Can you find the asteroid here?</p>
      <table border=1>
        <tr>
          <td><img src="images/asteroidinngc4030.gif" width="487" height="487"></td>
        </tr>
      </table>

      <p class=caption>An asteroid in front of the galaxy NGC 4030. Can you find it?</p>
      <p>Hint: think about the picture caption!</p>

      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="howtofind.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="findingasteroids2.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
