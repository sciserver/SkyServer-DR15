<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="Making.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.Making" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<a name="top"></a>
<h1>Making a Color-Color Diagram</h1>

<table border=1 width=250 align=right>
  <tr>
    <td align=center><a href="#top" onclick="window.open('images/hypothetical_big.jpg','sidebar','width=615,height=415,resizeable,scrollbars');">
    <img src="images/hypothetical.jpg"></a>
  </tr>
  <tr>
    <td><p class=caption align=center>Click on the image for a larger view</p></td>
</table>

<p>To make a color-color diagram, find 
two colors of a single star; for example, g-r and <br>u-g. Then, make a graph with u-g 
on the x-axis and g-r on the y-axis. The star you found will plot into a point on 
the color-color diagram. Find colors of several other stars and plot them on the 
same graph. The image at the right shows what a hypothetical color-color diagram 
might look like.</p>

<p>To understand how a thermal source should look on a color-color diagram, look at the 
thermal radiation curve below. The blue curve is for a star with T = 5730 C. The 
red curve is for a cooler star, at T = 4730 C. The graph shows snapshots from SDSS's 
ultraviolet, green, and red filters.</p>

<img src="images/colormove.jpg">

<p>In both curves, the green-wavelength intensity is greater than the ultraviolet-wavelength 
intensity. That is, the green magnitude is <i>less</i> than the ultraviolet magnitude. 
Because magnitude decreases as the intensity of light emitted by a star increases, magnitude 
<i>decreases</i> moving up the y-axis on this graph. So u-g, which is the difference between 
the ultraviolet and green magnitudes, is positive for both curves, but it is less 
for the T = 4730 C curve. Similarly, g-r increases between the T = 5730 curve and the T = 4730 curve, 
although not as much as u-g.</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Question 6</strong>. If you made a color-color diagram of these two stars, 
with u-g on the x-axis and g-r on the y-axis, what would you see?</p>
</td></tr>
</table>

<p>Question 6 asks you what you would see if you made a color-color diagram for the two 
thermal sources graphed above. But what if you made a color-color diagram of many thermal 
sources? As you change the temperature, you change the thermal radiation curve. As the 
curve changes, the colors change. Because the filters are at fixed wavelengths, though, 
if one color (such as u-g) decreases, the next color (g-r) will increase. When 
you make a color-color diagram for thermal sources of different temperatures, you will get 
a straight line.</p>

<p>For the u-g/g-r color-color diagram, the line you get will be 
an extension of the line that connects the two points in Question 8. The slope of the line will be determined by the filters you use and the 
sources you examine.</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Question 7</strong>. What would you get if you made a color-color diagram 
with g-r on the x-axis and r-i on the y-axis? With r-i on the x-axis and i-z on the y-axis?
<br>Hint: think about how thermal radiation curves change at longer wavelengths.</p>

</td></tr>
</table>

<p>So making a color-color diagram gives you a simple way to tell if a star is a thermal 
source. If the star falls along one of the straight-line trends you found in the last two 
questions, it is a thermal source. If the star does not fall along a straight-line 
trend, it is not a thermal source.</p>

</td></tr>

<tr><td><p>&nbsp;</p></td></tr>

<tr><td><A href="colorcolor.aspx"><IMG src="../../images/previous.jpg" align=left></A>
<A href="sdssstars.aspx"><IMG src="../../images/next.jpg" align=right></A></td></tr>

</table>
<P>

</div>
</asp:Content>
