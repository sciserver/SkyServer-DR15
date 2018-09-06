<%@ Page Title="" Language="C#" MasterPageFile="HubbleMaster.master" AutoEventWireup="true" CodeBehind="Redshifts.aspx.cs" Inherits="SkyServer.Proj.Advanced.Hubble.Redshifts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HubbleContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Redshifts</h1>

      <P>In Section I, you used SkyServer to look up redshifts of twelve galaxies.
      In this section, you will learn how to calculate redshifts for yourself.</P>
      
      <table align="center" width=550 border=0 cellpadding=0>
<tr><td align="middle">
            <OBJECT classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
             codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=140 id=ShockwaveFlash1 width=550><PARAM NAME="_cx" VALUE="14552"><PARAM NAME="_cy" VALUE="3704"><PARAM NAME="Movie" VALUE="doppler.swf"><PARAM NAME="Src" VALUE="doppler.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="0"><PARAM NAME="Loop" VALUE="-1"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="FFFFFF"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
              <EMBED src="doppler.swf" quality=high bgcolor=#FFFFFF      
 WIDTH=550 HEIGHT=140 TYPE="application/x-shockwave-flash"     
 PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED></OBJECT>
</td></tr><tr><td>
<p class=caption align=center>Click on animation to play</p>
</td></tr></table>

      
      <p>If any of the following words or concepts are not 
      familiar to you, read about them in any introductory physics or astronomy 
      text before you begin this section: </p>
      <P>spectrum, spectra<BR>lines (absorption, 
      emission)<BR>wavelength <BR>Angstrom<BR>Balmer series <BR>Doppler shift 
      </P>
      <P>Astronomers learn an amazing number of things from the 
      analyzing the spectra of stars, galaxies, and quasars. In this section, we 
      will focus on just one application: we will learn how to measure the 
      redshift of a galaxy from its spectrum, and we will learn how to interpret 
      and use this number.</P>
      <P>&nbsp;</P>

      <a name=measuring></a>
      <H1>Measuring Redshifts</H1>
      
      <P>Measuring a redshift or blueshift requires four steps: </P>
      <P>1) obtain the spectrum of something (let's say a 
      galaxy) that shows spectral lines<BR>2) from the pattern of lines, identify which 
      line corresponds to which atom, ion, or molecule<BR>3) measure the shift 
      of any one of those lines with respect to its expected wavelength, as 
      measured in a laboratory on Earth<BR>4) apply a formula that relates the 
      observed shift to velocity along the line-of-sight</P>
      <P>An example will help to show how this works. Hydrogen 
      is the most abundant element in the universe, and it is often seen in 
      galaxies where gas becomes ionized and fluoresces. The spectrum of such a 
      region shows a pattern called the Balmer series of lines in emission.
      The Balmer lines for emission are easy to reproduce 
      in a classroom with a hydrogen discharge tube. The energizing agent that 
      makes the gas glow is not the same as in galaxies, but the spectrum - the 
      pattern of lines - is the same. Either from your own measurements in the 
      classroom, or from pre-tabulated information, the rest wavelengths 
      of the Balmer lines are as follows: </P>
      <P>&nbsp;</P>
      <TABLE border=1 cellPadding=1 cellSpacing=1 width="75%">
        
        <TR>
          <TD colSpan=3><p><em>Rest Wavelengths of Hydrogen - Balmer Series</em></p></TD></TR>
        <TR>
          <TD>
            <P class=caption align=left>Name</P></TD>
          <TD>
            <P class=caption align=left>Color</P></TD>
          <TD>
            <P class=caption align=left>Wavelength (Angstroms)</P></TD></TR>
        <TR>
          <TD>
            <P align=left>Alpha (<FONT 
            face=Symbol>a</FONT>) </P></TD>
          <TD>
            <P align=left>Red</P></TD>
          <TD>
            <P align=left>6562.8</P></TD></TR>
        <TR>
          <TD>
            <P align=left>Beta (<FONT 
            face=Symbol>b</FONT>)</P></TD>
          <TD>
            <P align=left>Blue-green</P></TD>
          <TD>
            <P align=left>4861.3</P></TD></TR>
        <TR>
          <TD>
            <P align=left>Gamma (<FONT 
            face=Symbol>g</FONT>)</P></TD>
          <TD>
            <P align=left>Violet</P></TD>
          <TD>
            <P align=left>4340.5</P></TD></TR>
        <TR>
          <TD>
            <P align=left>Delta (<FONT 
            face=Symbol>d</FONT>)</P></TD>
          <TD>
            <P align=left>Deep Violet</P></TD>
          <TD>
            <P align=left>4101.7</P></TD></TR></TABLE>
      <P>&nbsp;</P>
      
      <a name="ex14"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
      <P><STRONG>Exercise 14</STRONG>: Using SkyServer, look at the spectrum of the 
      object with ID = 1237666407379828976. You can find the spectrum using
      the <a href="../../../tools/getimg/spectra.aspx" target="tools">Get Spectra</a>
      Tool, in Plate 401/51788, Fiber 161, and it is reprinted below.</P>
      <p>This spectrum comes from a galaxy, and like many others, it shows strong 
      emission lines. The hydrogen lines are already 
      identified for you: the tallest peak is the <font face=symbol>a</font> line, and the
      tall peak to its left is the <font face=symbol>b</font> line. Once the pattern becomes 
      familiar to you, you should be able to recognize these lines even in unmarked 
      spectra. </p></td></tr>
      
      <tr><td>
         <center><table border="0" cellpadding="0" cellspacing="0"><tr><td>
         <A href="images/full_582102012537667624.gif">
         <IMG border=1 src="images/582102012537667624.gif">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to see it full size</span></p></td></tr></table></center>     
      </td></tr>

      <tr><td>
         <p>Read off the wavelengths of the Balmer lines on the x-axis of the 
          spectrum to verify the entries in this table:</p>
          
         <TABLE border=1 cellPadding=1 cellSpacing=1 width="75%">
        
           <TR>
             <TD colSpan=3>
               <P><em>Wavelengths of Hydrogen - Balmer Series for <BR>Object ID # 
               1237666407379828976</em></P></TD></TR>
           <TR>
             <TD>
               <P class=caption align=left>Name</P></TD>
             <TD>
               <P class=caption align=left>Color</P></TD>
             <TD>
               <P class=caption align=left>Wavelength (Angstroms)</P></TD></TR> 
           <TR>
             <TD>
               <P align=left>Alpha (<FONT face=Symbol>a</FONT>) </P></TD>
             <TD>
               <P align=left>Red</P></TD>
             <TD>
               <P align=left>7220</P></TD></TR>
           <TR>
             <TD>
               <P align=left>Beta (<FONT face=Symbol>b</FONT>)</P></TD>
             <TD>
               <P align=left>Blue-green</P></TD>
             <TD>
               <P align=left>5360</P></TD></TR>
           <TR>
             <TD>
               <P align=left>Gamma (<FONT face=Symbol>g</FONT>)</P></TD>
             <TD>
               <P align=left>Violet</P></TD>
             <TD>
               <P align=left>4780</P></TD></TR>
           <TR>
             <TD>
               <P align=left>Delta (<FONT face=Symbol>d</FONT>)</P></TD>
             <TD>
               <P align=left>Deep Violet</P></TD>
             <TD>
               <P align=left>4500</P></TD></TR></TABLE>
        
        <p></p>
        <p><A href="../../../tools/getimg/spectra.aspx" target="tools">
        Launch the Get Spectra tool</a></p></td></tr></table>
      
        <P></P>        
      
      <P>The redshift, symbolized by z, is defined as:</P>
      <P>&nbsp;1 + z =&nbsp;<FONT 
      face=Symbol>l</FONT> <sub>observed&nbsp;</sub>/ &nbsp;<FONT face=Symbol>l</FONT>
      <sub>rest</sub>.</P>
      <P>&nbsp;</P>
      <P>For example, taking the Balmer gamma line, </P>
      <P>1 + z = 4780 / 4340.5 = 1.1, so </P>
      <P>z =  0.1. </P>
      <P><o:p></O:P></P>
      <P>Note that if the observed 
      wavelength were less than the rest wavelength, the value of z would be 
      negative - that would tell us that we have a blueshift, and the galaxy is 
      approaching us. It turns out that almost every galaxy in the sky has 
      a redshift in its spectrum.&nbsp;<o:p></O:P></P>
      <P>Choosing the alpha, beta, or delta lines would also 
      yield z = 0.1 - the measured redshift does not depend on which line you 
      choose. If this statement is found not to be true (within the errors of 
      measurement, of course), then most likely you have not made the correct 
      identification of at least one of the lines. </P>
              
      <P></P>
      <P>&nbsp;</P>
      
      <a name=interpreting></a>
      <H1>Interpreting Redshifts</H1>

      <P>You have just directly computed the redshift for a galaxy. The 
      quantity z is dimensionless, and since it is derived directly from data, 
      its value is unambiguous. We will often use just this number. However, 
      sometimes we want to express the result as&nbsp;the velocity of the galaxy 
      with respect to us, in units of km/sec. </P>
      
      <IMG align=right border=1 src="images/spiral.jpg" >
      
      <P>Converting from redshift z to velocity v measured in km/sec is 
      easy - the formula is </P>
      <P>&nbsp;v = c z ,</P>
      <P>&nbsp;where <em>c</em> is the speed of 
      light, c = 3 x 10<sup>5</sup> km/sec.</P>
      <P>Thus, in this example,&nbsp;galaxy 1237666407379828976 appears to be moving 
      away from us at 0.1 x 3 x 10<sup>5</sup> km/sec = 30,000 km/sec. This value is 
      typical of the galaxies found in the SkyServer database. </P>
      <P>Since the formula is equivalent to 
      z = v / c, it contains an interpretation of the meaning of the value of z: 
      z measures the galaxy's speed of recession relative to the speed of light.</P>
      <P>Up to this point things are 
      straightforward, but there are two important qualifications. First, the 
      formula v = c z is accurate only when z is small compared to 1.0 (0.1 
      would be OK in this sense). For high velocities, those that approach the 
      speed of light, a more complicated formula is needed to derive an accurate 
      velocity v from the measured redshift z. Second, while we often speak of 
      the "recession of galaxies," which implies motion through space, in 
      fact the expanding universe picture is that space itself is expanding: the 
      galaxies are not moving through space, but just being carried along by space 
      as it expands (see <a href="conclusion.aspx">The Hubble Diagram</a> for more about this concept). In this picture, the 
      redshift of a galaxy is not supposed to be interpreted as a velocity at 
      all, even though the observed redshift looks just like a Doppler shift.</P>
      <P>Rather, in this cosmological 
      context, the redshift tells us the relative scale of the universe at the 
      time the light left the galaxy. Suppose the distance to&nbsp;galaxy 
      1237666407379828976&nbsp;was d(z) at the time the light that we are 
      now observing left it (to give some perspective, for z = 0.1, this time was 
      roughly a billion years ago). In those billion years, the space in the 
      universe has expanded, so that now the separation between our galaxy and 
      galaxy 1237666407379828976 is d(0). Then</P>
      <P>1 + z = d(0) / d(z) . </P>
      <P>We interpret this formula as 
      follows: at the time corresponding to redshift z =          
           0.1,  all galaxies were 10% closer 
      together. We can also say that the universe has stretched by the same 
      factor as have the wavelengths. A measured value of z =   0.2 
      corresponds to a time when galaxies were 20% closer together than 
      they are now, and so on. </P>
    
      <table class=question width=600 cellpadding=5 cellspacing=0><tr>
      <td>
      <P><strong>Question 6</strong>: In the SkyServer database, you 
      can find redshifts for quasars such that <br>z &gt; 1. Is there a conceptual 
      problem if the redshift is interpreted as a Doppler shift velocity? Is 
      there a conceptual problem if the redshift is interpreted as the 
      cosmological stretching of space?</P>
      </td></tr></table>
      
      <P>Read this section only if you want 
      to dig deeper into the interpretation of z. You can skip directly to 
      Exercise&nbsp;15 if you wish. There are really two kinds of 
      redshifts,&nbsp;each&nbsp;with its own interpretation. Some redshifts 
      are&nbsp;dynamic - they arise from moving objects&nbsp;(for example, two 
      stars in orbit around each other); other redshifts arise from the 
      cosmological expansion of space described above. If you are observing 
      stars, the Doppler interpretation of redshift is completely adequate. You 
      will also rarely need to worry about the accuracy of the formula v = c z 
      because v is almost always small compared to c.</P>
      <IMG align=right border=1 src="images/pair.jpg">
      <P>Galaxies also have dynamic motions with respect to 
      their neighbors - binary galaxies orbit one another, and galaxies have 
      more complicated orbits within groups and clusters. Single galaxies can 
      feel the gravitational tug of neighboring masses, and can move through 
      space as a result of the gravity. All&nbsp;these velocities are also much 
      smaller than the speed of light, and you can use v = c z. Once again, in 
      cases of galactic motion, the Doppler interpretation is OK.</P> 
      
      <p>In the cosmological application, we assume that the random motions of galaxies 
      cancel to zero in some volume. When we say something like: "the redshift 
      of the galaxy reflects the expansion of space," we are assuming that the 
      galaxy is at rest with respect to this volume; that is, the redshift 
      arises only from the cosmological expansion of space. </p>
      <P>In reality, though, the redshift of any galaxy will 
      have two components: a dynamic component and a cosmological component. 
      However, from Earth we can measure only a single number, the redshift 
      z.&nbsp;Without external arguments, we cannot distinguish the two types of 
      redshifts. As a general rule, for&nbsp;nearby galaxies (z &lt; 0.001), the 
      cosmological component is small: the dynamic part prevails and we can 
      think in terms of Doppler shifts (objects moving through space). For 
      relatively distant galaxies (z &gt; 0.01), the dynamic part is smaller than 
      the cosmological part, and thinking in terms of Doppler&nbsp;shift velocities 
      could be misleading. At intermediate redshifts, z ~ 0.003, the two 
      contributions to the measured redshift can be comparable in size. In this 
      case, sorting out what is what is a challenge&nbsp;even to experts.</P>
      
      <a name="ex15"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
      <P><STRONG>Exercise 15</STRONG>:  Not all galaxies have spectra with 
      strong emission lines. Moreover, even though hydrogen is by far the most 
      common element in the universe, it does not necessarily follow that 
      hydrogen's spectral lines (the Balmer lines) will be the strongest lines 
      seen in a spectrum of a galaxy. To help recognize more complicated patterns 
      of lines seen in galaxies, it helps to build a&nbsp;set of example spectra 
      that seem to be characteristic of a class. Examples of galaxy classes include 
      those with strong emission lines, those with no emission lines but strong 
      absorption features, and those with moderate amounts of both. Astronomers can 
      match these examples, called template spectra, to the spectra of galaxies at 
      unknown redshifts, and move the spectra to find the redshifts. The SDSS uses
      nine template spectra.</P>
      
      <p>  The application below lets you use SDSS's templates to find the 
      redshifts of ten galaxies. Select the spectrum you wish to look at with the 
      drop-down menu labeled "spectrum." Select the template you wish to compare it to 
      with the drop-down menu labeled "template." Compare each spectrum to the 
      nine templates to find the one it most resembles. Then, use the left, right, step 
      forward (&gt;&gt;) and step backward (&lt;&lt;) buttons at the bottom of the page 
      to move the unknown spectra left and right. Above the spectrum, the application 
      shows the redshift you are testing.</p>
      
      <p>When the peaks and valleys of the unknown spectrum match with the peaks and 
      valleys of one of the templates, you have found the redshift of the unknown spectrum.
      Don't try to match the entire spectrum perfectly; just get the major peaks and 
      valleys to match. When you find the redshift that matches the spectrum most closely, 
      write the spectrum number from the drop-down menu, then write the redshift you found.</p> 
      
      <p>Click <A href="#ex15" 
      onclick="window.open('redfinder/xcor.htm','XCOR','status=no,resizable,scrollbars,width=800,height=700');" 
           >
      here</A> to start the application.</p></td></tr></table>
      
      
      <P>&nbsp;</P>

      <H1>Redshifts of Sample Galaxies</H1>
      <P>&nbsp;</P>
      <P>Now that you know what redshift is and how to measure 
      it, you are ready to return to the sample galaxies in the three clusters from the last 
      section.</P>

