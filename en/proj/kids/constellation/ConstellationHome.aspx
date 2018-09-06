<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="ConstellationHome.aspx.cs" Inherits="SkyServer.Proj.Kids.Constellation.ConstellationHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">

<tr><td>

<h1 class="kidsheader">Constellations</h1>

<a name="scorpius"></a>
<table align=right border=1 align=center width=200>
        
<TR><td align="center"><IMG src="images/scorpius.jpg">
<span class="kids"><span class='caption'>Scorpius, the Scorpion</span><br>
<font size=-2>Copyright Richard Dibon-Smith. 
Courtesy of <A href="#corona" onclick="window.open('http://www.dibonsmith.com/stars.htm','offsite');">
The Constellations web page</a>.</font></span></td></tr>
</table>

<p class="kids">People have looked at the sky for thousands of years. When ancient people 
looked up, they saw the same thing you see today: beautiful stars. They saw patterns in 
the stars. Today, we call these patterns "constellations."</p>

<p class="kids">You may have heard of some famous constellations, like Orion the Hunter. 
Have you heard of others? If you look at the sky enough, maybe you can come up with your own!</p>

<p class="kids">Click Next to learn more about the constellations.</p>

<tr><td><p>&nbsp;</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>

<tr><td><a href="simple.aspx"><img src="../../images/next.jpg" align=right></td></tr>

</TABLE>
<P></P>

</div>
</asp:Content>
