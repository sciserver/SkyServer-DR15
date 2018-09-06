<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Lines.aspx.cs" Inherits="SkyServer.Proj.Advanced.SpectralTypes.Lines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      
      <a name="absem"></a>
      <h1>Absorption and Emission Lines</h1>
      
      <table align="right" width=300 border=0 cellpadding=0>
      <tr><td align="right">
            <OBJECT classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
                codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=300 id=ShockwaveFlash1 width=300><PARAM NAME="_cx" VALUE="14552"><PARAM NAME="_cy" VALUE="3704"><PARAM NAME="Movie" VALUE="images/SpLine.swf"><PARAM NAME="Src" VALUE="images/SpLine.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="1"><PARAM NAME="Loop" VALUE="-1"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="FFFFFF"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
            <EMBED src="images/SpLine.swf" quality=high bgcolor=#FFFFFF      
            WIDTH=300 HEIGHT=300 TYPE="application/x-shockwave-flash"     
            PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED> </OBJECT>
      </td></tr>
      <tr><td align=center><p class=caption>Photons with 10.2 eV of energy are absorbed,  
      leaving an absorption line.</p></td></tr>
      </table>
      
      <p>Now we can start making the connection between the peaks and valleys we 
      see in a star's spectrum and the energy levels of the star's atoms. 
      Let's say that I shine a light with all the colors of the spectrum through a cloud 
      of hydrogen gas. Not all of the light will make it through. 
      All the photons that have exactly 10.2 eV of energy will not make it 
      through the hydrogen, because they will be absorbed by hydrogen atoms 
      jumping from the first energy level to the second energy level.
      Likewise, no light with an energy of 1.89 eV will make it through; those photons
      will be absorbed by hydrogen atoms jumping from the second energy level to 
      the third energy level. The light that the hydrogen cloud absorbs shows up 
      as dips in the cloud's spectrum.</p>
      <p>If the cloud were too hot, however, all its hydrogen atoms will 
      crash into each other with enough force to free their electrons, and the gas 
      will become ionized. The hot cloud's hydrogen ions have no electrons, so 
      they cannot absorb light. When you look at the hot cloud's spectrum, 
      you will not see any valleys from hydrogen absorption lines. Ionization occurs 
      at about 10,000 K for hydrogen. Therefore, if you do not see hydrogen lines in 
      the hot cloud's spectrum, you can conclude it is hotter than 10,000 K.</p>
      <p>However, if the cloud  were too cool, then the light would not have 
      enough energy to boost its electrons into higher energy levels. In this 
      case, you also would not see any hydrogen lines in the cloud's spectrum.
      You would see the strongest hydrogen lines for a cloud that is at about 9000 K.</p>
       
      <p>If you saw a cloud whose spectrum showed no hydrogen lines, how would you tell if 
      it were hot or cool? For a cloud of pure hydrogen, you couldn't. But for real stars, 
      which contain atoms of many elements besides hydrogen, you could look at the absorption 
      and emission lines of other elements.</p>
      
      <a name="stars"></a>
      <h1>Absorption and Emission Lines in Real Stars</h1>
      
      <p>For most elements, there is a certain 
      temperature at which their emission and absorption lines are strongest. The 
      lines you see in a star's spectrum act like thermometers.
      Some compounds, like titanium oxide, only appear in the 
      spectra of very cool stars. Others, like helium, appear only in the spectra 
      of very hot stars.</p>
      <p>Therefore, the sequence of spectral types, OBAFGKM, is 
      actually a temperature sequence with O representing the hottest stars and 
      M representing the coolest stars.</p>
      <p>Here are some useful devices to remember the order of the spectral types:</p>
      
      <img src="images/obafgkm2.jpg">
      
      <p>The table below shows some of the characteristic absorption and emission 
      lines of each star.</p>
      <table border="1" cellspacing="2" cellpadding="2" width="85%">
        <tr>
          <td width="15%"><p class=caption>Spectral Type</p></td>
          <td width="18%"><p class=caption>Temperature 
          (Kelvin)</p></td>
          <td width="67%"><p class=caption>Spectral Lines</p></td>
        </tr>
        <tr>
          <td width="15%"><p>O</p></td>
          <td width="18%"><p>28,000 - 50,000</p></td>
          <td width="67%"><p>Ionized helium</p></td>
        </tr>
        <tr>
          <td width="15%"><p>B</p></td>
          <td width="18%"><p>10,000 - 28,000</p></td>
          <td width="67%"><p>Helium, some 
          hydrogen</p></td>
        </tr>
        <tr>
          <td width="15%"><p>A</p></td>
          <td width="18%"><p>7500 - 10,000</p></td>
          <td width="67%"><p>Strong hydrogen, 
          some ionized metals</p></td>
        </tr>
        <tr>
          <td width="15%"><p>F</p></td>
          <td width="18%"><p>6000 - 7500</p></td>
          <td width="67%"><p>Hydrogen, ionized 
          calcium (labeled H and K on spectra) and iron</p></td>
        </tr>
        <tr>
          <td width="15%"><p>G</p></td>
          <td width="18%"><p>5000 - 6000</p></td>
          <td width="67%"><p>Neutral and ionized 
          metals, especially calcium; strong G band</p></td>
        </tr>
        <tr>
          <td width="15%"><p>K</p></td>
          <td width="18%"><p>3500 - 5000</p></td>
          <td width="67%"><p>Neutral metals, 
          sodium
          </p></td>
        </tr>
        <tr>
          <td width="15%"><p>M</p></td>
          <td width="18%"><p>2500 - 3500</p></td>
          <td width="67%"><p>Strong titanium 
          oxide, very strong sodium</p></td>
        </tr>
      </table>
      <p></p>
      <p>You may not know where all of these elements have their emission lines.&nbsp; 
      The chart below lists some of the more common ones and their approximate 
      location in the electromagnetic spectrum.</p>
      <table border="1" cellspacing="2" width="81%" id="AutoNumber3">
        <tr>
          <td width="29%"><p class=caption>Spectral Lines</p></td>
          <td width="71%"><p class=caption>Wavelengths (Angstroms)</p></td>
        </tr>
        <tr>
          <td width="29%"><p>H<sub><font face="symbol">a</font></sub>, 
          H<sub><font face=symbol>b</font></sub>, H<sub><font face=symbol>g</font></sub></td>
          <td width="71%"><p>6600, 4800, 4350</p></td>
        </tr>
        <tr>
          <td width="29%"><p>Ionized Calcium H and K Lines</p></td>
          <td width="71%"><p>3800 - 4000</p></td>
        </tr>
        <tr>
          <td width="29%"><p>Titanium Oxide</p></td>
          <td width="71%"><p>lots of lines from 4900 - 5200, 
          5400 - 5700, 6200 - 6300, 6700 - 6900</p></td>
        </tr>
        <tr>
          <td width="29%"><p>G Band</p></td>
          <td width="71%"><p>4250</p></td>
        </tr>
        <tr>
          <td width="29%"><p>Sodium </p></td>
          <td width="71%"><p>5800</p></td>
        </tr>
        <tr>
          <td width="29%"><p>Helium (neutral)</p></td>
          <td width="71%"><p>4200</p></td>
        </tr>
        <tr>
          <td width="29%"><p>Helium (ionized)</p></td>
          <td width="71%"><p>4400</p></td>
        </tr>
      </table>
      
      <a name="spectab"></a>      
      <p>If you are interested in learning where to find all the lines the SDSS 
      software uses, you can find <a href="#spectab" 
      onclick="window.open('http://astro.uchicago.edu/~subbarao/newWeb/line.html');">
      a table of all the lines</a>.</p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><b>Question 4</b>.
          How does your classification system compare to the OBAFGKM 
          spectral type classification shown above?
          What are the similarities? What are the differences?</p>
          </td>
        </tr>
      </table>
      <p>Now, take a look at the spectrum you saw earlier:</p>
      <a name="samplespec"></a>
      <table border="0" align=center cellpadding="0" cellspacing="0"><tr>
          <td>
         <A href="../../../get/specById.aspx?ID=75094093029441536" target="pictures">
         <IMG border=1 src="images/spectra1.gif"></A></td></tr>
         <tr><td><p align="center"><span class=caption>
         Click on the image to see it full size</span></p></td></tr></table>
      	
      <p></p>
            
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Question 5</b>. What lines are present in this spectrum?
          Do you see any spectral lines of ionized atoms?</p></td>
        </tr>
      </table>
          
      <p></p>
       
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Question 6</b>. What is the spectral type of this star?</p></td>
        </tr>
      </table>
      <p>Got your answer? Click Next to see how you did!<p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="energylevels.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="identifying.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
