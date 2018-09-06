<%@ Page Title="" Language="C#" MasterPageFile="../ProjMaster.master" AutoEventWireup="true" CodeBehind="KidsHome.aspx.cs" Inherits="SkyServer.Proj.KidsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1 class=kidsheader>Projects for Kids</h1>

<p class="kids">Click a name or image to choose a project:</p>

<table border=1 cellspacing=1 cellpadding=3><tr><td>
<p class="kids"><a href="oldtime/default.aspx">Old Time Astronomy</a></p></td>

<td width=55%><p class="kids">Before cameras, how did astronomers record what they saw? Find out 
what "Old Time Astronomy" was like.</p></td>

<td><a href="oldtime/default.aspx">
<img src=images/2distantgals.jpg border=0 width="150" height="160"></a></td>

<tr>
<td><p class="kids"><a href="scavenger/default.aspx">Scavenger Hunt
</a></p></td>

<td width=55%><p class="kids">Use SkyServer's Navigation tool to go on a scavenger hunt 
through the sky!</p></td>

<td><a href="scavenger/default.aspx">
<img src=images/clusters.gif border=0 width="150" height="160"></a></td>

</tr>

<tr>
<td><p class="kids"><a href="constellation/default.aspx">Constellations</a></p>

</td>

<td width=55%><p class="kids">Look for patterns in the stars, just like ancient people did.</p></td>

<td><a href="constellation/default.aspx">
<img src=images/orionstars_tiny.jpg border=0></a></td>

</tr>

</table>

</td></tr>

<tr><td>
<p><font size=-1>Big Dipper photo copyright John Slivoski. Courtesy 
<a href="#offiste" onclick="window.open('http://www.slivoski.com/astronomy/index.htm');">
Slivoski.com Amateur Astrophotos</a>.</p></td></tr>

<tr><td><p>&nbsp;</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>


</table>
<P>

</div>
</asp:Content>
