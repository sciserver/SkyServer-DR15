<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="Spectra.aspx.cs" Inherits="SkyServer.Proj.Advanced.Galaxies.Spectra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      
      <a name="spectra"></a>
      <h1>Galaxy Spectra</h1>
      <p>When you look at the spectrum of a galaxy, you are really looking at 
      the combination of spectra from the millions of stars in the galaxy. So studying 
      the features of a galaxy spectrum tells you about the types of stars 
      the galaxy contains, and the relative abundances of each type of star.</p>
      <table align=right width=276 height=343 border=1>
        <tr>
          <td><img src="images/m51.jpg"></td>
        </tr>
        <tr>
          <td align=center><p><font class=caption>M51<br><font size=-2>Courtesy of<br> 
          <a href="#spectra" onclick="window.open('http://heritage.stsci.edu/index.html');">The 
          Hubble Heritage Project</a></font></font></p></td>
        </tr>
      </table>
      <p>Galaxy spectra also clearly show you whether a galaxy contains star-forming regions 
      called HII regions. HII is a spectral emission line that corresponds to 
      ionized hydrogen - a hydrogen atom that has lost its electron. HII regions are 
      areas of a galaxy where hydrogen nuclei and electrons are recombining 
      to form neutral hydrogen.</p>
      <p>When an electron recombines with a hydrogen nucleus, it loses energy and 
      gives off a photon (you might recognize this as the opposite of what 
      happens in absorption lines from the <a href="#spectra" onclick=
      "window.open('../spectraltypes');">Spectral Types</a> project). The HII 
      spectral line is in the red part of the spectrum, so HII regions in galaxies 
      have a beautiful red or pink tint in visible photographs (NOTE: SDSS uses 
      the red filter for the green picture in a tri-color image. Therefore, 
      HII regions do no appear red in SDSS images). You can clearly see HII regions in the 
      photograph of M51 at the right.</p>
      <p></p>
      <p>Now, let's examine several galaxies both visually and spectroscopically.</p>
      
      <a name="ex7"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Exercise 7: </strong> 
          Below is a table of galaxies. Look up each galaxy using the 
          Object Explorer. When you click on a galaxy's Object ID, the 
          Object Explorer for this galaxy will open in a new window.</p>
          
          <p>Examine the picture of the galaxy and classify it 
          on the Hubble Tuning fork. Then scroll down and click on the galaxy's 
          spectrum. Study its spectrum - pay close attention to its pattern of 
          spectral lines. As you examine the galaxies, think about how to answer 
          questions 7 through 10.</p>  
          
          <p>Use this <a href="workbooks/exercise7.xls">SkyServer workbook</a> to keep 
          track of your notes.</p>
          
          <table width=400 align=center border="1" cellpadding="3" cellspacing="3">
            <tr>
              <td align=center><p class=caption>Object ID</p></td>
              <td align=center><p class=caption>RA</p></td>
              <td align=center><p class=caption>Dec</p></td>
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237674603215257765" target="tools">
              1237674603215257765</a></p></td>
              <td align=right><p>211.020768</p></td>
              <td align=right><p>0.998165</p></td>              
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648722300567644" target="tools">
              1237648722300567644</a></p></td>
              <td align=right><p>171.077669</p></td>
              <td align=right><p>0.643734</p></td>
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648705114603547" target="tools">
              1237648705114603547</a></p></td>
              <td align=right><p>184.848788</p></td>
              <td align=right><p>0.562199</p></td>
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237671128589336718" target="tools">
              1237671128589336718</a></p></td>
              <td align=right><p>176.804779</p></td>
              <td align=right><p>1.058537</p></td>
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237663783132332199" target="tools">
              1237663783132332199</a></p></td>
              <td align=right><p>19.78775</p></td>
              <td align=right><p>-0.764462</p></td>
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237671766931734590" target="tools">
              1237671766931734590</a></p></td>
              <td align=right><p>257.433652</p></td>
              <td align=right><p>62.973063</p></td>
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237666339190472822" target="tools">
              1237666339190472822</a></p></td>
              <td align=right><p>20.006776</p></td>
              <td align=right><p>-0.137572</p></td>
            </tr>   
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237663785281847338" target="tools">
              1237663785281847338</a></p></td>
              <td align=right><p>24.482135</p></td>
              <td align=right><p>1.001373</p></td>
            </tr>                   
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237648704588742865" target="tools">
              1237648704588742865</a></p></td>
              <td align=right><p>209.977462</p></td>
              <td align=right><p>0.149444</p></td>
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237657071159738538" target="tools">
              1237657071159738538</a></p></td>
              <td align=right><p>28.795338</p></td>
              <td align=right><p>0.349077</p></td>
            </tr>
            <tr>
              <td align=center><p><a href="../../../tools/explore/obj.aspx?id=1237652899157377141" target="tools">
              1237652899157377141</a></td>
              <td align=right><p>46.086735</p></td>
              <td align=right><p>-8.668047</p></td>
            </tr>
          </table>
        
          </td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 7:</strong> 
          What is the color of each galaxy? Color can be measured by u-r, 
          with lower values being blue and higher values being red.</p></td>
        </tr>
      </table>

      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 8:</strong> 
          What type of galaxy is each?</p></td>
        </tr>
      </table>

      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>      
          <td><p><strong>Question 9: </strong>What strong
          emission or absorption lines do you see in each galaxy?</p></td>
        </tr>
      </table>
      
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>      
          <td><p><strong>Question 10: </strong>Do you 
          notice a relationship between color, emission/absorption lines, and 
          galaxy type?</p></td>
        </tr>
      </table>
      <p>Galaxies do change as they age. Older galaxies have few young 
      blue stars. Younger galaxies have lots of HII regions where stars 
      are forming.</p>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="clusters.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="collisions.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
