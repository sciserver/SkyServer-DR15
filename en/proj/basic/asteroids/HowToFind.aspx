<%@ Page Title="" Language="C#" MasterPageFile="AsteroidsMaster.master" AutoEventWireup="true" CodeBehind="HowToFind.aspx.cs" Inherits="SkyServer.Proj.Asteroids.HowToFind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AsteroidsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <a name=moving></a>
      <h1>How to Find Asteroids</h1>  
      
      <p>Finding asteroids takes practice. Remember that you are looking for 
      a yellow dot and a blue dot close together. The dots should be fairly 
      small and bright. The yellow dot can be reddish-yellow or greenish-yellow, 
      but the blue dot will always be dark blue. Most importantly, the two 
      dots should be close together: no more than a few millimeters (about an 
      eighth of an inch) apart. If two dots are more widely spaced, they are 
      probably two separate stars, not an asteroid.</p>
      <p>Can you find the asteroid in this image?</p>
      <table border=1>
        <tr>
          <td><img src="images/752-2-289.jpg"></td>
        </tr>
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
      <td><a href="findingasteroids1.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="howtofind2.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
