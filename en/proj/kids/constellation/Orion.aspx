<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="Orion.aspx.cs" Inherits="SkyServer.Proj.Kids.Constellation.Orion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">

<tr><td>

<a name="example"></a>
<h1 class="kidsheader">Orion</h1>

<p class="kids">One famous constellation is Orion the Hunter. You can see Orion in 
the Northern Hemisphere in fall and winter. Here is a photo of Orion:</p>

<table width="400" border=1 align=center><TR>
<td align="middle"><a href="#example" onclick="window.open('images/orionstars.jpg','offsite','width=600,resizable=yes,scrollbars=yes');"><IMG src="images/orionstars_small.jpg">
</a></td></TR>
<tr><td align=middle><p class="kids"><span class='caption'>The Constellation Orion</span><br>
<font size=-1>Click on the image for a larger view.</font><br>
<font size=-2>Copyright Bernd Mienert. Courtesy of the
<a href="#example" onclick="window.open('http://aida.astroinfo.org','offsite');">
Astronomical Image Data Archive</a>.</font></p></td>
</tr></table>

<p class="kids">When the ancient Greeks saw Orion, the shape reminded 
them of a hunter. The bright stars in the four corners were his shoulders and 
feet. The three horizontal stars in the middle were his belt. The three vertical 
stars below were his sword.</p>

<p class="kids">The Greeks told a story about Orion. He was a brave but proud hunter who 
was killed by a scorpion. When he died, the gods put him in the sky to remember him.</p>

<p class="kids">Study the picture of Orion above. What stars do you think are a part of 
Orion? What do you think the stars are like? Click Next to learn about them.</p>

<tr><td><p>&nbsp;</p></td></tr>

<tr><td><a href="compare.aspx"><img src="../../images/previous.jpg" align=left>
<a href="orionstars.aspx"><img src="../../images/next.jpg" align=right></td></tr>

</TABLE>
<P></P>

</div>
</asp:Content>