<table align=center>
 <tr>
  <td><img src="images/3clusters.jpg"></td>
 </tr>
</table>


<!--
      <table border="1" align=center cellpadding="0" cellspacing="0"><tr>
          <td align=middle>
         <IMG align=center border=1 src="images/mosaic_small.jpg">
         </td></tr><tr><td bgcolor="#000000"><p align="center"><span class=caption>
         Click <A href="images/mosaic_big.jpg" target="mosaic">here</A> 
         for a larger image or<br>
         <A href="images/mosaic_giant.jpg" target="mosaic">here</A> 
         for a full-size (very large) image</p></td></tr></table>-->
            
      <p></p>
      <p></p>
      
      <a name="ex16"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>

      <P><STRONG>Exercise 16</STRONG>: Open your online notebook 
      containing the galaxies you found relative distances to in the last section. 
      Of the objects you selected, at least four should have spectra available in the 
      SDSS spectra database. In fact, these four were among the ten galaxies you found 
      redshifts for in the last exercise.</p>
      <p>The table below tells you which spectrum number from Exercise 15 corresponds 
      to which galaxy's object ID from the Distances section. Click any 
      of the object IDs to open the Object Explorer in the tools window. 
      Write down the redshift (the "z" just above the spectrum) for each 
      galaxy.</P>


            <TABLE border=1 cellPadding=5 cellSpacing=1>
              
              <TR>
                <TD align=center>
                  <P class=caption>Spectrum Number</P></TD>
                <TD align=center>
                  <P class=caption>Galaxy ID</P></TD>
			  </TR>

              <tr>
	        <td align=center>
		   <p>527</P>
		</td>
		<td align=center>
		   <p><a href="../../../tools/explore/obj.aspx?id=1237671126979052049" target="tools">1237671126979052049</a></p>
                </td>
 	      </tr>

              <tr>
	        <td align=center>
		   <p>530</P>
		</td>
		<td align=center>
		   <p><a href="../../../tools/explore/obj.aspx?id=1237671126979051781" target="tools">1237671126979051781</a></p>
                </td>
 	      </tr>

              <tr>
	        <td align=center>
		   <p>523</P>
		</td>
		<td align=center>
		   <p><a href="../../../tools/explore/obj.aspx?id=1237671126979051779" target="tools">1237671126979051779</a></p>
                </td>
 	      </tr>

              <tr>
	        <td align=center>
		   <p>525</P>
		</td>
		<td align=center>
		   <p><a href="../../../tools/explore/obj.aspx?id=1237671126979051984" target="tools">1237671126979051984</a></p>
                </td>
 	      </tr>


	     </table>


