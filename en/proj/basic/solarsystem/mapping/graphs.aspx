<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="graphs.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Mapping.Graphs" Title="Solar System: Graphing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Graphing Your Data to Make a Map</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

     <p>You now have data for a number of different asteroids. On this page, you will make graphs of your data. These graphs will be maps of the Solar System.</p>

      <table class="exercise" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Explore 3.</b> Make graphs of the positions of asteroids on September 22nd, 2006. Make graphs of different numbers of 
          asteroids - 10, 500, 1000, and so on.</p>
           
          <p>Use a spreadsheet program to make the graphs. Here are instructions about <a href="../../../../help/howto/graph/" target="help">how 
          to make the graphs in Excel</a> (link opens in new window).</p>
          <p>If you don't have Microsoft Excel, try one of the following spreadsheet programs (links open in new windows):</p>
          <p><a href="http://www.openoffice.org" target="offsite">OpenOffice</a> (all operating systems)</p>
          <p>Put RA on the x-axis and Dec on the y-axis. Again, make sure your graph is twice as long as it is wide. The shape and axes of the graph 
          should look like this:</p>
          <!--<img src="images/radectemplate.jpg" alt="Sample image of a graph" />-->
          <img src="images/radectemplate3.png" alt="Sample image of a graph" />
          </td>
        </tr>
      </table>  
      
      <p></p>
      
      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 4.</b> How many different graphs did you make? How many asteroids were on each graph?</p></td>
        </tr>
      </table>        

      <p></p>

      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 5.</b> What shape do you see in the graphs? How many asteroids did you have to include before 
          you could clearly see the shape?</p></td>
        </tr>
      </table>        

      <p></p>

      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 6.</b> Remember that the graph you made is a map of the Solar System as seen from Earth. What do you think that 
          shape you see means? Why does the map look like it does?</p></td>
        </tr>
      </table>              
      </td>
    </tr>
          

    <tr>
      <td><a href="asteroids.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Asteroids" /></a>
      <a href="shape.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: The Shape of the Solar System" /></a></td>
    </tr>

</table>
</div>
</asp:Content>
