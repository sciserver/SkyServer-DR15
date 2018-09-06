<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Coordinates.MapsAndGlobes" Title="Solar System: Coordinates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Solar System: Coordinates</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

      <p>To learn about the Solar System, it helps to understand <span class="vocabulary">coordinates</span> 
         that can be used to describe it.</p>
         
     <table align="right" cellpadding="2">
        <tr>
          <td>
            <img src="images/graph.jpg" alt="A simple x-y graph" /> 
          </td>
        </tr>
        <tr>
          <td align="center">
            <p class="caption">A simple x-y graph</p>
          </td>
        </tr>
    </table>       
     
      
      <p>You may have seen coordinates on an x-y graph - x goes horizontally 
         and y goes vertically. The graph at the right is a very simple graph of x and y.</p>     
         
      <p>But to make a graph of the Solar System, we need to use a different type of coordinates. We are 
         looking from Earth, and Earth is a sphere. So we must use coordinates that can work on the 
         surface of a sphere. The coordinates for the sky are based on coordinates for the Earth.</p>
         
      <p>Click Next to learn about how Earth coordinates work.</p>
      

           
      
      </td>
    </tr>
          

    <tr>
      <td><a href="../default.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Solar System home" /></a>
      <a href="coordinates.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: Earth coordinates" /></a></td>
    </tr>
  </tr>
  <tr>
    <td>
      <p class="midbodytext">Image from the <a href="http://www.nasa.gov/" target="offsite">NASA</a> <a href="http://earthobservatory.nasa.gov/" target="offsite">Earth Observatory</a> experiment. (links open in new window)</p>
    </td>
  </tr>
</table>
</div>
</asp:Content>
