<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="skycoordinates.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Coordinates.SkyCoordinates" Title="Solar System: Sky Coordinates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Solar System: Sky Coordinates</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
        <table width="250" align="right" cellpadding="2" border="1"> 
          <tr>
            <td>
              <img src="images/sky.jpg" alt="Part of the sky seen through the Sloan Digital Sky Survey telescope" />
            </td>
          </tr>
          <tr>
            <td align="center">
              <p class="caption">Part of the sky seen through the Sloan Digital Sky Survey telescope</p>
            </td>
          </tr>
       </table>
    
       <p>Have you ever looked up at the sky from a dark place? You see lots of stars, as shown in the picture at the right. You can 
          almost imagine that the stars are painted on the inside of a gigantic black sphere.</p>
        <p>In reality, this sphere doesn’t exist; 
          stars are all at vast distances away from Earth and from one another. Even though it’s not real, the idea of 
          the <span class="vocabulary">Celestial Sphere</span> is useful, because it helps us point out specific places in the sky.</p>
       <p>The celestial sphere gives astronomers a coordinate system for the sky, based on the system that we use here on Earth. 
          The <span class="vocabulary">North Celestial Pole</span> is directly above the Earth's North Pole, close to the North Star. 
          There is also a <span class="vocabulary">Celestial Equator</span>, which is directly above the Earth's Equator. Finally, just 
          as we can imagine that lines of Longitude and Latitude are painted on the Earth, we can also picture coordinates 
          painted on the inside of the imaginary Celestial Sphere.</p>
       <p>Both the stars and the coordinate lines on the imaginary Celestial Sphere appear to rotate around the Earth, even though it’s 
          really the Earth that's rotating. But because both the stars AND the celestial sphere seem to rotate, the same star will appear 
          at the same place every night.</p>
       <p>So if you asked an astronomer where she was pointing her telescope to see a specific star, 
          she would answer with the coordinates of that star on the Celestial Sphere.</p>          

    <tr>
      <td><a href="mapsandglobes.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Maps and Globes" /></a>
      <a href="radec.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: RA and Dec" /></a></td>
    </tr>
  </tr>
</table>
</div>
</asp:Content>
