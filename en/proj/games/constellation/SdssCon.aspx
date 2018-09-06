<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="SdssCon.aspx.cs" Inherits="SkyServer.Proj.Constellation.SdssCon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
  <TBODY>
<tr><td>

<a name="sdss"></a>
<h1>Your Constellations in the SDSS Data</h1>

<p>Most of the stars and galaxies in the SDSS database have never been studied by anyone. 
So they give you the perfect opportunity to find your own constellations! Like the 
ancient Greeks or Chimu Indians, or like the European explorers of the Southern 
hemisphere, you can find new patterns of stars that make new constellations.</p>

<p>Here's how to find new constellations. Go to SkyServer's 
<a href="../../../tools/chart/navi.aspx" target="tools">Navigation Tool</a>. 
The screenshot below shows what the Navigation Tool looks like when you first open it.</p>

<img src="../../images/navi_init.jpg">

<p>The boxes "ra" and "dec" in the top left of the tool give the location in the 
sky. "Get Image" loads a new image. You can zoom in or out in the image with the 
zoom bar below Get Image. Click the plus sign to zoom in or the minus sign to 
zoom out. You can also move around in the sky by clicking the NWSE buttons 
around the image.</p>

<p>Pick some area of the sky, then look for constellations! It might help to zoom 
out, so you can see a larger area of sky at once. When you find a constellation 
you like, start clicking on the stars and galaxies that make it up. When you 
click on an object, a green square will come up around it, and a close-up will 
appear in the top right. Click "Add to Notes" to add the star or galaxy to your 
online notebook. Add each star in the constellation to your notebook. When you 
are finished, click "Show Notes" to see your notebook, then click "Export" to 
save it to your computer. You now have a record of your constellation!</p>

<p>Click Next to see an example.</p>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><A href="othercon.aspx" ><IMG src="../../images/previous.jpg" align=left></A>
<a href="example.aspx"><img src="../../images/next.jpg" align=right></td></tr>

</TBODY></TABLE>
<P></P>

</div>
</asp:Content>
