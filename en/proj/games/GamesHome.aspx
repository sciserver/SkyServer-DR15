<%@ Page Title="" Language="C#" MasterPageFile="../ProjMaster.master" AutoEventWireup="true" CodeBehind="GamesHome.aspx.cs" Inherits="SkyServer.Proj.GamesHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Games and Contests</h1>

<p>Click a name or image to select one of the games below:</p>

<table border=1 cellspacing=1 cellpadding=3>

<tr><td><p><a href="constellation/">Constellation Game</a></p></td>

<td width=55%><p>In ancient times, people looked up in the sky and saw patterns - constellations like the Big Dipper or Orion the Hunter. Here 
is your chance to make up your own constellation!</p></td>

<td align=center><a href="constellation/"><img src="images/dipper.jpg" border=0></a></td>

</tr>

<tr><td>

<p><a href="quiz/quiz-1.aspx">Universe Quiz</p></td>

<td width=55%><p>Test your knolwedge about the universe you live in!<br> The quiz requires Shockwave 
Player, which you can download from <a href="http://sdc.shockwave.com/shockwave/download/frameset.fhtml" target="offsite">
Macromedia's web site</a>.
</p></td>

<td><a href="quiz/quiz-1.aspx">

<table align="right" width=200 border=0 cellpadding=0>
<tr><td align="middle">
            <OBJECT align=right 
            classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
             codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=145 id=ShockwaveFlash1 width=200><PARAM NAME="_cx" VALUE="7276"><PARAM NAME="_cy" VALUE="5292"><PARAM NAME="Movie" VALUE="bigbang.swf"><PARAM NAME="Src" VALUE="bigbang.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="0"><PARAM NAME="Loop" VALUE="-1"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="000000"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
 <EMBED src="bigbang.swf" quality=high bgcolor=#000000  WIDTH=200  
 HEIGHT=145 align=right TYPE="application/x-shockwave-flash"  
 PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED></OBJECT></td></tr></table>

</a></td></tr>

<a name="solquiz"></a>
<tr><td><p><a href="solarquiz/solarquiz.aspx">Solar System Quiz</p></td>

<td width=55%><p>Test your knolwedge about the Solar System!<br> The quiz requires Shockwave 
Player, which you can download from <a href="http://sdc.shockwave.com/shockwave/download/frameset.fhtml" target="offsite">
Macromedia's web site</a>.
</p></td>

<td align=center><a href="solarquiz/solarquiz.aspx"><img src="images/sun.jpg" border=0></a></td>
</tr>

</table>

</td></tr>

<tr><td><p>&nbsp;</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>

<tr><td><a name="credits"></a>
<p><font size=-3>Big Dipper photo copyright John Slivoski. Courtesy 
<a href="#credits" onclick="window.open('http://www.slivoski.com/astronomy/index.htm');">
Slivoski.com Amateur Astrophotos</a>.</td></tr>

</table>

</div>
</asp:Content>
