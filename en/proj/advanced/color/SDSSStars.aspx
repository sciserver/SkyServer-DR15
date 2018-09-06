<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="SDSSStars.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.SDSSStars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>A Color-Color Diagram for SDSS Stars</h1>

<p>Thermal sources plot into a straight line on a color-color diagram. What do you get when 
you plot the observed colors of stars? This question is another way of asking the 
question you were asked in the "A Word of Warning" section: how close are stars 
to being perfect thermal sources?</p>

<p>You now know enough to find out for yourself.</p>

<a name="expl6"></a>
<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Explore 5</strong>. Use SkyServer's Object Explorer to find the 
stars with the following object IDs in the SDSS database. Look at the object's 
magnitudes in SDSS's five filters - they are the quantities u, g, r, i, and z in 
the second row next to the object's image. Save the stars in your notebook. Use this 
<a href="workbooks/explore5.xls" target="workbooks">SkyServer workbook</a> to keep track 
of your data.</p>

	<table border=1 cellpadding=3 cellspacing=2 align=center>
	<tr>
		<td align=center><p class=caption>Object ID</p></td>
		<td align=center><p class=caption>RA</p></td>
		<td align=center><p class=caption>Dec</p></td>	
	</tr>
	<tr>
		<td align=center width=158><p>
		<a href="../../../tools/explore/obj.aspx?id=1237674649928663196" target="tools">
       1237674649928663196</a></p></td>
		<td align=center width=64><p>179.88431</p></td>
		<td align=center width=64><p>-0.28125</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237674649928663243" target="tools">
		1237674649928663243</a></p></td>
		<td align=center><p>179.94806</p></td>
		<td align=center><p>-0.2724</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237674649391792322" target="tools">
		1237674649391792322</a></p></td>
		<td align=center><p>179.97106</p></td>
		<td align=center><p>-0.82002</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648720693821693" target="tools">
		1237648720693821693</a></p></td>
		<td align=center><p>179.8339</p></td>
		<td align=center><p>-0.55558</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648720693821753" target="tools">
		1237648720693821753</a></p></td>
		<td align=center><p>179.89941</p></td>
		<td align=center><p>-0.61227</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648720693821562" target="tools">
		1237648720693821562</a></p></td>
		<td align=center><p>179.97446</p></td>
		<td align=center><p>-0.55081</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648720693821706" target="tools">
		1237648720693821706</a></p></td>
		<td align=center><p>179.85499</p></td>
		<td align=center><p>-0.4708</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648720693821769" target="tools">
		1237648720693821769</a></p></td>
		<td align=center><p>179.91213</p></td>
		<td align=center><p>-0.50101</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648720693821564" target="tools">
		1237648720693821564</a></p></td>
		<td align=center><p>179.97887</p></td>
		<td align=center><p>-0.57861</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237674649928597663" target="tools">
		1237674649928597663</a></p></td>
		<td align=center><p>179.789</p></td>
		<td align=center><p>-0.29908</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648720693952659" target="tools">
		1237648720693952659</a></p></td>
		<td align=center><p>180.20067</p></td>
		<td align=center><p>-0.57081</p></td>
	</tr>	
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237674649928728781" target="tools">
		1237674649928728781</a></p></td>
		<td align=center><p>180.10892</p></td>
		<td align=center><p>-0.34719</p></td>
   </tr>   
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237674649391857908" target="tools">
		1237674649391857908</a></p></td>
		<td align=center><p>180.11286</p></td>
		<td align=center><p>-0.77366</p></td>
	</tr>	
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648720693952655" target="tools">
		1237648720693952655</a></p></td>
		<td align=center><p>180.19612</p></td>
		<td align=center><p>-0.47336</p></td>
	</tr>
	<tr>
		<td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237674649391923286" target="tools">
		1237674649391923286</a></p></td>
		<td align=center><p>180.16034</p></td>
		<td align=center><p>-0.72755</p></td>
	</tr>
	</table>

<p></p>
<p><a href="../../../tools/explore/obj.aspx" target="tools">
      Launch the Object Explorer</a></p>

</td></tr>
</table>

<p></p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Explore 6.</strong> Find the g-r, r-i, u-g, and i-z colors of each of 
the 15 stars you examined in Explore 6.</p></td></tr></table>

<p></p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Explore 7.</strong> Use Microsoft Excel or another graphing program to 
make a color-color diagram of the 15 stars from Explore 6, with g-r on 
the x-axis and r-i on the y-axis. The directions below will tell you how to use 
Microsoft Excel to make the diagram. To use another graphing program, you would 
follow similar steps.</p>

<P>Click on a box in the Excel spreadsheet. Enter the g-r color of one star 
from Explore 6. Hit the right arrow key, and the cursor will move to the box to 
the right of the first color. In this box, enter the r-i color of the same star.
Click on the box below the first g-r box to move the cursor to 
the next line. Repeat these steps to enter the g-r and r-i colors of each 
of the 15 stars. You will end up with two columns of data, one for g-r color and one 
for r-i color.</P>
<P>When you have finished entering the data, click on the upper-left box and 
drag the mouse to highlight all boxes that contain data. Then click the chart 
wizard, the stylized bar graph in the tools bar at the top of the page. In the 
chart wizard dialog box, select "XY (scatter)," then click next. On the next 
screen, click next again. On the third screen, give your chart a title, then 
label the x-axis "g-r" in the Value X axis box, and the y-axis "r-i" 
in the Value Y axis box. Click Next, and then on the next screen, click 
Finish.</P>
<P>A graph of your data will appear on the same page. Click on the x-axis, and 
the axis will become highlighted. (If some other part of the graph is 
highlighted instead, click outside the graph and click the x-axis again.) 
Double-click the x-axis to bring up the "Format Axis" dialog box. Click the 
scale tab at the top of the window, then give your axis an appropriate 
scale. Double-click the y-axis, then change the y-axis scale so that you 
can see all seventeen data points clearly.</p></td></tr></table>

<p></p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Question 8</strong>. Which end of the line in your graph 
corresponds to hotter stars? Which corresponds to cooler stars? How do you know?
</p></td></tr>
</table>

<p></p>

<p>Your graph shows that hotter stars tend to follow the trend of a straight line, but 
cooler stars diverge from this trend. This means that hotter stars can be thought of as 
thermal sources, but cooler stars can not.</p>

<p></p>

<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Explore 8</strong>. Make another color-color diagram of the 15 stars 
from Explore 6, with u-g on the x-axis and g-r on the y-axis.</p></td></tr></table>

<p></p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Question 9</strong>. Again, the hottest stars follow a linear trend, meaning 
they can be thought of as thermal sources. But in the u-g/g-r diagram, where does 
this trend begin to break down? What is the significance of this observation for 
thinking about real stars as thermal sources?</p>
</td></tr>
</table>

<p></p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Question 10</strong>. If you know about stellar evolution - how 
stars change as time passes - you can answer this question. What is the significance of 
the flat line at the top of the u-g/g-r diagram? What types of stars are these?<br>
Hint: what does it mean for g-r to be constant as u-g changes?</p>
</td></tr>
</table>

<p>The last few exercises have shown you what the colors of stars can tell you. But what 
about other astronomical objects, like galaxies? Click Next to find out.</p>

</td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><a href="making.aspx"><IMG src="../../images/previous.jpg" align=left>
<a href="other.aspx"><IMG src="../../images/next.jpg" align=right></a></td></tr>

</table>

</div>
</asp:Content>
