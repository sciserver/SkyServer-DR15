<%@ Page Language="C#" MasterPageFile="../SolarSystemMaster.master" AutoEventWireup="true" CodeBehind="asteroids.aspx.cs" Inherits="SkyServer.Proj.SolarSystem.Mapping.Asteroids" Title="Solar System: Asteroids" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SolarSystemContent" runat="server">
<div id="title">Solar Systems: Asteroids</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

     <p>You might have noticed in the last Explore activity that it was hard to learn anything about the Solar System. There were only 
        seven points on the graph! Imagine if you had a map of the Earth, but you could only see seven cities.</p>
        
     <p>You will need more points to learn more about the shape of the Solar System. There are only a few planets, but there are many other 
        objects in the Solar System. There are more than 300,000 known <span class="vocabulary">asteroids</span>, small rocky objects that orbit the 
        Sun.  They range in size from hundreds of kilometers across to just a few meters. They may be small, but there are a lot of them! Let’s 
        see if they can help us get a better picture of the Solar System.</p>

     <p>Even though asteroids are smaller than planets, they have well-known orbits around the Sun, just like planets do. This means that looking 
        at the orbits of asteroids can help us learn more about the shape of the Solar System.</p>

     <p>SkyServer includes a database that contains information about hundreds of thousands of asteroids. 
        The database comes from the <a href="http://cfa-www.harvard.edu/iau/mpc.html" target="offsite" >Minor Planet Center</a> at Harvard 
        University, which collects information about newly discovered asteroids.</p>
     
     <p>SkyServer includes various tools for searching this database. One of the tools is called the Solar System Search Form. It gives you a 
        list of the positions of all the asteroids on September 22nd, 2006. You can combine this with the graph of planets that you 
        made in the last Explore activity to see how the Solar System looks from Earth. But now, instead of seven points, your map can have 
        thousands of points!</p>

      <table class="exercise" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Explore 2.</b> 
            
            Click the link below to open the Solar System Search Form. It will open in a new window.</p>
            
            <!--<p><a href="../form/form.asp" target="tools">Solar System Search Form</a></p>-->
              <p><a href="http://sdssorgdev.pha.jhu.edu/solarsystem/form/form.asp" target="tools">Solar System Search Form</a></p>
            
            <p>You have two choices on the form, shown in two drop-down menus. You can select the number of asteroids to return data for 
            [10, 50, 100, 500, 1000, 5000, 10000, or 30000], and you can select two different ways of returning the data. Stick with "RA and Dec" for now.</p>
            
            <p>After you have made your choices, click <b>Generate Query</b>. You will see computer code written in the box below. The code is written in 
            a language called <span class="vocabulary">SQL</span>, which is a language often used to search databases. You can choose <b><i>HTML</i></b> 
            or <b><i>CSV</i></b> as output options. HTML will display the results in your web browser. CSV will display results in a format that you can 
            download and open in a spreadsheet program.</p>
            
            <p>Choose several different values for the number of asteroids, and see the results as HTML. Then, choose the same numbers of asteroids, but 
            choose CSV. Download the data to your computer. If your computer asks you whether to Open or Save the file, choose Save.</p>
            
          </td>
        </tr>
      </table>  
      
<!-- can we include the Asteroids Search Form instead of linking to it? -->
<!--      include file="../form/default.aspx"--------- -->
      
      <p></p>
  
      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td><p><b>Question 2.</b> When you make changes to the choices in the drop-down menus, what changes do you notice in the SQL code?</p></td>
        </tr>
      </table>  
      
      <p></p>
            
      <table class="question" width="100%" cellpadding=5 cellspacing=0>    
        <tr>
          <td><p><b>Question 3.</b> What do you see when you have the form return asteroids as HTML? As CSV? What do you expect to see when you make 
                    a graph in the next activity?</p></td>
        </tr>
      </table>        
      
      </td>
    </tr>
          

    <tr>
      <td><a href="sept22.aspx"><img align="left" src="../../../images/previous.jpg" alt="Previous page: Planets on September 22, 2006" /></a>
      <a href="graphs.aspx"><img align="right" src="../../../images/next.jpg" alt="Next page: Graphing" /></a></td>
    </tr>

</table>
</div>
</asp:Content>
