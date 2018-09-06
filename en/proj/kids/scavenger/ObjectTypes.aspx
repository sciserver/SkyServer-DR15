<%@ Page Title="" Language="C#" MasterPageFile="ScavengerMaster.master" AutoEventWireup="true" CodeBehind="ObjectTypes.aspx.cs" Inherits="SkyServer.Proj.Kids.Scavenger.ObjectTypes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ScavengerContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

      <p class="kidsheader">Types of Objects</p>
      
      <a name="stars"></a>
      <p class="kidsheader">Stars</p>
      <p class="kids">The SDSS observes lots of stars. Stars are giant balls of gas 
      burn hydrogen at their cores. When they run 
      out of hydrogen, they can burn other elements. 
      Eventually, their fuel supply runs out and they die.</p>
      
      <a name="starclusters"></a>
      <p class="kidsheader">Star Clusters</p>
      <table width=150 align=right border=1>
        <tr>
          <td><a href="images/pal3.jpg" target="images">
               <img src="images/752-4-52.jpg" border="0"></a></td>
        </tr>
        <tr>
           <td align=center><p class=caption>A star cluster <br> Click on the image for 
           a larger view</p></td>
         </tr>
      </table>              
      <p class="kids">Stars are often found in clusters, hundreds together. 
      There are many types of clusters. A typical star 
      cluster, as seen by the SDSS, is shown at the right.</p>
      <p class="kids">&nbsp;</p>
      
      <a name="galaxies"></a>
      <p class="kidsheader">Galaxies</p>
      <p class="kids">Galaxies are huge collections of stars. Our galaxy, The Milky Way, 
      may contain up to a trillion stars. No one is exactly sure 
      how many. Other galaxies are even bigger. Some "dwarf"
      galaxies are much smaller.</p>
      <p class="kids">Galaxies come in different shapes. The three types of galaxies 
      are spiral, elliptical, and irregular. Examples of each type are 
      shown below.</p>
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
          <td width="24%" align=center><p class=caption>A spiral 
          galaxy (seen from the front)</p></td>
          <td width="27%" align=center><p class=caption>A spiral 
          galaxy<br>(seen from the side)</p></td>
          <td width="62%" align=center><p class=caption>An irregular galaxy</p></td>
        </tr>
      </table>
      <p class="kids">Sometimes, galaxies pass close to each other. When they do, their 
      gravity can cause them to warp. The galaxies can 
      bend each other, making them look like the pair shown below.</font></p>
      <table border="1" cellpadding="0" cellspacing="0" width="32%" id="AutoNumber2">
        <tr>
          <td width="100%" align=center>
          <img src="images/752-6-410.jpg" border="0"></td>
        </tr>
        <tr>
          <td width="100%" align=center><p class=caption>A close pair of 
          galaxies</p></td>
        </tr>
      </table>
    
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><p>&nbsp;</p></td>
    </tr>
    <tr>
      <td><a href="data.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="objecttypes2.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
