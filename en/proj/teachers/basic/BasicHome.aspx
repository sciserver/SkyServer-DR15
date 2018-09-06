<%@ Page Title="" Language="C#" MasterPageFile="../TeachersMaster.master" AutoEventWireup="true" CodeBehind="BasicHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.BasicHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TeachersContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>SkyServer Projects - Teacher's Guides</h1>

<p>Our projects are designed to teach astronomy interactively, using the tools that 
professional astronomers use. All examples in these projects are taken from real 
stars and galaxies as seen by the Sloan Digital Sky Survey, the most detailed survey 
in the history of astronomy.</p>

<p>These pages give information on how to use SkyServer's projects as an interactive lab 
in your science class. The projects were designed to be done individually, but they can 
be done in teams as well. Each individual or team will need a computer with Web access. 
The table below gives an overview of each project. Click on the project's name 
for more detailed information.</p>

<table border=1 cellspacing=1 cellpadding=3><tr><td>

<tr>

<tr>
<td><p><a href="<%=globals.UrlSolarSystemProj%>/teachers/">Solar System</p></td>

<td width=55%><p>Look through data for thousands of asteroids to learn about the shape of the 
Solar System</p>
<p>Estimated time: 3-4 hours</p>
</td>

<td align=center bgcolor=black><a href="<%=globals.UrlSolarSystemProj%>/teachers/"><img src="images/neptune.jpg" border=0></a></td>
</tr>

<tr>
<td>
<p><a href="scavenger/">Scavenger Hunt</p></td>

<td><p>Students use SkyServer's navigation tool to go on a scavenger hunt through 
the sky.</p>

<p>Estimated time: 3 hours</p></td>

<td><a href="scavenger/"><img src=images/stuff.gif border=0></a></td>

</tr>

<tr><td>

<p><a href="universe/">The Universe</p></td>

<td><p>Students take on the biggest project of <br>all - the whole universe. They learn 
how big the universe is, and how scientists know it is expanding. They then make a 
"Hubble Diagram" - a graph of galaxy distances and velocities - to see the expanding 
universe for themselves.</p>

<p>Estimated time: 5 hours</p>

<p></p></td>

<td align=center><a href="universe/"><img src=images/halo.jpg border=0></a></td>

</tr>
<tr>
<td><p><a href="asteroids/">Asteroids!</p></td>

<td><p>Students look through SkyServer data to find asteroids, small chunks of rock 
in the inner Solar System.</p>

<p>Estimated time: 1 hour</p>

</td>

<td align=center><a href="asteroids/"><img src=images/roid.gif border=0></a></td>
</tr>

<tr>
<td><p><a href="spectraltypes/">Types of Stars</p></td>

<td><p>Students learn how astronomers make sense of the millions of stars that they see.</p>

<p>Estimated time: 3 hours</p>

</td>

<td align=center><a href="spectraltypes/"><img src=images/specschem.gif border=0></a></td>
</tr>

<tr>
<td><p><a href="color/">Color</p></td>

<td width=55%><p>Students look at stars with many amazing colors, 
then learn why stars have different colors.</p>

<p>Estimated time: 11 hours. Shorter versions available.</p></td>

<td align=center><a href="color/"><img src="images/blueyellow.jpg" border=0></a></td>
</tr>
<tr>
<td><p><a href="galaxies/">Galaxies</p></td>

<td width=55%><p>Students develop a classification scheme for galaxies, 
then compare it to the Hubble Tuning Fork classfication used by 
astronomers. They also learn how galaxies are grouped together, and what 
happens when galaxies collide.</p>

<p>Estimated time: 9 hours. Shorter versions available. The last section 
of this project requires knowledge from the Color project.</p>

</td>

<td align=center><a href="galaxies/"><img src="images/ngc428.gif" border=0></a></td>
</tr>


</table>

<p>Neptune image from the <a href="http://nssdc.gsfc.nasa.gov/">National Space Science Data Center</a></p>

</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
</table>

<P></P>

</div>
</asp:Content>
