<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="planets.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Mapping.Planets" Title="Solar System: Planets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Planets</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

      <table width="216" border="0" align="right" cellpadding="2">
        <tr>
          <td>
            <img src="images/jupiter.gif" alt="The Planet Jupiter" align="right" />
          </td>
        </tr>
        <tr>
          <td align="center">
            <p class="caption">The Planet Jupiter</p>
          </td>
        </tr>
      </table>
    
      <p>Let's start with the planets. If you've spent many nights looking at the sky, you might have noticed two things about the planets. The first 
         thing is that planets are some of the brightest things in the sky - Venus is very bright, white, and usually low in the sky, Mars is bright and red, 
         and so on. It's important to remember that we didn't just make up our model of the Solar System - it's based on things that we actually see in 
         the sky.</p>
      
      <p>The other thing you might have noticed about the planets is that they move! Stars seem to move across the sky as the Earth rotates, but they 
         don't change positions relative to each other. But the planets move, night after night, against the background of stars.</p>
      
      <p>Planets don't really move around the Earth - they move around the Sun. But we clearly see them move, night after night, when we look at the sky. </p>
      
      <p>We know enough about how the planets move that we can calculate exactly where a planet will be each night. On a single night, we can 
         assign coordinates (RA and Dec) to each planet, even though we know that the coordinates will be a little different the next night. Let's look 
         at where the planets were on the night of September 22, 2006.</p>      
      
      </td>
    </tr>
          

    <tr>
      <td><a href="default.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Mapping the Solar System" /></a>
      <a href="sept22.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: The Planets on September 22, 2006" /></a></td>
    </tr>
  
  <tr>
    <td>
           <p class="midbodytext">Jupiter image from the <a href="http://nssdc.gsfc.nasa.gov/" target="offsite">National Space Science Data Center</a>. (link opens in new window)</p>
    </td>
  </tr>
</table>
</div>
</asp:Content>
