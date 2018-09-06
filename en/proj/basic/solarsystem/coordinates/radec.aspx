<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="radec.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Coordinates.RADec" Title="Solar System: RA and Dec" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Solar System: RA and Dec</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
       <p>The celestial coordinate that takes the place of longitude is called <span class="vocabulary">Right Ascension</span>, but 
          this is often shortened to <span class="vocabulary">RA</span>. It can be measured in degrees. Just as longitude on the Earth 
          starts with 0&#186; at the Prime Meridian, RA starts with 0&#186; at a specific line on the celestial sphere.</p>
       <p>The celestial coordinate that takes the place of latitude is called <span class="vocabulary">Declination</span>, often 
          abbreviated <span class="vocabulary">Dec</span>.  It is measured in degrees north or south of the Celestial Equator. The 
          Celestial Equator is at 0&#186; dec; the North Celestial Pole is at +90&#186;, and the South Celestial Pole is at -90&#186;.</p>
       <p>Together, the RA and Dec of a star make up an <span class="vocabulary">ordered pair</span> that can be plotted on a graph. 
          For example, the coordinates of seven well-known stars are given in the following table:</p>

       <table width="60%" border="1" cellpadding="2" cellspacing="2">
         <tr>
           <th align="right" width="40%">Star Name</th>
           <th align="right" width="30%">RA</th>
           <th align="right" width="40%">Dec</th>
         </tr>
         
         <tr>
           <td align="right">Betelgeuse</td>
           <td align="right">88.8</td>
           <td align="right">7.4</td>
         </tr>   
           
         <tr>
           <td align="right">Rigel</td>
           <td align="right">78.6</td>
           <td align="right">-8.2</td>
         </tr>                

         <tr>
           <td align="right">Bellatrix</td>
           <td align="right">81.3</td>
           <td align="right">6.3</td>
         </tr>

         <tr>
           <td align="right">Mintaka</td>
           <td align="right">83.0</td>
           <td align="right">0.3</td>
         </tr>

         <tr>
           <td align="right">Alnilam</td>
           <td align="right">84.1</td>
           <td align="right">-1.2</td>
         </tr>

         <tr>
           <td align="right">Alnitak</td>
           <td align="right">85.2</td>
           <td align="right">-1.9</td>
         </tr>
         
         <tr>
           <td align="right">Saiph</td>
           <td align="right">86.9</td>
           <td align="right">-9.7</td>
         </tr>
                                                
       </table>
       
      <p></p>

      <table class="exercise" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Practice 1.</b> What are the ordered pairs of (RA, Dec) for these stars?</p></td>
        </tr>
      </table>

      <p></p>

      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 3.</b> As you may know from math, when you have a list of ordered pairs, 
          you can make a graph. If you made a graph with RA on the x-axis and Dec on the y-axis, what do you 
          think you would see?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class="exercise" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
         <td width="100%"><p><b>Explore 2.</b> Make a graph of the stars above. You can do this in one of two 
          ways: either on a sheet of graph paper, or with a spreadsheet program. Whichever method you use, make 
          sure you make a map with the right scale: RA from 0 to 360, Dec from -90 to 90. Also, make sure the 
          graph is twice as long as it is wide.</p>
          
          <p>To use a spreadsheet program, you can use the link below to download the data:</p>
          
          <p><a href="stars.csv">Download the data as a CSV (comma-separated value) file</a>.</p>
          
          <p>If you are using Microsoft Excel, you can use this link to download an Excel spreadsheet, which has 
          a graph ready for you to fill in with the data above:</p>
          
          <p><a href="stars.xls">Download an Excel template</a></p>
          
          <p>If you have trouble seeing the stars plotted on your graph, try changing the scales to RA from 0 to 120, 
          Dec from -30 to 30.</p>
          </td>
        </tr>
      </table>      

      <p></p>

      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 4.</b> What do you see in the graph? Do you recognize the shape of this group 
          of stars? Is there anything about the way the stars appear that surprises you?</p></td>
        </tr>
      </table>       
    
       <p>If you did this for all of the bright stars in the sky, you’d have a map of all the constellations. We won't be 
          using maps and coordinates to study stars, though. We'll be studying objects in the Solar System, all of which 
          are much closer to us.</p>
          
       <p>Click Next to go on to Lesson 2, where you will see how you can use RA and Dec to map the Solar System.</p>
          </td>
        </tr>
    <tr>
      <td><a href="skycoordinates.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Sky Coordinates" /></a>
      <a href="../mapping"><img align="right" src="../../../images/next.jpg" alt="Next page: Mapping the Solar System" /></a></td>
    </tr>
</table>
</div>
</asp:Content>
