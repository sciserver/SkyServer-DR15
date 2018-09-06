<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="Characteristics.aspx.cs" Inherits="SkyServer.Proj.Advanced.Galaxies.Characteristics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      
      <h1>Characteristics of Galaxies</h1>
      <p>The Hubble Tuning Fork diagram puts galaxies into categories, and each of 
      the categories corresponds to a different type of galaxy.</p>
      <p>&nbsp;</p>
      
      <a name="elliptical"></a>
      <h1>Elliptical Galaxies</h1>
      <p>
      <table align=left width=152 height=153 border=1>
        <tr>
          <td><img border="0" src="images/M87.gif" width="152" height="153" align="left"></td>
        </tr>
        <tr>
          <td align=center><p><font class=caption>M87<br><font size=-2>Courtesy of<br> 
          <a href="#elliptical" onclick="window.open('http://archive.stsci.edu/dss/');">The 
          Digitized Sky Survey</a></font></font></p></td>
        </tr>
      </table>
      <p>Elliptical galaxies, such as M87 (left), have very little gas and 
      dust. Because gas and dust are found in the clouds that are the birthplaces 
      of stars, we should expect to see very few young stars in elliptical galaxies. In fact, 
      elliptical galaxies contain primarily old, red stars (also known as 
      Population II stars).</p>
      <p>Elliptical galaxies vary widely in size. Both the largest and the smallest 
      known galaxies are elliptical. Very large elliptical galaxies can reach 300 
      million light years in diameter. Dwarf ellipticals, which are very 
      common, may contain only 1/100,000th as many stars as the Milky Way!</p>
      <p>&nbsp;</p>
      <table align=right width=180 height=201 border=1>
        <tr>
          <td><img src="images/ngc3310.jpg"></td>
        </tr>
        <tr>
          <td align=center><p><font class=caption>NGC 3310<br><font size=-2>Courtesy of<br> 
          <a href="#spiral" onclick="window.open('http://heritage.stsci.edu/index.html');">The 
          Hubble Heritage Project</a></font></font></p></td>
        </tr>
      </table>
      
      <a name="spiral"></a>
      <h1>Spiral Galaxies</h1>
      <p>Spiral galaxies like NGC 3310 (right) have two distinct regions. The disk of the galaxy 
      contains the spiral arms. The disk is a region of star formation and 
      has a great deal of gas and dust. It is dominated by young, blue Population I 
      stars. The central bulge is devoid of gas and dust. As you 
      might expect, the bulge is composed primarily of Population II 
      stars. Type c spiral galaxies have the most gas and dust.</p>
      <p>&nbsp;</p>
      
      <a name="lenticular"></a>
      <h1>Lenticular Galaxies</h1>
      <p>
      <table align=left width=200 height=207 border=1>
        <tr>
          <td><img src="images/M85.gif"></td>
        </tr>
        <tr>
          <td align=center><p><font class=caption>M85<br><font size=-2>Courtesy of<br> 
          <a href="#lenticular" onclick="window.open('http://archive.stsci.edu/dss/');">The 
          Digitized Sky Survey</a></font></font></p></td>
        </tr>
      </table>
      <p>Lenticular galaxies like M85 (left) have a central bulges and disks, but no spiral 
      arms. If the disk is faint, it is easy to mistake a lenticular 
      galaxy for an elliptical galaxy - S0 galaxies look very much like E0 galaxies. 
      Lenticular galaxies are sometimes called armless spirals.</p>
      
      <p>Galaxy M85 is an S0 galaxy. There is a second type of lenticular 
      galaxy called a barred lenticular galaxy. Barred lenticular galaxies 
      have bars, much like the barred spirals, and so they are denoted SB0.</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      
      <a name="irregular"></a>
      <h1>Irregular Galaxies</h1>
      <p>
      <table align=right width=200 height=186 border=1>
        <tr>
          <td><img src="images/M82.gif"></td>
        </tr>
        <tr>
          <td align=center><p><font class=caption>M82<br><font size=-2>Courtesy of<br> 
          <a href="#irregular" onclick="window.open('http://archive.stsci.edu/dss/');">The 
          Digitized Sky Survey</a></font></font></p></td>
        </tr>
      </table>

      <p>Galaxies that do not fit into either the spiral or elliptical classes are called 
      irregular galaxies. Irregular galaxies, such as M82 (right), have a wide variety of shapes 
      and characteristics. They are frequently the result of collisions 
      between galaxies or gravitational interactions between galaxies.</p>
      
      <p>M82 has also been called "The Exploding Galaxy." 
      It is believed to have recently passed close to another galaxy called M81. 
      M81's gravity warped M82, and the warping caused
      a burst of new stars to form. Today, M81 and M82 make a beautiful sight 
      through binoculars.</p>
      <p></p>
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
      <td><a href="tuningfork.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="clusters.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
