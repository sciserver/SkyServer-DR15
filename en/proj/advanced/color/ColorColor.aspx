<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="ColorColor.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.ColorColor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Color-Color Diagrams</h1>

<p>If astronomers don't have a spectrum for a star, they use another tool to find 
its temperature: a "color-color diagram." If you 
plot the wavelengths of SDSS's five filters on a thermal radiation curve, 
you get a graph like this:</p>

<img src="images/filters.jpg">

<p>To find one of the star's colors from this diagram, subtract the magnitude of the star seen through 
one filter from the magnitude seen through another filter. The thermal source 
graphed above has a curve that peaks in the green. Therefore, its g-r color will be 
negative (remember, brighter objects have lower magnitudes). Its u-g color will be 
positive. What about its r-i and i-z colors?</p>

</td></tr>

<tr><td><p>&nbsp;</p></td></tr>

<tr><td><A href="spectra.aspx"><IMG src="../../images/previous.jpg" align=left></A>
<A href="making.aspx"><IMG src="../../images/next.jpg" align=right></A></td></tr>

</table>
<P>

</div>
</asp:Content>
