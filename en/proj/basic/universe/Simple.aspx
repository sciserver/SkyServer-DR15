<%@ Page Title="" Language="C#" MasterPageFile="UniverseMaster.master" AutoEventWireup="true" CodeBehind="Simple.aspx.cs" Inherits="SkyServer.Proj.Universe.Simple" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UniverseContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>


<a name="distances"></a>

<h1>Distances</h1>

<p>The first step in creating a Hubble diagram is to find the distances to several
galaxies. Unfortunately, measuring distances in astronomy is difficult. Fortunately, all you need for a simple Hubble diagram are <em>relative distances</em> to galaxies, 
not their actual distances measured in light-years or kilometers. In other words, you don't need to know exactly how far away a certain galaxy is. It's enough to know that the galaxy is twice as far away from Earth as another galaxy.</p>

<p>To measure relative distance, you need some way to compare galaxies. Since
most galaxies are generally similar, you can try assuming that they all have the same average properties - that each galaxy is just about as bright and just about as big as any other 
galaxy. You can check later whether or not this assumption is true.</p>


<p>The picture below gives an idea of what you can conclude when you assume that all galaxies are similar. The picture shows to identical cans at different distances. The nearer can looks bigger than the farther can; you can measure their heights on the monitor if you want. If the cans were giving off light, you could imagine that the nearer can would look much brighter than the farther can.</p>

<table align=center>
  <tr><td><img src="images/coke_close.jpg"></td></tr>
  <tr><td align=center><p class=caption>Nearby objects appear larger than distant objects</p></td></tr>
</table>

<p>The same effect occurs with galaxies. When we assume that two galaxies are similar (in brightness and size), then any differences in brightness or size we see between them are due only to their distances from us. Look at the following images:</p>


<table border=2 align="center">
<tr><td align="middle" bgcolor=#444470><IMG align=center border=1 src="images/neargalaxy.jpg"></td>
<td align="middle" bgcolor=#444470><em><IMG align=center border=1 src="images/fargalaxy.jpg"></A>
</em></td></tr><tr><td align=middle colSpan=2><p class=caption>Nearby galaxies appear large and bright, while<BR>distant galaxies appear small and faint.</p></td></tr>
</table>

<p>We can assume that the galaxy that appears larger is just like the galaxy that appears smaller, but much closer to us. You will test this assumption later.</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
   <td><p><strong>Question 1</strong>: What are some measurements you can make to tell which galaxies are closer and which galaxies are farther? How do these measurements relate to the distance to the galaxies?</p>
   </td></tr>
</table>
           
<tr>
    <td></td></tr>
<tr><td><A href="howdoweknow.aspx" ><IMG align=left src="../../images/previous.jpg"></A>
<A href="mags.aspx" ><IMG align=right src="../../images/next.jpg"></A></td></tr>
</table>

<P></P>
      <DIV></DIV></TR>

</div>
</asp:Content>
