<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="Example.aspx.cs" Inherits="SkyServer.Proj.Constellation.Example" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
  <TBODY>
<tr><td>

<a name="sdss"></a>
<h1>An Example Constellation in the SDSS Data</h1>

<p>Here is an example to get you started. The picture below shows the "Rudolph Constellation," 
near ra = 219.75, dec= 0.3. You can find this area by opening the <a href="../../../tools/chart/navi.aspx" target="tools">
Navigation Tool</a>, entering the coordinates, and clicking Get Image. Look for the 
red star - that's Rudolph's nose!</p>

<table width="400" border=1 align=center><tr>
<td align="middle"><IMG src="images/rudolph.jpg"></td></tr>
<tr><td align=middle><span class='caption'>The Rudolph Constellation</span></td>
</tr></table>

<p>The Rudolph constellation consists of 6 stars. To learn 
more about the stars, open the Navigation Tool and click on each star to see 
its data. What can you learn about these stars from studying SkyServer data?</p>

<p>Does the Rudolph constellation look like a red-nosed reindeer to you? What would you call it?</p>

<p>Now it's your turn. Use the <a href="../../../tools/chart/navi.aspx" target="tools">
Navigation tool</a> to look through the SDSS data to find constellations. 
<a href="mailto:raddick@pha.jhu.edu?subject=SDSS constellations">E-mail them to us</a> and we'll put them up 
on these pages! Send us your notebook, or tell us the ID RA and Dec of each star or galaxy in your constellation. 
Then, tell us what the constellation looks like to you - use your imagination! If you 
like, you can tell a story about why the constellation is there, like the Greeks and 
Chimu did.</p>

<p>Your constellations won't be officially used by astronomers, who use the SDSS's ID 
numbers to identify stars and galaxies. But you'll be able to look through the 
data and see constellations that you named - patterns that you discovered in the stars.</p>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><A href="sdsscon.aspx" ><IMG src="../../images/previous.jpg" align=left></A>
<a href="yours.aspx"><img src="../../images/next.jpg" align=right></td></tr>

    <tr><td><p><FONT size=-3>Game designed by Jordan Raddick</FONT></p></td></tr>
    <tr><td><p><FONT size=-3>Questions? Comments? Suggestions? E-mail 
    the <A href="mailto:raddick@pha.jhu.edu?subject=Feedback on Constellation Game">web designer</A>.</FONT></p></td></tr>


</TBODY></TABLE>
<P></P>

</div>
</asp:Content>
