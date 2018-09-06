<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="SDSSFilters.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.SDSSFilters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>SDSS Filters</h1>

<table border=1 cellpadding=2 width=300 align=right><tr>
<td><p align=center><em>Filter</em></p></td>
<td><p align=center><em>Wavelength (Angstroms)</em></p></td></tr>
<td><p align=center>Ultraviolet (u)</p></td>
<td><p align=center>3543</p></td></tr>
<td><p align=center>Green (g)</p></td>
<td><p align=center>4770</p></td></tr>
<td><p align=center>Red (r)</p></td>
<td><p align=center>6231</p></td></tr>
<td width=130><p align=center>Near Infrared (i)</p></td>
<td><p align=center>7625</p></td></tr>
<td><p align=center>Infrared (z)</p></td>
<td><p align=center>9134</p></td></tr>
</table>

<p>Knowing that the color of a star is related to the wavelength of light it gives 
off lets you understand the meaning of the SDSS's color filters. Each filter is 
designed to let in light around a specific wavelength. The filters work by blocking 
out light at all wavelengths except those around the wavelength they are 
designed to see. The table to the right shows the wavelengths at which 
SDSS's five filters work the best. The sensitivity of each filter falls off slowly 
at shorter and longer wavelengths.</p>

<a name="filters"></a>

<table border=1 align=left><tr><td><a href="#filters" 
onclick="window.open('ugriz.html','sidebar','width=500,height=530,resizeable,scrollbars');">
<img src="../../images/didyouknow.jpg"></a></td></tr></table>

<p>If you know the wavelengths of the SDSS filters and the amount of light a star 
emits in each filter, you could make a crude plot of the amount of light a star 
emits at different wavelengths. But what if, instead of five filters between 
3543 and 9134 Angstroms, you had a hundred filters? Or a thousand? You would get a 
clearer, more refined graph of amount of light and wavelength. Eventually, you 
would be able to see exactly how much light a star emitted at all the wavelengths 
of the electromagnetic spectrum.</p>

<p>Actually, astronomers do have a tool that lets them see how much light a star 
gives off as a function of wavelength. You'll learn about this tool, called a spectrum, later in this project. But for now, think about how such a graph 
might look.</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
   <td><p><strong>Question 1.</strong> If you made a graph of amount of 
   light as a function of wavelength for some of the red stars you saw in Explore 1, 
   what do you think the graph would look like? What about the blue stars?</p></td>
</tr>
</table>

</td></tr>

<tr><td><p>&nbsp;</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>

<tr><td><A href="whatis.aspx"><IMG src="../../images/previous.jpg" align=left></A>
<A href="fromstars.aspx"><IMG src="../../images/next.jpg" align=right></A></td></tr>

</table>
<P>

</div>
</asp:Content>