<!--
            <TABLE border=1 cellPadding=5 cellSpacing=1>
              
              <TR>
                <TD align=center>
                  <P class=caption>Spectrum Number</P></TD>
                <TD align=center>
                  <P class=caption>Galaxy ID</P></TD>
			  </TR>
              <TR>
                <TD>
                  <P>447</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093502081400980" target="tools">
                  582093502081400980</a></P></TD>
                </TR>
              <TR>
                <TD>
                  <P>453</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093484889407566" target="tools">
                  582093484889407566</a></P></TD>
                </TR>
              <TR>
                <TD>
                  <P>455</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093484889407560" target="tools">
                  582093484889407560</a></P></TD>
                </TR>
              <TR>
                <TD>
                  <P>522</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093502081466532" target="tools">
                  582093502081466532</a></P></TD>
                </TR>
              <TR>
                <TD>
                  <P>523</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093484889473192" target="tools">
                  582093484889473192</a></P></TD>
                </TD></TR>
              <TR>
                <TD>
                  <P>525</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093484889473280" target="tools">
                  582093484889473280</a></P></TD>
                </TD></TR>
              <TR>
                <TD>
                  <P>526</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093484889407620" target="tools">
                  582093484889407620</a></P></TD>
               </TR>
              <TR>
                <TD>
                  <P>527</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093484889473342" target="tools">
                  582093484889473342</a></P></TD>
                </TR>
              <TR>
                <TD>
                  <P>530</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093484889473181" target="tools">
                  582093484889473181</a></P></TD>
                </TR>
              <TR>
                <TD>
                  <P>580</P></TD>
                <TD>
                  <P><a href="../../../tools/explore/obj.aspx?id=582093484889538684" target="tools">
                  582093484889538684</a></P></TD>
                </TR></TABLE>
