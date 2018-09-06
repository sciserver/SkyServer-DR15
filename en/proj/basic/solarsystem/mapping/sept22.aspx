<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="sept22.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Mapping.Sept22" Title="Solar System: Planets on September 22nd, 2006" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">The Planets on September 22nd, 2006</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

     <p>The table below shows the coordinates of the planets on September 22nd, 2006. Uranus and Neptune are listed, even though you 
        can't see them without binoculars or a telescope:</p>
        
     <table width="40%" border="1" cellpadding="2" cellspacing="2">
       <tr>
         <th width="40%">Planet</th>
         <th width="30%">RA</th>
         <th width="30%">Dec</th>
       </tr>
       <tr>
         <td width="40%" align="right">Mercury</td>
         <td width="30%" align="right">194</td>
         <td width="30%" align="right">-6.0</td>
       </tr>       
       <tr>
         <td width="40%" align="right">Venus</td>
         <td width="30%" align="right">171</td>
         <td width="30%" align="right">5.5</td>
       </tr> 
       <tr>
         <td width="40%" align="right">Mars</td>
         <td width="30%" align="right">188</td>
         <td width="30%" align="right">-2.9</td>
       </tr>  
       <tr>
         <td width="40%" align="right">Jupiter</td>
         <td width="30%" align="right">225</td>
         <td width="30%" align="right">-16.1</td>
       </tr>    
       <tr>
         <td width="40%" align="right">Saturn</td>
         <td width="30%" align="right">143</td>
         <td width="30%" align="right">15.6</td>
       </tr>    
       <tr>
         <td width="40%" align="right">Uranus</td>
         <td width="30%" align="right">344</td>
         <td width="30%" align="right">-7.8</td>
       </tr>   
       <tr>
         <td width="40%" align="right">Neptune</td>
         <td width="30%" align="right">320</td>
         <td width="30%" align="right">-15.9</td>
       </tr>                                          
     </table>

      <p></p>

      <table class="exercise" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Explore 1.</b> Your teacher will have set up a large, blank graph in your classroom.  Get into groups of 2 or 3. 
             Each group will choose one planet from the list. Select a member of your group to put a dot on the graph at the position where your 
             planet was on September 22nd, 2006. Each group will place one planet on the graph.</p></td>
        </tr>
      </table>  
      
      <p></p>
      
      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 1.</b> Now that everyone is done placing their point on the graph, your class has made a map of the Solar 
             System as it appeared from Earth on September 22nd, 2006. Look carefully at the map. What does it tell you about the Solar System?</p></td>
        </tr>
      </table>          
      
      </td>
    </tr>
          

    <tr>
      <td><a href="planets.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: The Planets" /></a>
      <a href="asteroids.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: Asteroids" /></a></td>
    </tr>

</table>
</div>
</asp:Content>
