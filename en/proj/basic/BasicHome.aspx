<%@ Page Title="" Language="C#" MasterPageFile="../ProjMaster.master" AutoEventWireup="true" CodeBehind="BasicHome.aspx.cs" Inherits="SkyServer.Proj.BasicHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Basic Projects</h1>

<p>Click on a project name or image to select a project.</p>

<table border=1 cellspacing=2 cellpadding=4>

<tr>
<td align=center><p class=caption>Name</p></td>
<td align=center><p class=caption>Description</p></td>
<td align=center><p class=caption>Image</p></td>
</tr>

<tr>
<td><p><a href="solarsystem/">Solar System</p></td>

<td width=55%><p>Look through data for thousands of asteroids to learn about the shape of the 
Solar System</p></td>

<td align=center bgcolor=black><a href="solarsystem/"><img src="images/saturn1.jpg" border=0></a></td>
</tr>


<tr>
<td><p><a href="scavenger/">Scavenger Hunt</p></td>

<td width=55%><p>Look through the SkyServer database to go on a 
scavenger hunt through the sky!</p></td>

<td align=center bgcolor=black><a href="scavenger/"><img src="images/trail.jpg" border=0></a></td>
</tr>

<tr><td>
<p><a href="universe/">The Universe</p></td>

<td width=55%><p>How big is the universe? Bigger than you could imagine - and 
getting bigger every day! Experience the expanding 
universe for yourself.</p></td>

<td align=center bgcolor=black><a href="universe/"><img src="images/whirlpool.jpg" border=0></a></td>
</tr>

<tr>
<td><p><a href="asteroids/">Asteroids!</p></td>

<td width=55%><p>Learn about asteroids, the wandering space rocks in our own Solar System, 
then look through SkyServer to find them. SkyServer has more than 100,000 asteroids for you to 
find!</p></td>

<td align=center><a href="asteroids/"><img src="images/roid.gif" border=0></a></td>

</tr>

<tr>
<td><p><a href="spectraltypes/">Types of Stars</p></td>

<td width=55%><p>With powerful telescopes, astronomers can see many 
millions of stars. How can you make sense of so many stars?</p>
<p>In this 
project, you'll figure out a way to organize stars into just a 
few categories, and you'll learn what these categories mean.</p></td>

<td align=center bgcolor=white><a href="spectraltypes/"><img src="images/specschem.gif" border=0></a></td>
</tr>
<tr>
<td><p><a href="color/">Color</p></td>

<td width=55%><p>Look up at the sky - what do you see?</p>
<p>If you're near a city, you may 
see a few bright white stars. But you're not really seeing the full story of the sky - 
stars have colors!</p>
<p>In this project, you'll see stars in beautiful shades of 
red, blue, and yellow, and you'll why stars have colors.</p></td>

<td align=center bgcolor=black><a href="color/"><img src="images/w.jpg" border=0></a></td>
</tr>
<tr>
<td><p><a href="galaxies/">Galaxies</p></td>

<td width=55%><p>Galaxies are huge - hundreds of millions of times bigger 
than our solar system. But even the nearest ones are so far away they 
look like tiny, fuzzy spots in the sky.</p>
<p>How do astronomers study things 
that are so big and so far away? In this project, you'll learn by looking 
at galaxies yourself.</p></td>

<td align=center bgcolor=black><a href="galaxies/"><img src="images/galaxy.jpg" border=0></a></td>
</tr>

</table>

</td></tr>

    <tr>
      <td><p class="sml">Saturn image from <a href="http://ael.gsfc.nasa.gov/saturnSaturn.shtml">NASA Atmospheric Experiments 
      Laboratory</a>.</p></td>
    </tr>
    <tr>
      <td><a href="../"><img align="left" src="../images/previous.jpg"></a>
      </a></td>
    </tr>



</table>
<P>

</div>
</asp:Content>