-->

            <P>Compare the redshifts found by the SDSS with the redshifts you 
            calculated in Exercise 13. How close were you?</P>

                               
            </td></tr></table>
          
      <p></p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0><tr>
          <td>
      <P><STRONG>Exercise 17</STRONG>: 
      What is the average redshift of the galaxies in Exercise 16? 
      What is the average redshift in the SkyServer database? To find out, pick a few dozen 
      galaxies at random from the database.&nbsp;Find the average redshift, 
      and plot a histogram of redshifts. 
      What is the characteristic range of redshifts? Do the same for objects 
      classified as quasars - what is their mean redshift, and what is the 
      range?</P>
      
      <p>The easiest way to examine several spectra at once is to use the 
      <a href="../../../tools/getimg/plate.aspx" target="tools">Plate Browser</a> 
      tool. Choose any plate from the dropdown menu, then click on any 
      of the "galaxy" links to see a spectrum. The redshift is the "z" value 
      written at the bottom of each spectrum.</p></td></tr></table>
      
      <P>&nbsp;</P></td></tr>
<tr><td></td></tr>
<tr><td><A href="distances.aspx" ><IMG align=left src="../../images/previous.jpg" ></A>
<A href="conclusion.aspx" ><IMG align=right src="../../images/next.jpg"></A></td></tr>
</table>

<P></P>
</div>
</asp:Content>
