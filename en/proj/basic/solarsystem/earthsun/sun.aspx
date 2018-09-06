<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="sun.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.EarthSun.Sun" Title="Solar System: The Sun's Perspective" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">The Sun's Perspective</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

        <table align="right" width="150" cellpadding="2">
          <tr>
            <td><img src="images/sun.jpg" alt="A NASA image of the Sun" /></td>
          </tr>
          <tr>
            <td align="center"><p class="caption">The Sun</p></td>
          </tr>
        </table>
        

       <table class="exercise" width="73%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Explore 2.</b> Now, try taking the Sun's perspective. Imagine the <b><i>Sun</i></b> is at the center of your model, 
          instead of the Earth. That is a more realistic perspective, because the asteroids really orbit the Sun rather than the Earth.</p>
          
          <p>Of course, the Earth orbits the Sun also. On September 22nd of every year, the Earth is at about RA = 0, Dec = 0. Draw a small 
          + (plus sign) mark at that point with permanent marker and label is "Sept. 22nd".</p>
                 
          <p>Now, rotate the model so that the ecliptic (the circle of asteroids and planets, which includes Earth) appears perfectly horizontal. Imagine 
          that you are standing on the Sun (at the center of the cylinder), looking out at the Earth. You can see light rays going from the Sun out 
          to the Earth. At what angle do these light rays hit the cylinder? (Assume that an angle of zero degrees means the rays hit straight up and down.)</p>
      </td>
    </tr>
          </table>
          </td>
        </tr>

    <tr>
      <td><a href="../default.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Earth, Sun, and Seasons" /></a>
      <a href="seasons.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: The seasons" /></a></td>
    </tr>
  
</table>
</div>
</asp:Content>
