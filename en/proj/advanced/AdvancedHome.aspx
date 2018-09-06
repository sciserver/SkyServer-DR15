<%@ Page Title="" Language="C#" MasterPageFile="../ProjMaster.master" AutoEventWireup="true" CodeBehind="AdvancedHome.aspx.cs" Inherits="SkyServer.Proj.AdvancedHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Advanced Projects</h1>

<p>Click on a project name or image to select a project.</p>

<table border=1 cellspacing=1 cellpadding=3><tr><td>
<p><a href="hubble/">Hubble Diagram</p></td>

<td width=55%><p>Retrace the steps of astronomers like Edwin Hubble in the 
1920s, as they slowly began to realize we live in an expanding universe.</p></td>

<td align=center><a href="hubble/"><img src=images/merrygoround.jpg border=0></a></td>
</tr>

<tr><td><a href="color/"><p><a href="color">Color</a></p></td>

<td width=55%><p>Look up at the sky - what do you see? If you're near a city, you may 
see a few bright white stars. But you're not really seeing the full story of the sky - 
stars come in a dazzling array of colors, from bright blue to white to deep red. In this 
project, you'll see stars of all colors, and you'll learn what causes the color of 
a star.</p></td>

<td align=center><a href="color/"><img src="images/pentagon.jpg" border=0></td>
</tr>

<tr><td><p><a href="spectraltypes/">Spectral Types</a></p></td>

<td width=55%><p>How do astronomers make sense of the millions of stars they see? In 
this project, you will learn by classifying the stars yourself.</p></td>

<td align=center><a href="spectraltypes/"><img src="images/specschem.gif" border=0></td>

</tr>

<tr><td><p><a href="hr/">Hertzsprung-Russell Diagram</a></p></td>

<td width=55%><p>Learn how astronomers study the lives and times of stars, which live for millions 
or billions of years.</p></td>

<td align=center><a href="hr/"><img src="images/cluster.jpg" border=0></td>

</tr>

<tr><td><p><a href="galaxies/">Galaxies</a></p></td>

<td width=55%><p>How do astronomers study galaxies, which can be millions or billions of 
light-years away - so far away that most just look like fuzzy patches of light? 
In the Galaxies project, you will learn by examining galaxies yourself.</p></td>

<td align=center><a href="galaxies/"><img src="images/bigspiral.jpg" border=0></td>

</tr>

<tr>
<tr><td><p><a href="skysurveys/">Sky Surveys</a></p></td>

<td width=55%><p>Learn about how astronomers map the sky, from ancient times to today's 
cutting edge technology.</p></td>

<td align=center><a href="skysurveys/"><img src="images/scope2.jpg" border=0></td>
</tr>

<tr>
<tr><td><p><a href="quasars/">Quasars</a></p></td>

<td width=55%><p>Learn about quasars, the most distant and mysterious objects in the universe.</p></td>

<td align=center><a href="quasars/"><img src="images/qso582.gif" border=0></td>
</tr>
<!--
<tr>
<tr><td><p><a href="processing/">Image Processing</a></p></td>

<td width=55%><p>Learn what goes in to the beautiful images you see on SkyServer. You'll 
never look at a picture of the sky the same way again!</p></td>

<td align=center><a href="processing/"><img src="images/twoimgs.jpg" border=0></td>
</tr>-->


</table>

</td></tr>

<tr><td><p>&nbsp;</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>


</table>
<P>

</div>
</asp:Content>
