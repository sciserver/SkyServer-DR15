<%@ Page Title="" Language="C#" MasterPageFile="HiiMaster.master" AutoEventWireup="true" CodeBehind="Characteristics.aspx.cs" Inherits="SkyServer.Proj.Hii.Characteristics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HiiContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="title">Characteristics</div>

<div id="pdflink">
  <a href="swf/characteristics.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/characteristics.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
     
        <table align="right" width=250 border=0 cellpadding=0>
     	  <tr><td align="middle">
	    <OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
	       codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"
	       WIDTH=300 HEIGHT=200 id=ShockwaveFlash1>
    	   <PARAM NAME=movie VALUE="images/enbig.swf"> <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=#FFFFFF> <EMBED src="images/enbig.swf" quality=high bgcolor=#FFFFFF  WIDTH=300 HEIGHT=200 TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED>
    	  </OBJECT>
    	  </td></tr><tr><td>
    	  <p class=caption align=center>Click on animation to play</p>
	    </td></tr></table>

      <p>HII regions are mainly composed of clouds of ionized hydrogen (that is, 
      protons and electrons). In these clouds, sometimes one proton and one 
      electron will recombine to form an atom of neutral hydrogen. When this happens, 
      the electron starts at a high energy level in the newly-formed atom, then jumps 
      down to a lower energy level. When the electron jumps, it releases a photon, as 
      the animation to the right shows.</p>   
      
      <p>The exact series of energy level jumps is governed by quantum mechanical 
      probability. One electron might be captured in the fifth energy level, 
      jump to the third energy level, and then to the first energy level. 
      Another electron might be captured in the fourth energy level, jump down 
      to the third, then to the second, and finally to the first energy level.
      </p>
     
      <table border="1" cellpadding="0" cellspacing="0" width=236 align="right">
        <tr>
          <td>
          <a href="http://heritage.stsci.edu/public/2001apr/big.html">
          <img alt="Click on this small version to reach large version" src="images/0110b.jpg" align="top" border="0" valign="top"></a></font></td>
        </tr>
        <tr>
          <td align=center><font class=caption>The 
          Whirlpool Galaxy, M51. Notice the pink HII regions.<br>
          Click on the image for a larger view.
          <font size=-2>Courtesy of <a href="http://heritage.stsci.edu/index.html" target="offsite">The 
          Hubble Heritage Project.</a></font></font></td>
        </tr>
      </table>

      <p>The most important energy level transitions are the ones that give off 
      photons with wavelengths that we can observe with the SDSS. One of these jumps 
      is the transition from the n = 3 to n = 2 energy levels, which gives off 
      light with a wavelength of about 6560 Angstroms, which is in the red part 
      of the spectrum. Because this jump is fairly common, HII regions give off 
      a lot of red light. In a tri-color image using red, green and blue filters, 
      HII regions appear pink. (BUT: SDSS tri-color images use the green, red, and 
      near infrared filters to make color images - confusing, no? In SDSS images,
      HII regions appear light blue instead of pink.) Transitions from n 
      = 4 to n = 2 and n = 5 to n = 2 levels also produce lines in the visible 
      spectrum.</p>
      <p>HII regions also give off a lot of ultraviolet light due to photons from the transitions 
      where electrons jump into the n = 1 energy level. Since SDSS uses a 
      filter in the near ultraviolet, the effects of this transition show up as 
      well.</p>

      <p>&nbsp;</p>
      <p>&nbsp;</p>      
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
       <tr>
	     <td><p><strong>Question 1</strong>. Given the wavelengths of photons emitted 
	     by HII regions, how could you use astronomical colors (g-r, etc.) to 
	     distinguish HII regions misclassified by Photo from true separate galaxies?</p></td>
	   </tr>
	  </table>

      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="query.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
