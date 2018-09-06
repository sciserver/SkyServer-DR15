<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="ObjectTypes2.aspx.cs" Inherits="SkyServer.Proj.Scavenger.ObjectTypes2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <h1>Types of Objects</h1>
      

      <a name="asteroids"></a>
      <h1>Asteroids</h1>
      <p>Asteroids are small pieces of rock that orbit the Sun, mostly between 
      Mars and Jupiter. Asteroids move quickly across the sky, 
      so they can be seen in SDSS images (see the <a href="../../basic/asteroids">
      Asteroids</a> project to learn more). 
      If an asteroid moves slowly, it will show up in images as a blue dot next 
      to a yellow dot. Fast moving asteroids 
      show up as a red, green and blue dot in succession. Very fast moving 
      asteroids may appear as colored streaks. Examples of each 
      type are shown below. Asteroids that appear as blue-yellow dots trick the 
      computer program that classifies objects, so their types are listed as stars.</p>
      <table border="1" cellpadding="1" cellspacing="1" width="100%" id="AutoNumber3">
        <tr>
          <td width="33%" align=center><img src="images/frameByRCFZ.gif" width="193" height="202"></td>
          <td width="33%" align=center><img src="images/asteroidinngc4030.gif" border="0"></td>
          <td width="34%" align=center><img src="images/asteroid.gif" align="right" border="0"></td>
        </tr>
        <tr>
          <td width="33%" align=center><p class=caption>A slow-moving 
          asteroid</p></td>
          <td width="33%" align=center><p class=caption>A slightly faster asteroid in front of a galaxy</p></td>
          <td width="34%" align=center><p class=caption>A very fast-moving 
          asteroid</p></td>
        </tr>
      </table>
      <p></p>
      
      <a name="meteors"></a>
      <h1>Meteors</h1>

      <table align=right border=1>
        <tr>
          <td><img src="images/meteor.jpg" border="0" align="right"></td>
        </tr>
        <tr>
           <td align=center><p class=caption>A meteor</p></td>
         </tr>
      </table>              
      <p>Sometimes, tiny particles of rock or dust fall toward the Earth. As they enter the Earth's atmosphere, they heat up and start to glow. From the ground, we see a long, glowing trail of light that passes quickly through the sky. These trails of light are called <em>meteors</em>. They are also known as shooting stars.</p>

      <p>In the Navigation tool, you can recognize meteors as long, glowing trails of light in just one color. The image to the right shows a meteor seen by the SDSS.</p>

      <a name="galaxyclusters"></a>
      <h1>Galaxy Clusters</h1>

      <table width=197 align=right border=1>
        <tr>
          <td><a href="../../../get/frameByRCFZ.aspx?Z=1&R=756&C=1&F=251">
      <img src="images/756-1-251.jpg" border="0" align="right"></a></td>
        </tr>
        <tr>
           <td align=center><p class=caption>A galaxy cluster<br>Click on the image for 
           a larger view</p></td>
         </tr>
      </table>              

      <p>Galaxies form in clusters of dozens or hundreds. The SDSS 
      has seen many clusters, including the cluster Abell 0957 shown at the 
      right. Galaxy clusters can be so far away that individual galaxies almost look 
      like stars!</p>
      <p>When you see a cluster in the Navigation tool, click on one of the objects to see 
      the object type. You 
      might be surprised to find what you thought was a star cluster is actually 
      a galaxy cluster!</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      
      <a name="ghosts"></a>
      <h1>&quot;Ghosts&quot;</h1>
      
      <table width=201 align=right border=1>
        <tr>
          <td>
      <img src="images/94-5-489.jpg" border="0" align="left"></td>
        </tr>
        <tr>
           <td align=center><p class=caption>A "ghost"</p></td>
         </tr>
      </table>
      
      <p>Sometimes, when the SDSS telescope looks at a very bright object, 
      the object's light is reflected inside the telescope. 
      These objects can cause &quot;ghosts&quot;. Ghosts are bands of light that 
      appear on the images. They are usually a single color, either red, 
      green or blue, depending on which filter was used when the ghost 
      occurred. A typical ghost is seen at the right.</p>
      
      <p>Now you're ready for the scavenger hunt! Click Next to see what objects you'll 
      be searching for.</p>
      
      </td>
    </tr>
    <tr>
      <td><p>&nbsp;</p></td>
    </tr>
    <tr>
      <td><p>&nbsp;</p></td>
    </tr>
    <tr>
      <td><a href="objecttypes.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="scavengerhunt.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
