<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="Hipparcos1.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.Hipparcos1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Hipparcos Satellite Data</h1>
      <table align=right border=2 width=350>
      <tr>
         <td align=left><img src=images/para1.jpg></td>
         <td align=right><img src=images/para2.jpg></td>
      </tr>
      <tr>
         <td colspan=2><p class=caption align=center>Parallax in action<br> 
         <font size=-1>Notice how the thumb jumps 
         relative to the galaxy picture depending on which side the camera was placed.</font>
         </p></td>
      </tr>
      </table>
            
      <p>The Hipparcos satellite finds the distances to stars using a 
      technique called parallax.</p>
      <p>You have probably seen parallax before. Hold your thumb at arms 
      length. Close one eye and look at your thumb. Now switch which eye is closed. 
      You will notice your thumb appears to "jump" relative to the background. 
      Your thumb appears to jump because you are looking at it from a slightly 
      different angle. The distance between your eyes is called 
      the "baseline" and the angular distance (in degrees or radians) that your thumb 
      appears to jump is called the "parallax angle." The length of the baseline 
      determines the smallest parallax angle you can resolve; longer baselines can 
      resolve smaller angles.</p>
      <p>Stars are extremely far away, so we need a very large baseline to 
      determine parallax angles. In fact, the baseline needs to be substantially 
      larger than the radius of the Earth. Astronomers use the 
      Earth's entire orbit to get a large enough baseline. Astronomers 
      observe a star on one night and then again about six months later, when 
      Earth has moved halfway around the sun. Using this technique, 
      astronomers can find parallax angles with a baseline of 186 million miles!</p>
      <p>Even with such a large baseline, the parallax angles of stars are very small. 
      Proxima Centauri, the closest star, has a parallax angle of 0.772 arc seconds 
      (each degree is divided into 60 arc minutes and each arc minute is divided into 60 arc 
      seconds. Therefore, 1 arc second is 1/3600 of a degree!) Due 
      to atmospheric blurring, you can measure parallax angles down to about 0.01 arc seconds 
      from the surface of the Earth.</p>
      
            <table align="right" width=200 border=0 cellpadding=0>
      <tr><td align="right">
            <OBJECT classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
               codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" 
            height=200 id=ShockwaveFlash1 width=200><PARAM NAME="_cx" VALUE="14552"><PARAM NAME="_cy" VALUE="3704"><PARAM NAME="Movie" VALUE="images/hipparcos.swf"><PARAM NAME="Src" VALUE="images/hipparcos.swf"><PARAM NAME="WMode" VALUE="Window"><PARAM NAME="Play" VALUE="1"><PARAM NAME="Loop" VALUE="-1"><PARAM NAME="Quality" VALUE="High"><PARAM NAME="SAlign" VALUE=""><PARAM NAME="Menu" VALUE="-1"><PARAM NAME="Base" VALUE=""><PARAM NAME="Scale" VALUE="ShowAll"><PARAM NAME="DeviceFont" VALUE="0"><PARAM NAME="EmbedMovie" VALUE="0"><PARAM NAME="BGColor" VALUE="000000"><PARAM NAME="SWRemote" VALUE=""><PARAM NAME="Stacking" VALUE="below"> 
            <EMBED src="images/hipparcos.swf" quality=high bgcolor=#000000      
            WIDTH=200 HEIGHT=200 TYPE="application/x-shockwave-flash"     
            PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED> </OBJECT>
      </td></tr>
      <tr><td align=center><p class=caption>The Hipparcos satellite measures the parallax 
      angle of a distant star</p></td></tr>
      </table>

      <p>The Hipparcos satellite, which makes its measurements from Earth orbit, 
      measured the parallax distances to about 120,000 stars with an accuracy 
      of 0.001 arc seconds, and about 2.5 million stars with a lesser degree of 
      accuracy. This gives accurate distances to stars out to several hundred 
      light-years.</p>
      <p>Much like SDSS data, all Hipparcos data are available online. 
      On the next page, you will use Hipparcos data to help make an H-R diagram. You will  
      calculate the distances to several stars from their parallax angles. You 
      will then use this distance, along with each star's visual magnitude, to calculate its 
      absolute magnitude.</p>
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
      <td><a href="extending.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="hipparcos2.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
