<%@ Page Title="" Language="C#" MasterPageFile="ConstellationMaster.master" AutoEventWireup="true" CodeBehind="Example.aspx.cs" Inherits="SkyServer.Proj.Kids.Constellation.Example" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ConstellationContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
  <TBODY>
<tr><td>

<a name="sdss"></a>
<h1 class=kidsheader>A SkyServer Example</h1>

<p class=kids>Here is an example to get you started. The picture below shows the "Rudolph Constellation," near <br>ra = 219.75, dec = 0.3. You can find this area by opening the <a href="../../../tools/chart/navi.aspx" target="tools">
Navigation Tool</a>, entering the coordinates, and clicking Get Image. Look for the 
red star - that's Rudolph's nose!</p>

<table width="400" border=1 align=center><tr>
<td align="middle"><IMG src="images/rudolph.jpg"></td></tr>
<tr><td align=middle><p class=kids><span class='caption'>The Rudolph Constellation</span></td>
</tr></table>

<p class=kids>The Rudolph constellation is made up of 6 stars. To learn 
more about a star, click on it and look at its data in the right-hand frame. 
The numbers "u, g, r, i, z" are five kinds of magnitudes. What can you learn about these stars from studying SkyServer data?</p>

<p class=kids>Does the Rudolph constellation look like a red-nosed reindeer to you? What would you call it?</p>


<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td><A href="sdsscon.aspx" ><IMG src="../../images/previous.jpg" align=left></A>
<a href="find.aspx"><img src="../../images/next.jpg" align=right></td></tr>

</TBODY></TABLE>
<P></P>

</div>
</asp:Content>
