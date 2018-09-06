<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="Collisions.aspx.cs" Inherits="SkyServer.Proj.Advanced.Galaxies.Collisions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Galaxy Collisions</h1>
      <p>Did you notice how many galaxies are in a cluster like Abell 2255? When 
      that many galaxies share 
      relatively small area of space, it should not be surprising that 
      galaxies sometimes collide. In fact, the Milky Way 
      Galaxy is colliding with the Sagittarius Dwarf Galaxy right now. 
      Although galaxy collisions are common, stars are so far apart that 
      collisions between stars are very rare.</p>

      <p>
      <img border="0" src="images/752-6-410.jpg" align="right" width="280" height="279"></p>

      <p>Even if galaxies don't directly collide, though, they can still affect 
      one another. When two galaxies pass close to one another, the gravitational 
      force they exert on one another can cause both galaxies to warp. Both crashes 
      and near misses between galaxies are referred to as "interactions."</p>
      
      <p></p>
      <p>At the right you can see two galaxies interacting. You can see 
      they are being distorted by the gravitational interaction between them. 
      Can you imagine what they might have looked like before the interaction?</p>
      <p>Interactions frequently lead to a burst of star formation. Inside each 
      galaxy, clouds of gas that were relatively sparse may become compressed. 
      Compressing the clouds can cause them to undergo gravitational collapse, 
      leading to a new generation of stars in a galaxy where normal star 
      formation may have ceased long ago.</p>
      <p>&nbsp;</p>
      <p><img border="0" src="images/125-3-285.jpg" align="left">The galaxy on the left is 
      believed to be the result of a collision. It is called a Seyfert 
      galaxy. A Seyfert galaxy has an active nucleus - notice how bright its 
      central bulge is. It is believed that gas from one galaxy is being swallowed by a 
      giant black hole at the center of the other galaxy. This matter 
      heats up to extremely high temperatures before it is pulled into the black 
      hole and emits tremendous amounts of energy. A similar process is 
      believed to power quasars.</p>
      <p>You can study this process by watching it happen on your computer! 
      Astronomer Chris Mihos and his colleagues from Case Western Reserve University 
      and the University of Oregon have written a free Java applet that simulates 
      interacting galaxies. Go to their web site by clicking 
      <a target="_blank" href="http://burro.astr.cwru.edu/JavaLab/GalCrashWeb/">here</a>.</p>
      <p>Click <b>Applet</b> to launch the applet. A new window will open, and the 
      program will take a moment to load. Click <b>Controls</b> to launch a small 
      window describing the applet's controls. Change the angles of the galaxies with 
      respect to each other by clicking the dials with the left or right mouse 
      buttons. Change their separation distance by changing the "Peri" variable, and 
      change the mass of the red galaxy with respect to the green galaxy by changing 
      "Red Galaxy Mass."</p>
      <p>If you don't see both galaxies in the window to the right, click Reset. 
      To start the simulation, click Start. You will see the two galaxies interact in the 
      right side of the window. The window also shows the elapsed time in millions of 
      years and the separation of the galaxies in kiloparsecs (1 kiloparsec = 1000 
      parsecs = about 3000 light-years). The graph at the bottom shows the separation (red) and 
      the relative velocity of the galaxies (blue) as a function of time.</p>
      <p>If you're interested in learning more about what galaxies look like when they 
      interact, use the applet to answer the questions below. Otherwise, click Next.</p>
      
      <a name="supex1"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Supplemental Exercise 1:</strong>
          Change the angles, initial separation, and initial masses of the galaxies. 
          Also try checking "friction," which turns on friction in the simulation, and 
          "big halos," which gives the galaxies large dark matter haloes. Experiment 
          by changing some of the parameters. Have fun!</p></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Supplemental Question 1:</strong> What are the most 
          important parameters for determining what a galaxy interaction will 
          look like?</p></td>
        </tr>
      </table>

      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Supplemental Question 2:</strong> Can you design a 
          simulation that will give you an output that looks like the picture 
          above? What parameters do you need to use?</p></td>
        </tr>
      </table>
          
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="spectra.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="galaxies.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
