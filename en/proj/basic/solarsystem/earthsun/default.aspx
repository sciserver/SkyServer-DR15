<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.EarthSun.EarthSunHome" Title="Solar System: Earth, Sun, and Seasons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Earth, Sun, and Seasons</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

     <p>In your map of the Solar System from the last activity, you should see that the asteroids form a circle in the sky above the Earth. 
        That circle should remind you of the models of the Solar System that you might remember from your textbook: the planets and asteroids 
        go around the Sun in invisible paths called <span class="vocabulary">orbits</span>.</p>
     
     <p>But why are the asteroid orbits tilted?</p>
        
      <table class="exercise" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Explore 1.</b> Explore the question of why the asteroid orbits are tilted. Look at the line you drew at Dec = 0 in 
          the last activity. As you learned earlier, Dec = 0 corresponds to standing on the Earth's equator and looking 
          directly up.</p>
          <p>Use a protractor to measure the angle between the horizontal line of Dec = 0 and the asteroids. What is the angle?</p>
          <p>Tell your teacher what the angle was. He or she will record the angles from the entire class, and will tell you the average.</p>
          </td>
        </tr>
      </table>  
      
      <p>Most asteroids go around the Sun in a plane called the <span class="vocabulary">ecliptic</span>. If you look back at the map of the planets that you 
         made in the last activity, you will see that the planets move in the ecliptic too. The angle you measured in Explore 1 is the angle between the plane of 
         the Earth's equator and the ecliptic. This means that from the Earth's perspective, the ecliptic is tilted. But from the <i>Sun</i>'s perspective, the 
         ecliptic is straight and the Earth's equator is tilted.</p>
      </td>
    </tr>
          

    <tr>
      <td><a href="../default.aspx"><img align="left" src="../../../images/previous.jpg" alt="Back to Solar System home" /></a>
      <a href="sun.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: The Sun's perspective" /></a></td>
    </tr>
  
</table>
</div>
</asp:Content>
