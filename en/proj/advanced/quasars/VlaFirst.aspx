<%@ Page Title="" Language="C#" MasterPageFile="QuasarsMaster.master" AutoEventWireup="true" CodeBehind="VlaFirst.aspx.cs" Inherits="SkyServer.Proj.Advanced.Quasars.VlaFirst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="QuasarsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>

      <table width=310 align=right border=1 cellpadding=0 cellspacing=0>
        <tr>
          <td><img src="images/vla.gif"></td>
        </tr>
        <tr>
          <td align=center><p class=caption>The Very Large Array (VLA)<br>
          <font size=-2>Photo courtesy <a target="offsite" 
          href="http://www.aoc.nrao.edu/intro/image.index.html">AUI/NRAO</a></font></p></td>
        </tr>
      </table>

      <h1>VLA FIRST Radio Survey</h1>

      <p>The Very Large Array (VLA), a network of 27 radio telescopes in the New 
      Mexico desert, is one of the most sophisticated radio telescope arrays in 
      the world. Right now, the VLA is conducting a sky survey called FIRST (Faint Images of 
      the Radio Sky at Twenty-one centimeters). The FIRST Survey covers almost 
      exactly the same area of the sky as the SDSS - so we can use FIRST to find radio sources that 
      correspond to our data.</p>

      <p>&nbsp;</p>
      

      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 1.</strong> 
          The table below shows the sky coordinates (right ascension and declination) of several radio 
          sources detected by VLA FIRST. Get the VLA FIRST image of 
          the source from the 
          <a target="offsite" href="http://third.ucllnl.org/cgi-bin/firstcutout">
          VLA FIRST archive server</a>. 
          Type in the ra and dec, separated by a space (note: be sure to 
          include a + or - before the dec, or you will get an error message). 
          For the VLA FIRST image, type the ra in hours (column 1 in the table below). Set the 
          Image Size to 2 arcmin, then click Extract the Cutout. You will see a radio 
          image of the object in the center of the picture. The scale on the right 
          shows the intensity of radio emissions from each point in the image.</p>
          
          <p>Now, get SDSS's visible-light image of the same object 
          using the <a href="../../../tools/chart/navi.aspx" target="tools">
          Navigation tool</a>. Enter the RA and Dec (in degrees) in the appropriate 
          boxes, then click "Get Image." An image of the object will appear in the 
          main frame of the tool, and the object's data will appear in the right-hand frame.</p>
          <p>Get a radio and a visible-light image (in separate windows) for each object, 
          then answer questions 1 and 2.</p>
          <table border="1" cellpadding="1" cellspacing="1" width="58%" id="AutoNumber2">
            <tr>
              <td width="27%"><p class=caption>Ra (hours)</p></td>
              <td width="32%"><p class=caption>Ra (degrees)</p></td>
              <td width="41%"><p class=caption>Dec</p></td>
            </tr>
            <tr>
              <td width="27%"><p>0.2519</p></td>
              <td width="32%"><p>3.7791</p></td>
              <td width="41%"><p>-0.1336</p></td>
            </tr>
            <tr>
              <td width="27%"><p>11.7010</p></td>
              <td width="32%"><p>175.5142</p></td>
              <td width="41%"><p>+0.8560</p></td>
            </tr>
            <tr>
              <td width="27%"><p>11.7596</p></td>
              <td width="32%"><p>176.3938</p></td>
              <td width="41%"><p>-0.7274</p></td>
            </tr>
            <tr>
              <td width="27%"><p>2.1786</p></td>
              <td width="32%"><p>32.6798
              </p> </td>
              <td width="41%"><p>-0.3051</p></td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Question 1.</strong> 
          How do the radio images compare to the visual images? Would 
          you notice anything unusual about the objects if you just looked at 
          the visual images? Do you see any unusual features in the radio 
          images?</p></td>
        </tr>
      </table>
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>          
        <tr>
          <td><p><strong>Question 2.</strong> 
          SDSS scientists used a computer program called Photo to automatically 
          classify all the objects they found as stars, galaxies, 
          etc. What did Photo call the objects you saw in Exercise 1?</p></td>
        </tr>
      </table>
      <p>Photo does not have enough information from an image to classify all 
      types of objects correctly. Sometimes, to tell the difference between a star or 
      galaxy and a potentially more interesting object, you 
      need to look at the object's spectrum. In the next section, you will look at the 
      spectrum of one of the objects you saw and compare it to a typical star spectrum 
      and galaxy spectrum.</p>
      <p>&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="radioastronomy.aspx">
      <img align="left" src="../../images/previous.jpg"></a>
      <a href="spectracomparisons.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
