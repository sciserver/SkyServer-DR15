<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="OrionStars.aspx.cs" Inherits="SkyServer.Proj.Kids.Constellation.OrionStars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">

<tr><td>

<a name="example"></a>
<h1 class="kidsheader">Stars in Orion</h1>

<table width=150 align=right>
<tr>
  <td><img src="images/orionstars_tiny.jpg"></td>
</tr>
<tr><td align=middle><span class='caption'>The Constellation Orion</span><br>
    <font size=-2>Copyright Bernd Mienert. Courtesy of the
    <a href="#example" onclick="window.open('http://aida.astroinfo.org','offsite');">
    Astronomical Image Data Archive</a>.</font></td>
</tr>
</table>

<p class="kids">Orion consists of seven major stars: two for his shoulders, two for his feet, 
and three for his belt. Each star has a name. Also, astronomers have 
measured bright and how far away each star is.</p>

<p class="kids">Astronomers measure how bright a star is with a number called 
<em>magnitude</em>. The brighter the star, the lower the magnitude. Also, 
magnitude changes very fast. A difference of 5 in magnitude means a factor of 100 
difference in brightness.</p>

<table align=left bgcolor=black border=0><tr>
  <td><img src="images/13star.jpg"></td>
  <td><img src="images/18star.jpg"></td>
</tr></table>

<p class="kids">The stars to the left are magnitude 13 and 18, so they differ by a factor of 100. 
Similarly, a magnitude 1 star is 100 times brighter than a magnitude 6 star. 
This might seem confusing to you, but astronomers have used magnitude for thousands of years.</p>

<table align=right><tr>
  <td><img src="images/shuttle1.gif"></td>
</tr></table>

<p class="kids">Astronomers measure distance in <em>light-years</em>. One 
light-year is the distance light travels in one year: 9,458,000,000,000 kilometers. A light-year is a long way: to go one light-year in the Space Shuttle would take you about 40,000 years!</p>

<p class="kids">The table below shows magnitudes and distances for the seven stars that make up 
Orion. What can you learn about the stars from these numbers?</p>

<table width=600 cellpadding=5 cellspacing=0 border=1>

<tr>
<td><p class=kids><font class=caption>Star Name</font></p></td>
<td><p class=kids><font class=caption>Part of Orion</font></p></td>
<td><p class=kids><font class=caption>Magnitude</font></p></td>
<td><p class=kids><font class=caption>Distance (light-years)</font></p></td>
</tr>

<tr>
<td><p class=kids>Betelgeuse</p></td>
<td><p class=kids>Left shoulder</p></td>
<td><p class=kids>0.45</p></td>
<td><p class=kids>427</p></td>
</tr>

<tr>
<td><p class=kids>Saiph</p></td>
<td><p class=kids>Left foot</p></td>
<td><p class=kids>2.07</p></td>
<td><p class=kids>720</p></td>
</tr>

<tr>
<td><p class=kids>Bellatrix</p></td>
<td><p class=kids>Right shoulder</p></td>
<td><p class=kids>1.64</p></td>
<td><p class=kids>243</p></td>
</tr>

<tr>
<td><p class=kids>Rigel</p></td>
<td><p class=kids>Right foot</p></td>
<td><p class=kids>0.18</p></td>
<td><p class=kids>773</p></td>
</tr>

<tr>
<td><p class=kids>Alnitak</p></td>
<td><p class=kids>Left belt</p></td>
<td><p class=kids>1.82</p></td>
<td><p class=kids>815</p></td>
</tr>

<tr>
<td><p class=kids>Alnilam</p></td>
<td><p class=kids>Center belt</p></td>
<td><p class=kids>1.69</p></td>
<td><p class=kids>1,350</p></td>
</tr>

<tr>
<td><p class=kids>Mintaka</p></td>
<td><p class=kids>Right belt</p></td>
<td><p class=kids>2.41</p></td>
<td><p class=kids>916</p></td>
</tr>

</table>

<p class=kids>Even though the stars look similar to your eye, they are all very different. They 
have different brightnesses and are at different distances from Earth.</p>
<tr><td><p>&nbsp;</p></td></tr>

<tr><td><a href="orion.aspx"><img src="../../images/previous.jpg" align=left>
<a href="othershapes.aspx"><img src="../../images/next.jpg" align=right></td></tr>

<tr><td><p><font size=-2>Clip art licensed from the Clip Art Gallery on 
<a href="http://www.discoveryschool.com" target="offsite">DiscoverySchool.com</a>
</font></p></td></tr>

</TABLE>
<P></P>

</div>
</asp:Content>
