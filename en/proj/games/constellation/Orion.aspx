<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="Orion.aspx.cs" Inherits="SkyServer.Proj.Constellation.Orion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">

<tr><td>

<a name="example"></a>
<h1>An Example</h1>

<p>One of the most famous constellations is Orion, which can be seen in most of the 
Northern hemisphere in the winter.</p>

<table width="400" border=1 align=center><TR>
<td align="middle"><a href="#example" 
onclick="window.open('images/orionstars.jpg','picture','width=830,height=1125,resizeable,scrollbars');"><IMG src="images/orionstars_small.jpg">
</a></td></TR>
<tr><td align=middle><span class='caption'>The Constellation Orion</span><br>
<font size=-1>Click on the image for a larger view.</font><br>
<font size=-2>Copyright Bernd Mienert. Courtesy of the
<a href="#example" onclick="window.open('http://aida.astroinfo.org','offsite');">
Astronomical Image Data Archive</a>.</font></td>
</tr></table>

<p>When the ancient Greeks saw Orion, the shape reminded 
them of a hunter. They told the story of Orion, a brave but arrogant hunter who was 
killed by a scorpion. The gods put Orion in the sky, where he chases his prey but 
runs away from Scorpius, the Scorpion.</p>

<p>The image below shows how the stars connect to form the shape of Orion 
the hunter:</p>

<a name="orion"></a>
<table width="404" border=1 align=center></tr>
        
        <TR>
<td align="middle"><IMG src="images/orion.gif"><br></td></TR>
<tr><td align=middle><span class='caption'>Orion the Hunter</span><br><font size=-2>Copyright Richard Dibon-Smith. 
Courtesy of <A href="#orion" 
onclick="window.open('http://www.dibonsmith.com/stars.htm','offsite');">The Constellations 
web page</a>.</font></td>
</tr></table>

<p>The bright stars Betelgeuse and Bellatrix mark Orion's shoulders, while Saiph and 
Rigel mark his feet. The three bright stars between his shoulders and feet are his 
belt, and three fainter stars below the belt are his sword. The stars above Betelgeuse form 
his raised right arm, while the six stars to the right of Bellatrix form his bow.</p>

<table width=600 cellpadding=5 cellspacing=0 border=1><tr>

<tr>
<td><p class=caption>Name</p></td>
<td><p class=caption><b>Part of Orion</p></td>
<td><p class=caption><b>Magnitude</p></td>
<td><p class=caption><b>Distance (light-years)</p></td>
</tr>

<tr>
<td><p>Betelgeuse</p></td>
<td><p>Left shoulder</p></td>
<td><p>0.45</p></td>
<td><p>427</p></td>
</tr>

<tr>
<td><p>Rigel</p></td>
<td><p>Right foot</p></td>
<td><p>0.18</p></td>
<td><p>773</p></td>
</tr>

<tr>
<td><p>Bellatrix</p></td>
<td><p>Right shoulder</p></td>
<td><p>1.64</p></td>
<td><p>243</p></td>
</tr>

<tr>
<td><p>Mintaka</p></td>
<td><p>Right star in belt</p></td>
<td><p>2.41/3.76 (binary)</p></td>
<td><p>916</p></td>
</tr>

<tr>
<td><p>Alnilam</p></td>
<td><p>Center star in belt</p></td>
<td><p>1.69</p></td>
<td><p>1,350</p></td>
</tr>

<tr>
<td><p>Alnitak</p></td>
<td><p>Left star in belt</p></td>
<td><p>1.82/3.95 (binary)</p></td>
<td><p>815</p></td>
</tr>

<tr>
<td><p>Saiph</p></td>
<td><p>Left foot</p></td>
<td><p>2.07</p></td>
<td><p>720</p></td>
</tr>

<tr>
<td><p>Lambda Orionis</p></td>
<td><p>Head</p></td>
<td><p>3.50</p></td>
<td><p>1,055</p></td>
</tr>

</table>
<tr><td><p>&nbsp;</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>

<tr><td><a href="default.aspx"><img src="../../images/previous.jpg" align=left>
<a href="othershapes.aspx"><img src="../../images/next.jpg" align=right></td></tr>

</TABLE>
<P></P>

</div>
</asp:Content>
