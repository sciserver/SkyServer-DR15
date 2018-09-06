<%@ Page Title="" Language="C#" MasterPageFile="UniverseMaster.master" AutoEventWireup="true" CodeBehind="Redshift.aspx.cs" Inherits="SkyServer.Proj.Universe.Redshift" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UniverseContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<a name="redshifts"></a>
<h1>Redshifts</h1>

<P>If you have ever stood by the side of the road as a car passed by, you have an idea of
what redshift is. As the car moves toward you, its engine sounds higher-pitched than the 
engine of a stationary car. As the car moves away from you, 
its engine sounds lower than the engine of a stationary car. The reason for 
this change is the <em>Doppler effect</em>, named for its discoverer, Austrian physicist 
Christian Doppler. As the car moves toward you, the sound waves that carry the 
sound of its engine are pushed together. As the car moves away from you, these 
sound waves are stretched out.</P>
   
      <P>The same effect happens with light waves. If an object 
      moves toward us, the light waves it gives off will be pushed together - the 
      light's wavelength will be shorter, so the light will become bluer. If an object 
      moves away from us, its light waves will be stretched out, and will become 
      redder. The degree of "redshift" or "blueshift" is directly related to the 
      object's speed in the direction we are looking. The animation below schematically 
      shows what a redshift and blueshift might look like, using a car as an
      example. The speeds of cars are much too small for us to notice any redshift or
      blueshift. But galaxies are moving fast enough with respect to us that
      we can see a noticeable shift.</P>
      

<table align="center" width=550 border=0 cellpadding=0>
<tr><td align="middle">
            <OBJECT classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
            codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 
            height=140 id=ShockwaveFlash1 width=550><PARAM NAME="_cx" VALUE="14552"><PARAM NAME="_cy" VALUE="3704"><PARAM NAME="Movie" VALUE="doppler.swf"><PARAM NAME="Src" VALUE="doppler.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="0"><PARAM NAME="Loop" VALUE="-1"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="FFFFFF"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
              <EMBED src="doppler.swf" quality=high bgcolor=#FFFFFF         
 WIDTH=550 HEIGHT=140 TYPE="application/x-shockwave-flash"        
 PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED></OBJECT>
</td></tr><tr><td>
<p class=caption align=center>Click on animation to play</p>
</td></tr></table>

<h1>Redshifts and Spectra</h1>

<p>Astronomers can measure exactly how much redshift or blueshift a galaxy has by 
looking at its spectrum. A spectrum (the plural is "spectra") measures how much light 
an object gives off at different wavelengths.</p>

<p>The spectra of stars and galaxies almost 
always show a series of peaks and valleys called "spectral lines."
These lines always appear at the same wavelengths, so they make a 
good marker for redshift or blueshift. If astronomers look at a galaxy and see one 
spectral line at a longer wavelength than it would be on Earth, they would know that the galaxy 
was redshifted and was moving away from us. If they see the same line at a shorter 
wavelength, they would know that the galaxy was blueshifted and was moving toward us.</p>

<p>The Sloan Digital Sky Survey has measured spectra for around a million galaxies. Each spectrum is put into a computer program that automatically
determines its redshift. The program outputs a picture like the one below, with spectral
lines marked. The "z" number at the bottom of the spectrum (before the +/-) shows the redshift. Positive
z values mean the galaxy has a redshift; negative z values mean the galaxy has a 
blueshift. (NOTE: this is <i>not</i> the same z as the z magnitude you looked at in Explore 4.)</p>

         <table border="0" align=center cellpadding="0" cellspacing="0"><tr>
          <td>
         <A href="images/full_samplespec.gif">
         <IMG border=1 src="images/samplespec.gif">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to see it full size</span></p></td></tr></table>

<p></p>
<p>Look at the spectrum above, but don't worry if you don't understand all the details. In the next exercise, you will look up the spectra of the six galaxies you examined in Explore 4.</p>

<a name="ex3"></a>
<table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
            <P><STRONG>Explore 5</STRONG>: Find redshifts for the galaxies 
            you looked up in Explore 4. Click on the links below to return to the 
            Object Explorer. Use the same workbook that you used in the last Explore 
            exercise to keep track of your work.</p>
            
            <p>Scroll down in the main frame until you see a miniature spectrum. 
            This is the spectrum of the galaxy. Click the spectrum to see it full 
            size. Click "Summary" in the left-hand frame to return to the display. 
            Just above the spectrum, you should see a data entry called "z". 
            This z is NOT the z you saw in Explore 4; this z represents the 
            redshift. Write down the redshift (z) next to the g magnitude from 
            Explore 4.</p>
                    
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
  <td><p><a href="../../../tools/explore/obj.aspx?id=1237671766932455796" target="tools">1237671766932455796</a></p></td>
  <td><p>261.26203</p></td>
  <td><p>63.04937</p></td>
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
  <td><p><a href="../../../tools/explore/obj.aspx?id=1237663237129896191" target="tools">1237663237129896191</a></p></td>
  <td><p>53.62388</p></td>
  <td><p>-1.12447</p></td>
 </tr>
</table>
          
          <p><a href="../../../tools/explore/obj.aspx" target="tools">Launch the Object Explorer</a></p>
                                            
		</td></tr></table>


<p>Now that you have measured both distance and redshift for these six galaxies, you are ready to make a graph like the graph you made for the balloon - a Hubble diagram.</p>
           
<tr>
    <td></td></tr>
<tr><td><A href="mags.aspx" ><IMG align=left src="../../images/previous.jpg"></A>
<A href="making.aspx" ><IMG align=right src="../../images/next.jpg"></A></td></tr>
</table>

<P></P>
      <DIV></DIV></TR>

</div>
</asp:Content>
