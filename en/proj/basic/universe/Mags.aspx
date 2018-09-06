<%@ Page Title="" Language="C#" MasterPageFile="UniverseMaster.master" AutoEventWireup="true" CodeBehind="Mags.aspx.cs" Inherits="SkyServer.Proj.Universe.Mags" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UniverseContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<a name="distances"></a>

<h1>Magnitudes and Distances</h1>

<p>One of the easiest ways to compare galaxies is to compare their magnitudes.
Magnitude is a measure of how bright a star or galaxy looks to us - how much light from 
that star or galaxy reaches Earth. In magnitude, higher numbers correspond to fainter 
objects, lower numbers to brighter objects; the very brightest objects have negative 
magnitudes.</p>

<p>The scale is set up so that if object A is 2.51 times fainter than object B, 
then object A's magnitude will be higher by one number. For example, a magnitude five 
galaxy is 2.51 times fainter than a magnitude four star. The sun has magnitude -26. The 
brightest star in the Northern sky, Sirius, has magnitude -1.5. The brightest galaxy 
is the Andromeda Galaxy, which has magnitude 3.5.</p>

<img src="images/mags_g.jpg" align=right>

<p>The faintest object you can see with your eyes has a magnitude of about 6. The faintest
object the SDSS telescope can see has a magnitude of about 23. SDSS measures
magnitudes in five wavelengths of light: ultraviolet (u), green (g), red (r), 
near infrared (i), and infrared (z).</p>

<p>The image to the right shows the difference in brightness between a magnitude 16 galaxy and a magnitude 19 galaxy in the SDSS's green (g) wavelength. The magnitude 16 galaxy is (2.51 x 2.51 x 2.51 =) 15.8 times brighter than the magnitude 19 galaxy.</p>

<p>&nbsp;</p>

<table class=question width=600 cellpadding=5 cellspacing=0><tr>
   <td><p><strong>Question 2</strong>: Why can magnitudes be used as a substitute 
   for distances?</p>
   </td></tr>
</table>

<p></p>

<a name="ex2"></a>
<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
            <P><STRONG>Explore 4</STRONG>. In this exercise, you will 
            find the magnitudes of six galaxies in SkyServer's database. 
            The table below shows the object IDs and positions (right ascension 
            and declination) of the six galaxies. The Object ID is SkyServer's way of 	    identifying stars or galaxies. Right ascension and declination are a way of 	    measuring an object's position in the sky, similar to latitude and longitude on  Earth.</P>
            <p>To find a galaxy's information, click on its object ID in the table below. A SkyServer tool called the Object Explorer will open in a new window, displaying the 
            galaxy's data.</p>
            
            <p>Use this <a href="workbooks/explore4.xls" target="workbooks">SkyServer workbook</a> to keep track of your data.</p>

<table border=1 cellpadding=3 cellspacing=3>
<tr>
  <td align=center><p class=caption>Object ID</p></td>
  <td align=center><p class=caption>RA</p></td>
  <td align=center><p class=caption>Dec</p></td>  
 </tr>
 <tr align=right>
  <td><p><a href="../../../tools/explore/obj.aspx?id=1237654670274920558" target="tools">
  1237654670274920558</a></p></td>
  <td><p>155.57386</p></td>
  <td><p>0.01030</p></td>
 </tr>
 <tr align=right>
  <td><p><a href="../../../tools/explore/obj.aspx?id=1237674649386025045" target="tools">1237674649386025045</a></p></td>
  <td><p>166.67333</p></td>
  <td><p>-0.80063</p></td>
 </tr>
 <tr align=right>
  <td><p><a href="../../../tools/explore/obj.aspx?id=1237650795145920729" target="tools">1237650795145920729</a></p></td>
  <td><p>145.37819</p></td>
  <td><p>-0.67429</p></td>
 </tr>
 <tr align=right>
  <td><p><a href="../../../tools/explore/obj.aspx?id=1237663278461878385" target="tools">1237663278461878385</a></p></td>
  <td><p>353.68918</p></td>
  <td><p>1.03629</p></td>
 </tr>
 <tr align=right>
  <td><p><a href="../../../tools/explore/obj.aspx?id=1237678617436618939" target="tools">1237678617436618939</a></p></td>
  <td><p>42.93901</p></td>
  <td><p>0.80887</p></td>
 </tr>

 <tr align=right>
  <td><p><a href="../../../tools/explore/obj.aspx?id=1237650795146510903" target="tools">1237650795146510903</a></p></td>
  <td><p>146.7634</p></td>
  <td><p>-0.81043</p></td>
 </tr>
</table>


<tr><td><p>Look at the galaxy's close-up picture in the main frame of the Object Explorer. Just 
to the right of the picture, you will see 
a data table containing values for u, g, r, i, and z (the data are under the labels). 
These are the magnitudes of the galaxy.</p>

<p>Save each galaxy in your online notebook by scrolling to the bottom of the 
left-hand frame and clicking "Save in Notes." Write down each galaxy's 
magnitude in the wavelength of green light, which is given by "g."</p>

<p><a href="../../../tools/explore/obj.aspx" target="tools">Launch the Object Explorer</a>

</td></tr></table>

<p>So now you have a way of estimating how far away a galaxy is (at least relative to other galaxies). But how do you find the other variable for your graph, the speed at which galaxies are moving? You need to use a measurement called <em>redshift</em>. Click Next to find out what redshift is, and how to measure it.</p>

<p></p>
           
<tr>
    <td></td></tr>
<tr><td><A href="simple.aspx" ><IMG align=left src="../../images/previous.jpg"></A>
<A href="redshift.aspx" ><IMG align=right src="../../images/next.jpg"></A></td></tr>
</table>

<P></P>
      <DIV></DIV></TR>

</div>
</asp:Content>
