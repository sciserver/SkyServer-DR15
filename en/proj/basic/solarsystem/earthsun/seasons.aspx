<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="seasons.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.EarthSun.Seasons" Title="Solar System: The Seasons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">The Seasons</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>



       <p>In the last Explore exercise, you saw that the Sun's rays hit the cylinder at an angle of zero degrees - 
       straight up and down. This means that on September 22nd, the Sun's rays hit the equator at an angle of 
       zero degrees, going straight up and down. But what happens on some other days of the year?</p>
       
       <p>The table below shows the approximate position of the Earth, from the Sun's perspective, on several days.</p>
       
     <table width="40%" border="1" cellpadding="2" cellspacing="2">
       <tr>
         <th width="50%">Date</th>
         <th width="25%">RA</th>
         <th width="25%">Dec</th>
       </tr>
       <tr>
         <td width="50%" align="right">December 22nd</td>
         <td width="25%" align="right">90</td>
         <td width="25%" align="right">23</td>
       </tr>       
       <tr>
         <td width="50%" align="right">March 21st</td>
         <td width="25%" align="right">180</td>
         <td width="25%" align="right">0</td>
       </tr>              
       <tr>
         <td width="50%" align="right">June 21st</td>
         <td width="25%" align="right">270</td>
         <td width="25%" align="right">-23</td>
       </tr>              
     </table>
       
       <p></p>

       <table class="exercise" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Explore 3.</b> Add plus signs onto the sphere for the points where the Earth is on March 21st, June 21st, and 
          December 22nd? Label each of the plus signs with their dates. At what angle do the Sun's rays hit the Earth on these days?</p>
          
          </td>
        </tr>
      </table>  
      
      <p>The Earth is not a plus sign; it's a sphere. Even though the Earth is very small compared to the Sun, the fact that it is a sphere 
         still has an important meaning for our lives on Earth.</p>
      
      <p>A sphere like the Earth can be divided into two <span class="vocabulary">hemispheres</span>. 
      On the Earth, North America, Europe, and Asia lie in the <span class="vocabulary">Northern Hemisphere</span>, while Australia and most of 
      Africa and South America lie in the <span class="vocabulary">Southern Hemisphere.</span></p>
      
      <p>Imagine that the plus signs you drew on the map are actually tiny spheres that represent the Earth. The Equator is the line in the middle. 
      The North Pole is the line that points up, and the South Pole is the line that points down.</p>
      
      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 1.</b> In each of the four imaginary spheres, where is the Northern Hemisphere? Where is the Southern Hemisphere?</p>
          </td>
        </tr>
      </table> 

      <p></p>

      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 2.</b> Which hemisphere receives the most sunlight on June 21st? On December 22nd?</p>
          </td>
        </tr>
      </table>       

      <p></p>

      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 3.</b> How does the observation you made in Question 2 explain the seasons? How are seasons different 
          between the Northern and Southern Hemispheres?</p>
          </td>
        </tr>
      </table>        

      </td>
    </tr>
          

    <tr>
      <td><a href="sun.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: The Sun's Perspective" /></a>
      <a href="conclusion.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: Conclusion" /></a></td>
    </tr>
  
</table>
</div>
</asp:Content>
