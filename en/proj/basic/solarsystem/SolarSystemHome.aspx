<%@ Page Language="C#" MasterPageFile="SolarSystemMaster.Master" AutoEventWireup="true" CodeBehind="SolarSystemHome.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.SolarSystemHome" Title="SkyServer: The Solar System" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">The Solar System</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
                <p>Look at the picture below. It's a beautiful picture of the Solar System, created by artists at 
      <a href="http://www.nasa.gov">NASA</a>. You have probably seen pictures like it many times before. You know that the Sun is in the 
      middle and that the Earth is the third planet.</p>
      
      <img src="images/solar_sys2.jpg" alt="Picture of the Solar System created by NASA artists" />      
      
      <p>But have you ever wondered how we got that picture? Except for a few space probes, we've always stayed 
         on or near the surface of the Earth. Even astronauts have never made it beyond the moon. Our model of 
         how the Solar System looks was created entirely from our observations on Earth.</p>
         
      <p>In this Project, you will learn how we know what the Solar System looks like, and how the Earth fits 
         in to the Solar System. The project is divided into three activities, which are described below. Click on 
         one of the activities to get started.</p>
      
      <h2><a href="coordinates/" accesskey="1">Activity 1: Coordinate Systems</a></h2>
      <h2><a href="mapping/" accesskey="2">Activity 2: Mapping the Solar System</a></h2>
      <h2><a href="earthsun/" accesskey="3">Activity 3: Earth, Sun, and Seasons</a></h2>
      
    </td>
  </tr>

  <tr>
    <td>
      <p>&nbsp;</p>
    </td>
  </tr>

  <tr>
    <td>
      <p>&nbsp;</p>
    </td>
  </tr>

  <tr>
    <td align="right">
      <a href="coordinates/" ><img src="images/next.jpg" class="nextarrow" alt="Go to next page"></a>
    </td>
  </tr>
  
  <tr>
    <td>
      <p><a href="http://research.microsoft.com/"><img src="images/logo_ms.jpg" alt="Microsoft logo" /></a><br />
      This project was made possible by a grant from the Microsoft <a href="http://research.microsoft.com/~Gray/JimGrayCollaborations.htm">Bay Area Research Center External Research Fund</a></p>
    </td>
  </tr>
  
</table>

</div>

</asp:Content>
