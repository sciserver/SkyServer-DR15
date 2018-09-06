<%@ Page Title="" Language="C#" MasterPageFile="SkySurveysMaster.master" AutoEventWireup="true" CodeBehind="ROSAT.aspx.cs" Inherits="SkyServer.Proj.Advanced.SkySurveys.ROSAT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkySurveysContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>The X-ray Sky</h1>
      <p>Finally, we will look at an x-ray survey of the sky. X-rays have 
      very short wavelengths and high energies compared to visible light. 
      If an astronomical object gives off x-rays, it must be 
      a hot, bright object that gives off a great deal of energy. 
      However, since these objects give off most of their energy in the x-ray part of the 
      spectrum, they may look quite ordinary in the visible part of the spectrum.</p>
      <p>The Earth's atmosphere absorbs almost all the x-rays that come from space. 
      That's good for life on Earth, because high doses of x-rays are dangerous. But 
      that's bad for astronomers - they have to get above the atmosphere to study 
      x-rays. Fortunately for the astronomers, satellites have allowed 
      them to get x-ray telescopes into space.</p>
      <p>You may have seen the launch of the Chandra X-ray observatory, a satellite 
      that launched in 1999. Chandra has a very narrow field of view. It is very good at 
      getting close-up views of x-ray sources, but it would not be very useful to 
      survey the entire sky.</p>
      <table align=right border=1 width=200>
        <tr>
          <td align=center><img src="images/rosat.jpg"></td>
        </tr>
          <td align=center><p><SPAN class=caption>The Röntgen Satellite (ROSAT)</SPAN></p></td>
        </tr>
      </table>
      
      <p>The Röntgen Satellite, or ROSAT, launched in June 1990, and has since 
      completed an all-sky survey of x-ray sources. ROSAT  
      found more than 60,000 x-ray sources. The temperatures of these 
      sources ranged from about 100,000 Kelvin to 20 million Kelvin! (For comparison, 
      the surface of the Sun is about 5,000 Kelvin.)  ROSAT 
      imaged everything from nearby asteroids and comets to distant quasars 
      during its 8-year mission.</p>
      <p>ROSAT data is also publicly available on the 
      Internet. Let's compare some ROSAT images with SDSS images.</p>
      <p>When astronomers find an x-ray source, they know 
      that something is giving off a great deal of energy, and they want to 
      know what that object is. The object frequently gives off visible 
      light in addition to x-rays. Astronomers find both the x-ray and visible 
      images; this is called finding an "optical counterpart" to the x-ray source. 
      In the next exercise, you will look at objects in the ROSAT 
      survey and find their optical counterparts in the SDSS.</p>
      
      <a name="ex3"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 3.</strong>Open the 
          <a href="http://www.xray.mpe.mpg.de/cgi-bin/rosat/rosat-survey" target="offsite">ROSAT 
          Search Page</a>. In the lat and lon boxes, enter the 
          coordinates 150 and 0 (these are the RA and Dec coordinates). Click "Coordinates." A new 
          window will open with an image of part of the sky as seen in x-rays. 
          Click on any of the numbered objects that lie between Dec = -1.2 and Dec = 1.2 
          (this is the area covered by SDSS). Another window will open telling you the RA 
          and Dec of the object.</p>
          
          <p>Now, open the
          <a href="../../../tools/chart/navi.aspx" target="tools">
          Navigation Tool</a>. You should see a screen like this:</p>
          
          <table align=center>
             <tr><td><img src="../../images/navi_init.jpg"></td></tr>
          </table>
          
          <p>In the boxes marked "ra" and "dec," enter the RA and Dec of the object 
          you selected, then click "Get Image." A new image will come up in the main 
          window, centered on the object you selected. The object's data will appear 
          in the right-hand frame.</p>
          </td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td width="100%"><p><strong>Question 6.</strong>
          What type of object is the optical counterpart to the x-ray 
          source you chose? Does it stand out when you look at it in the visible 
          wavelengths, or does it look like a lot of the other objects?</p></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 7.</strong> What do you 
          think are the advantages of looking at objects in the x-ray region of the 
          spectrum?</p></td>
        </tr>
      </table>
      <p></p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 4.</strong> 
          Select several other x-ray sources and find their optical 
          counterparts. What type(s) of objects tend to give off x-rays?</p></td>
        </tr>
      </table>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="2masscomparison.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="conclusion.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
