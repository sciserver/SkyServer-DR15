<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="FromStars.aspx.cs" Inherits="SkyServer.Proj.Advanced.Color.FromStars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Light from Stars</h1>

<p>The graphs below are idealized versions of the graphs you thought 
about in Question 1. They show how the amount of light emitted by a star should vary
with the light's wavelength. The curves show the amount of light emitted as a 
function of wavelength for two stars: one with a peak wavelength of 4000 Angstroms (top) 
and one with a peak wavelength of 6400 Angstroms (bottom).</p>

<table width=420 align=center border=1>
  <tr>
    <td align=center><img src="images/4000star.jpg"></td>
  </tr>
    <td><img src="images/6400star.jpg"></td>
  </tr>
  <tr>
    <td><p class=caption align=center>Stars whose light has peak wavelengths of <br>
    4000 Angstroms (top) and 6400 Angstroms (bottom)</p></td>
  </tr>
</table>
<p></p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Question 2</strong>. What colors would these two stars appear to your eyes?</p>
</td></tr>
</table>

<p></p>

<table border=1 align=right>
 <tr>
  <td><a href="#practice3" onclick="window.open('gri.html','sidebar','width=350,height=350,resizeable,scrollbars');">
  <img src="../../images/didyouknow.jpg"></a></td>
 </tr>
</table>

<p></p>

<p>So analyzing the wavelengths of light that stars give off offers an answer to the question from the last section: 
stars appear different colors because they emit different amounts (proportions) of light  at different wavelengths.</p>

<p><br /></p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
<td><p><strong>Question 3</strong>. Some stars have peak wavelengths in the 
infrared part of the spectrum, longer than red light. Can you still see these stars? Why 
or why not? What color do they appear? What about stars whose peak wavelengths are in 
the ultraviolet?</p>
</td></tr>
</table>

<p></p>


<h1>The Big Question</h1>

<p>Now you see that stars look to be different colors because they have different 
peak wavelengths of radiation. But you might be wondering why stars have different 
peak wavelengths in the first place. Similarly, since all you can ever know about a star is the 
light that arrives on Earth, can you use a star's peak wavelength to learn something 
important about the star? Yes, you can. Click Next to find out how.</p>

</td></tr>

<tr><td><p>&nbsp;</p></td></tr>

<tr><td><A href="sdssfilters.aspx"><IMG src="../../images/previous.jpg" align=left></A>
<A href="temperature.aspx"><IMG src="../../images/next.jpg" align=right></A></td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td>
<a name="credit"></a>
<p><font size=-2>Light curves adapted from <a href="#credit" 
onclick="window.open('http://webphysics.davidson.edu/Applets/blackbody/','offsite');">
Blackbody radiation physlet</a>, Davidson College.</font></p>


</table>

</div>
</asp:Content>
