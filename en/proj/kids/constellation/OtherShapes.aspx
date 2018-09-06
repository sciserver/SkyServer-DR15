<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="OtherShapes.aspx.cs" Inherits="SkyServer.Proj.Kids.Constellation.OtherShapes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
  <TBODY>
<tr><td>


<a name="shapes"></a>
<h1 class=kidsheader>Other Shapes in Orion</h1>

<p class=kids>Other ancient people looked at the same seven stars and saw different things. 
People in ancient India called the stars "Mriga," the deer. The Chinese saw "Tsan," a soldier 
defending villages from invaders. The Japanese saw the long sleeve of a kimono, a type of dress.</p>

<p class=kids>Look at the photo of Orion below. What do you see?</p>

<table width="400" border=1 align=center><TR>
<td align="middle"><a href="#example" 
onclick="window.open('images/orionstars.jpg','picture','width=600,resizable=yes,scrollbars=yes');"><IMG src="images/orionstars_small.jpg">
</a></td></TR>
<tr><td align=middle><p class=kids><span class='caption'>The Constellation Orion</span><br>
<font size=-1>Click on the image for a larger view.</font><br>
<font size=-2>Copyright Bernd Mienert. Courtesy of the
<a href="#example" onclick="window.open('http://aida.astroinfo.org','offsite');">
Astronomical Image Data Archive</a>.</font></p></td>
</tr></table>


<tr><td><p>&nbsp;</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>

<tr><td><a href="orionstars.aspx" ><IMG src="../../images/previous.jpg" align=left></a>
<a href="othercon.aspx"><img src="../../images/next.jpg" align=right></td></tr>

</td></tr>
</table>
</div>
</asp:Content>
