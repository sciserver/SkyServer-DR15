<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="coordinates.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Coordinates.Coordinates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Solar System: Earth Coordinates</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
       <p>Do you know how to describe your position on the Earth?  One way would be to give your street address.  For example:</p>

        <blockquote>
          1060 West Addison Street<br />
          Chicago, Illinois  60613<br />
          United States of America
        </blockquote>

       <p>But, what if you were constantly on the move? Or, what if you were in the middle of the ocean?  In that case, you couldn’t give a 
          street address, but you could still identify your position using your coordinates on the surface of the earth, known as your 
          <span class="vocabulary">longitude</span> and <span class="vocabulary">latitude</span>.</p>
          
       <p>Latitude is measured in degrees north or south of the Equator. The Equator is an imaginary line at 0&#176; latitude. The North Pole is 
       at 90&#176; North, and the South Pole is at 90&#176; South.</p>
       
       <p>The picture below shows a map of the Earth. The center of the map, just off the coast of Africa, is the point where the Equator and the 
          Prime Meridian meet.</p>
       
       <p>&nbsp;</p>
        
       <img src="images/earth.jpg" alt="Color picture of the Earth" />

       <p></p>
       
      <table class=exercise width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Explore 1.</b> Your teacher will give you a full-page copy of this map.  Cut off all the white space around 
          the edges, then wrap it into a cylinder and tape the two short sides together.  You have just made a very simple model of the Earth.</p></td>
        </tr>
      </table>
       
      <p></p>
      
      <table class=question width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 1.</b> Compare your simple model of the Earth to a globe, which is another model of the Earth. How are the 
          two models similar and different?</p></td>
        </tr>
      </table>

      <p></p>

      <table class=question width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 2.</b> The flat map is a two-dimensional model, and the globe is a three-dimensional model. Which type of 
          model is better for modeling the Earth? Why do you think that might be?</p></td>
        </tr>
      </table>       
      
      </td>
    </tr>
          

    <tr>
      <td><a href="default.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Solar System Coordinates home" /></a>
      <a href="mapsandglobes.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: Maps and Globes" /></a></td>
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
