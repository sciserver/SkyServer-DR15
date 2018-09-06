<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="ObjectTypes2.aspx.cs" Inherits="SkyServer.Proj.Kids.Scavenger.ObjectTypes2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

      <p class="kidsheader">Types of Objects</p>
      
      <a name="asteroids"></a>
      <p class="kidsheader">Asteroids</p>
      <p class="kids">Asteroids are small pieces of rock that orbit the Sun, mostly between 
      Mars and Jupiter. Asteroids move quickly across the sky, 
      so they can be seen in SDSS images. (See the <a href="../../basic/asteroids">
      Asteroid Hunt</a> project to learn more.) 
      If an asteroid moves slowly, it shows up as a blue dot next 
      to a yellow dot. Fast-moving asteroids 
      show up as a red, green and blue dot. Very fast 
      asteroids appear as a single colored streak. Examples of each 
      type are shown below.</p>
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
      <p class="kids">Asteroids that appear as blue-yellow dots trick the 
      computer program that classifies objects, so their "object type" is 
      listed as star.</p>
      
      
      <a name="galaxyclusters"></a>
      <p class="kidsheader">Galaxy Clusters</font></p>

      <table width=177 align=right border=1>
        <tr>
          <td><a href="images/abell957.jpg" target="images">
      <img src="images/abell957_small.jpg" border="0" align="right"></a></td>
        </tr>
        <tr>
           <td align=center><p class=caption>A galaxy cluster<br>Click on the image for 
           a larger view</p></td>
         </tr>
      </table>              

      <p class="kids">Galaxies form in clusters of dozens or hundreds. The SDSS 
      has seen many clusters, including the one shown at the 
      right. Galaxy clusters can be so far away that individual galaxies almost look 
      like stars!</p>
      <p class="kids">When you see a cluster in the Navigation tool, click on one of the objects to see 
      the object type. You 
      might be surprised to find what you thought was a star cluster is actually 
      a galaxy cluster!</p>
            
      <a name="ghosts"></a>
      <p class="kidsheader">&quot;Ghosts&quot;</p>
      
      <table width=201 align=right border=1>
        <tr>
          <td>
      <img src="images/94-5-489.jpg" border="0" align="left"></td>
        </tr>
        <tr>
           <td align=center><p class=caption>A "ghost"</p></td>
         </tr>
      </table>
      
      <p class="kids">Sometimes, when the SDSS telescope looks at a very bright object, 
      the object's light is reflected inside the telescope. 
      These reflections can cause &quot;ghosts.&quot;</font></p>
      <p class="kids">Ghosts are bands of light. They are usually a 
      single color; either red, 
      green or blue, depending on which filter the camera was looking 
      through. A typical ghost is shown at the right.</font></p>
      
      <p class="kids">Now you're ready for the scavenger hunt! Click Next 
      to get started.</font></p>
      
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
