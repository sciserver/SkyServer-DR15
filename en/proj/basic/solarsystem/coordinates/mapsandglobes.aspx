<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="mapsandglobes.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Coordinates.MapsAndGlobes" Title="Solar System: Maps and Globes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Maps and Globes</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
       <p>Is there anything wrong with your model of the Earth? Well, for one thing, the Earth is not a cylinder! 
          The entire bottom edge of your model represents the South Pole, which is a single point on the real, spherical 
          Earth.</p>
       <p>Another problem with your model is that it doesn’t accurately represent true sizes. Antarctica appears 
          to be the largest continent on the planet, but in reality it’s not much larger than the United States. The map 
          below shows the true sizes of the United States and Antarctica:</p>
       <img src="images/antarctica.jpg" alt="Map comparing the sizes of the United States and Antarctica" />
       <p>In fact, the closer something is to either the North or South Poles, the more horizontally-stretched it will appear 
          on a simple map like the one from the previous page.</p>
          
       <p>These problems are the reason that we have globes! Globes are a perfect representation of the spherical 
          Earth. However, globes have their own problems: they’re bulky, not everyone has one, and they’re not easy to graph on.</p>
       <p>For these reasons, we still use flat maps. In spite of their problems, maps are useful representations of the features of 
          the Earth.</p>
          

    <tr>
      <td><a href="coordinates.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Earth Coordinates" /></a>
      <a href="skycoordinates.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: Sky Coordinates" /></a></td>
    </tr>
  </tr>
</table>
</div>
</asp:Content>
