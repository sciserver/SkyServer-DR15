<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="ObjectTypes.aspx.cs" Inherits="SkyServer.Proj.Scavenger.ObjectTypes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <h1>Types of Objects</h1>
      
      <a name="stars"></a>
      <h1>Stars</h1>
      <p>The SDSS observes lots of stars. Stars are giant balls of gas 
      that release energy by burning hydrogen at their cores. When they run 
      out of hydrogen, they can release energy by burning other elements. 
      Eventually, their fuel supply runs out and they die.</p>
      
      <a name="starclusters"></a>
      <h1>Star Clusters</h1>
      <table width=150 align=right border=1>
        <tr>
          <td><img src="images/752-4-52.jpg" border="0"></td>
        </tr>
        <tr>
           <td align=center><p class=caption>A star cluster</p></td>
         </tr>
      </table>              
      <p>Stars frequently are found in very densely packed clusters of hundreds 
      of stars. There are many types of clusters. A typical star 
      cluster seen by the SDSS is shown at the right.</p>
      <p>&nbsp;</p>
      
      <a name="galaxies"></a>
      <h1>Galaxies</h1>
      <p>Galaxies are huge collections of stars. Our galaxy, The Milky Way, 
      may contain up to a trillion stars - no one is exactly sure 
      how many. Other galaxies can be even larger, while some "dwarf"
      galaxies are much smaller.</p>
      <p>Galaxies come in different shapes. The three types of galaxies 
      are spiral, elliptical, and irregular. Spiral galaxies are "face-on" when 
      you see the spiral shape and "edge-on" when you see them from the side. 
      Examples of each type are shown below.</p>
      <table border="1" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber1">
        <tr>
          <td width="21%" align=center><img src="images/n3377_E6.gif" width="116" height="119"></td>
          <td width="24%" align=center><img src="images/n1232_Sc.gif" width="133" height="132"></td>
          <td width="27%" align=center>
          <img src="images/94-6-434.jpg" border="0"></td>
          <td width="62%" align=center>
          <img src="images/interacting.jpg" width="142" height="118"></td>
        </tr>
        <tr>
          <td width="21%" align=center><p class=caption>An elliptical 
          galaxy</p></td>
          <td width="24%" align=center><p class=caption>A face-on spiral 
          galaxy</p></td>
          <td width="27%" align=center><p class=caption>An edge-on spiral 
          galaxy</p></td>
          <td width="62%" align=center><p class=caption>An irregular galaxy</p></td>
        </tr>
      </table>
      <p>Sometimes galaxies pass close to each other. When they do, their 
      gravity can cause them to interact with each other. The galaxies can 
      bend each other, making them look like the pair shown below.</p>
      <table border="1" cellpadding="0" cellspacing="0" width="32%" id="AutoNumber2">
        <tr>
          <td width="100%" align=center>
          <img src="images/752-6-410.jpg" border="0"></td>
        </tr>
        <tr>
          <td width="100%" align=center><p class=caption>A pair of 
          interacting galaxies</p></td>
        </tr>
      </table>
      
      <a name="quasars"></a>
      <h1>Quasars</h1>

      <p>Quasars are extremely distant galaxies with very active centers. Some of the most distant objects ever seen are quasars. For quasars to be visible at such great distances, they must be very bright: a single quasar can emit as much light as thousands of normal galaxies.</p>

      <table border="1" cellpadding="0" cellspacing="0" align=right>
        <tr>
          <td width="100%" align=center>
          <img src="images/quasar.jpg" border="0"></td>
        </tr>
        <tr>
          <td width="100%" align=center><p class=caption>A distant quasar seen by the SDSS</p></td>
        </tr>
      </table>

      <p>The images of quasars look like stars. Quasars can only be reliably identified by looking at their spectra. If you find a star in the Navigation Tool and wonder if it might be a quasar, check to see if the SDSS has measured its spectrum. If it has a spectrum measured, open the Object Explorer to see the spectrum. If the object's class is listed as "QSO" or "HIZ_QSO," the object is a quasar.</p>

      
      </td>
    </tr>
    <tr>
      <td><p>&nbsp;</p></td>
    </tr>
    <tr>
      <td><a href="explorer.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="objecttypes2.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
