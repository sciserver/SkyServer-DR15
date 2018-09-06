<%@ Page Title="" Language="C#" MasterPageFile="../ProjMaster.master" AutoEventWireup="true" CodeBehind="ChallengesHome.aspx.cs" Inherits="SkyServer.Proj.ChallengesHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">SkyServer Research Challenges</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<p>In these research challenges, you will answer questions that really matter to 
astronomers. You figure out how to answer the question, collect data with 
SkyServer tools, interpret the data, and understand the universe.</p>

<p>These research challenges can be used for:</p>

<ul>
  <li><p><span class="important">STUDENTS</span>: projects for <a href="http://www.sciserv.org/isef/">Science Fairs</a> or other science competitions</p></li>
  <li><p><span class="important">TEACHERS</span>: guided inquiry or independent research activities</p></li>
  <li><span class="important">AMATEUR ASTRONOMERS</span>: database research to complement your observations</li>
</ul>


<p>Click a name or image to choose a research challenge:</p>

<table border=1 cellspacing=1 cellpadding=3>

  <tr>
    <td>
      <p><a href="milkyway/">The Milky Way</a></p>
    </td>
    <td width=55%>
      <p>Compare stars in the Milky Way disk to stars far from the 
      disk. What similarities and differences do you see? What does that 
      tell you about the structure of our galaxy?</p>
    </td>
    <td border=0 width=150 align=center>
         <a href="milkyway/"><img src="images/milkyway.jpg" border="0"></a>
    </td>
  </tr>

  <tr>
    <td>
      <p><a href="galaxies/">Small Galaxies</a></p>
    </td>
    <td width=55%>
      <p>Some galaxies are spirals, and some are ellipticals. Sometimes, it's easy to tell 
      which is which. But when a galaxy is very small, you can't recognize its shape. Can 
      you still tell whether it is spiral or elliptical based on observations of the galaxy?</p>
    </td>
    <td border=0 width=150 align=center>
         <a href="galaxies/"><img src="images/galaxy.jpg" border="0"></a>
    </td>
  </tr>

  <tr>
    <td>
      <p><a href="quasars/">Quasar Spectra</a></p>
    </td>
    <td width=55%>
      <p>Quasars are some of the most distant and mysterious objects in the universe. What can their 
      spectra tell us about what they are?</p>
    </td>
    <td border=0 width=150 align=center>
         <a href="quasars/"><img src="images/587739609162711177_image.jpg" border="0"></a>
    </td>
  </tr>

  <tr>
    <td>
      <p><a href="map/">Map the Universe</a></p>
    </td>
    <td width=55%>
      <p>From our point of view on Earth, we can see millions of galaxies, all over the sky, at many 
      different distances. Where are all the galaxies, and what can they tell us about the Universe we 
      live in?</p>
    </td>
    <td border=0 width=150 align=center>
         <a href="map/"><img src="images/galaxy_cluster.jpg" border="0"></a>
    </td>
  </tr>

  <tr>
    <td>
      <p><a href="hii/">HII Regions</a></p>
    </td>
    <td width=55%>
      <p>Find HII regions, the areas of glowing gas in other 
         galaxies where stars are born. As you find them, you'll help the 
         SDSS improve its photo processing software, which mistakes these 
         regions for separate galaxies.</p>
    </td>
    <td border=0 width=150 align=center>
         <a href="hii/"><img src="images/hiigalaxy.jpg" border="0" width="150" height="132"></a>
    </td>
  </tr>
</table>

</td></tr>

<tr><td><p>&nbsp;</p></td></tr>


<tr><td><p class="sml">Milky Way image courtesy of the <a href="http://www.spitzer.caltech.edu/">Spitzer Science Center</a> and 
<a href="http://www.nasa.gov">NASA</a></p></td></tr>

</table>
<P>

</div>
</asp:Content>
