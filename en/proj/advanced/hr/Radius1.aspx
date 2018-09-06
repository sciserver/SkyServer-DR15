<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="Radius1.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.Radius1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Calculating the Radius of a Star</h1>
      
      <p>Calculating a star's radius is a somewhat lengthy process. You have to 
      put together many tools that you have developed in various SkyServer projects. 
      Even the largest star is so far away that it appears as a single point from 
      the surface of the Earth - its radius cannot be measured directly. 
      Fortunately, understanding a star's luminosity provides you with the tools 
      necessary to calculate its radius from easily measured quantities.</p>
      
      <p>A star's luminosity, or total power given off, is related to two 
      of its properties: its temperature and surface area. 
      If two stars have the same surface area, the hotter one will give off more 
      radiation. If two stars have the same temperature, the one with more surface area will 
      give off more radiation. The surface area of a star is directly related to the 
      square of its radius (assuming a spherical star).</p>

      <p>The luminosity of a star is given by the equation</p>
      <p>L = 4<font face="symbol">p</font>R<sup>2</sup><font face="symbol">s</font>
      T<sup>4</sup></font>,</p>
      <p><font face="Arial">Where L is the luminosity in Watts, R is the radius 
      in meters, <font face="symbol">s</font> is the Stefan-Boltzmann constant <br>(5.67 x 10<sup>-8</sup> 
      Wm<sup>-2</sup>K<sup>-4</sup>), 
      and T is the star's surface temperature in Kelvin.</p>
      <p><font face="Arial">The temperature of a star is related to its b-v 
      magnitude. The table below can help you find the temperature of the 
      star based on its b-v magnitude.</p>
      <table border="1" cellpadding="1" cellspacing="1" width="53%" id="AutoNumber1">
        <tr>
          <td width="18%"><p class=caption>b-v</p></td>
          <td width="51%"><p class=caption>Surface Temperature 
          (Kelvin)</p></td>
        </tr>
        <tr>
          <td width="18%"><p>-0.31</p></td>
          <td width="51%"><p>34,000</p></td>
        </tr>
        <tr>
          <td width="18%"><p>-0.24</p></td>
          <td width="51%"><p>23,000</p></td>
        </tr>
        <tr>
          <td width="18%"><p>-0.20</p></td>
          <td width="51%"><p>18,500</p></td>
        </tr>
        <tr>
          <td width="18%"><p>-0.12</p></td>
          <td width="51%"><p>13,000</p></td>
        </tr>
        <tr>
          <td width="18%"><p>0.0</p></td>
          <td width="51%"><p>9500</p></td>
        </tr>
        <tr>
          <td width="18%"><p>0.15</p></td>
          <td width="51%"><p>8500</p></td>
        </tr>
        <tr>
          <td width="18%"><p>0.29</p></td>
          <td width="51%"><p>7300</p></td>
        </tr>
        <tr>
          <td width="18%"><p>0.42</p></td>
          <td width="51%"><p>6600</p></td>
        </tr>
        <tr>
          <td width="18%"><p>0.58</p></td>
          <td width="51%"><p>5900</p></td>
        </tr>
        <tr>
          <td width="18%"><p>0.69</p></td>
          <td width="51%"><p>5600</p></td>
        </tr>
        <tr>
          <td width="18%"><p>0.85</p></td>
          <td width="51%"><p>5100</p></td>
        </tr>
        <tr>
          <td width="18%"><p>1.16</p></td>
          <td width="51%"><p>4200</p></td>
        </tr>
        <tr>
          <td width="18%"><p>1.42</p></td>
          <td width="51%"><p>3700</p></td>
        </tr>
        <tr>
          <td width="18%"><p>1.61</p></td>
          <td width="51%"><p>3000</p></td>
        </tr>
      </table>
      <p>The calculation is actually somewhat easier 
      if we try to find the ratio of another star's radius to that of our Sun. 
      Let L<sub>s</sub> be the luminosity of the Sun, L be the luminosity of 
      another star, T<sub>s</sub> be the temperature of the Sun, T be the 
      temperature of the other star, R<sub>s</sub> be the radius of the Sun, and 
      R be the radius of the other star.</p>
      <p>We can then write the ratio of their luminosities as</p>
      <p>L/L<sub>s</sub> = (4<font face="symbol">p</font>R<sup>2</sup><font face="symbol">s</font>T<sup>4</sup>)/(4<font face="symbol">p</font>R<sub>s</sub>2<font face="symbol">s</font>T<sub>s</sub>4) 
      = (R/R<sub>s</sub>)<sup>2</sup>(T/T<sub>s</sub>)<sup>4</sup></p>
      <p>Solving for the ratio R/R<sub>s</sub> yields</p>
      <p>R/R<sub>s</sub> = (T<sub>s</sub>/T)<sup>2</sup>(L/L<sub>s</sub>)<sup>1/2</sup></p>
      <p>The temperatures can be found approximately from the 
      table above by looking at the B-V values. To find the ratio L/L<sub>s</sub>, 
      we can use the absolute magnitudes of the stars. The magnitude scale 
      is a logarithmic scale. For every decrease in brightness of 1 
      magnitude, the star is 2.51 times as bright. Therefore, L/L<sub>s
      </sub>can be found from the equation</p>
      <p>L/L<sub>s</sub> = 2.51<sup><font face="symbol">D</font>m</sup>,</p>
      <p>where <font face="symbol">D</font>m = m<sub>s</sub> - m</p>
      <p>Let's look at the star Sirius. It has visual 
      magnitude of -1.44, B-V of .009, and a parallax of 379.21 milli arc 
      seconds. Finding its distance from its parallax yields</p>
      <p>d = 1/p = 1/.37921 = 2.63 parsecs.</p>
      <p>Its absolute magnitude is</p>
      <p>M = m - 5 log d + 5 = -1.44 - 5 log (2.63) + 5 = 1.46</p>
      <p>We know the temperature of the Sun is 5800K. From the chart, the 
      temperature of Sirius is about 9500K. Our Sun has an absolute 
      magnitude of 4.83. The difference in magnitude is 
      3.37. Putting everything together yields</p>
      <p>R/R<sub>s</sub> = (5800/9500)<sup>2</sup>(2.512<sup>3.37</sup>)<sup>1/2</sup> 
      = 1.76</p>
      <p>Sirius has a radius approximately 1.76 times that of our Sun!</p>
      
      <a name="supex1"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Supplemental 
          Exercise 1. </strong>Find the 
          radii for the stars given below. Look up their v, <br>b-v, and 
          parallax in the 
          <a href="http://www.rssd.esa.int/SA-general/Projects/Hipparcos/skyplot.html" target="tools">
          Hipparcos database</a>.</p>
          
          <table border="1" cellpadding="1" cellspacing="1" width="100%" id="AutoNumber3">
            <tr>
              <td width="25%"><p>Star Name</p></td>
              <td width="25%"><p>RA</p></td>
              <td width="25%"><p>Dec</p></td>
              <td width="25%"><p>Radius</p></td>
            </tr>
            <tr>
              <td width="25%"><p>Betelgeuse</p></td>
              <td width="25%"><p>88.79</p></td>
              <td width="25%"><p>7.41</p></td>
              <td width="25%">&nbsp;</td>
            </tr>
            <tr>
              <td width="25%"><p>Barnard's Star</font></td>
              <td width="25%"><p>269.5</p></td>
              <td width="25%"><p>4.6</[></td>
              <td width="25%">&nbsp;</td>
            </tr>
            <tr>
              <td width="25%"><p>Vega</p></td>
              <td width="25%"><p>279.23</p></td>
              <td width="25%"><p>38.78</p></td>
              <td width="25%">&nbsp;</td>
            </tr>
            <tr>
              <td width="25%"><p>Polaris</p></td>
              <td width="25%"><p>37.95</p></td>
              <td width="25%"><p>89.26</p></td>
              <td width="25%">&nbsp;</td>
            </tr>
          </table>
          
          </td></tr>
          </table>
          
          <p></p>
          
          <a name="supex2"></a>
          <table class=exercise width=600 cellpadding=5 cellspacing=0>
          <tr><td>
          <p><p><strong>Supplemental Exercise 2.
          </strong>Look up several stars in the 
          <a href="http://www.rssd.esa.int/SA-general/Projects/Hipparcos/skyplot.html" target="tools">
          Hipparcos database</a>. Try to find a variety of stars 
          ranging from white dwarfs to supergiants. Find the radii of 
          these stars.</td>
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
      <td><a href="hipparcos2.aspx#radius"><img align="left" src="../../images/previous.jpg"></a>
      </td>
    </tr>
  </table>
</div>
</asp:Content>
