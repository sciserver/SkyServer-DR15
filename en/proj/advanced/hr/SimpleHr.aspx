<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="SimpleHr.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.SimpleHr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>A Simple H-R Diagram</h1>
      <p>Once you know the luminosity and temperature (or color) of a star, you can plot 
      the star as a point on the H-R diagram. Plot the luminosity on the y-axis 
      with brighter stars going toward the top. Since brighter stars have 
      lower magnitudes, if you choose to plot magnitude on the y-axis, the 
      values will decrease as you go up! That's OK - just remember that the luminosity of 
      the star is increasing.</p>
      <p>Plot temperature on the x-axis. However, since we can't know a star's real 
      temperature, you should instead plot color (either the traditional b-v or SDSS's 
      g-r) on the x-axis. Traditionally, hotter stars have been placed at the 
      left of the chart and cooler stars to the right. Even though the 
      temperature decreases as you move the right, the b-v and g-r 
      values will increase. So you should make your H-R diagram with b-v or g-r increasing 
      to the right.</p>
      <p>The first H-R diagram you should try is a diagram for the brightest stars in the sky. 
      The table below shows the 26 brightest stars in the sky. Instead of plotting their 
      luminosities (which are so large that they're hard to visualize), plot the stars' 
      absolute magnitudes. Absolute magnitude is defined as the magnitude that a star would
      have if you saw it from a distance of 10 parsecs (about 32 light-years). Stars with 
      higher luminosities put out more light, so they are brighter - they have 
      lower apparent magnitudes. Stars with lower luminosities put out less light, so they 
      are dimmer - they have higher absolute magnitudes.</p>
      <p>The table below shows the 26 brightest stars, giving their names, apparent 
      magnitudes, absolute magnitudes, and b-v colors.</p>
      
      <table border="1" cellpadding="1" cellspacing="1" width=600 height="458" id=TABLE1>
        <tr>
          <td width="150" height="18"><p class=caption>Star 
          Name</p></td>
          <TD height=18 width="150"><p class=caption>Apparent Magnitude</p></TD>
          <td width="150" height="18"><p class=caption>
          Absolute Magnitude</p></td>
          <td width="200" height="18"><p class=caption>b-v
          </p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Sun</p></td>
          <TD height=18 width="150"><p>-26.8</p></TD>
          <td width="150" height="18"><p>4.8</p></td>
          <td width="200" height="18"><p>0.63</p></td>
        </tr>
        <tr>
          <td width="150" height="1"><p>Sirius</p></td>
          <TD height=1 width="150"><p>-1.46</p></TD>
          <td width="150" height="1"><p>1.4</p></td>
          <td width="200" height="1"><p>0.0</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Canopus</p></td>
          <TD height=18 width="150"><p>-0.72</p></TD>
          <td width="150" height="18"><p>-5.6</p></td>
          <td width="200" height="18"><p>0.15</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>
          Arcturus</p></td>
          <TD height=18 width="150"><p>-0.04</p></TD>
          <td width="150" height="18"><p>0.2</p></td>
          <td width="200" height="18"><p>1.23</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Alpha 
          Centauri</p></td>
          <TD height=18 width="150"><p>-0.01</p></TD>
          <td width="150" height="18"><p>4.4</p></td>
          <td width="200" height="18"><p>0.71</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Vega</p></td>
          <TD height=18 width="150"><p>0.00</p></TD>
          <td width="150" height="18"><p>0.6</p></td>
          <td width="200" height="18"><p>0.0</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Capella</p></td>
          <TD height=18 width="150"><p>0.08</p></TD>
          <td width="150" height="18"><p>0.4</p></td>
          <td width="200" height="18"><p>0.08</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Rigel</p></td>
          <TD height=18 width="150"><p>0.12</p></TD>
          <td width="150" height="18"><p>-8.1</p></td>
          <td width="200" height="18"><p>-0.03</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Procyon</p></td>
          <TD height=18 width="150"><p>0.38</p></TD>
          <td width="150" height="18"><p>2.6</p></td>
          <td width="200" height="18"><p>0.42</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>
          Betelgeuse</p></td>
          <TD height=18 width="150"><p>0.41</p></TD>
          <td width="150" height="18"><p>-7.2</p></td>
          <td width="200" height="18"><p>1.85</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>
          Achernar</p></td>
          <TD height=18 width="150"><p>0.46</p></TD>
          <td width="150" height="18"><p>-1.3</p></td>
          <td width="200" height="18"><p>-0.16</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Hadar</p></td>
          <TD height=18 width="150"><p>0.63</p></TD>
          <td width="150" height="18"><p>-4.4</p></td>
          <td width="200" height="18"><p>-0.23</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Acrux</p></td>
          <TD height=18 width="150"><p>0.76</p></TD>
          <td width="150" height="18"><p>-4.6</p></td>
          <td width="200" height="18"><p>-0.24</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Altair</p></td>
          <TD height=18 width="150"><p>0.77</p></TD>
          <td width="150" height="18"><p>2.3</p></td>
          <td width="200" height="18"><p>0.22</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>
          Aldebaran</p></td>
          <TD height=18 width="150"><p>0.85</p></TD>
          <td width="150" height="18"><p>-0.3</p></td>
          <td width="200" height="18"><p>1.54</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Antares</p></td>
          <TD height=18 width="150"><p>0.92</p></TD>
          <td width="150" height="18"><p>-5.2</p></td>
          <td width="200" height="18"><p>1.83</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Spica</p></td>
          <TD height=18 width="150"><p>1.00</p></TD>
          <td width="150" height="18"><p>-3.2</p></td>
          <td width="200" height="18"><p>-0.23</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Pollux
          </p></td>
          <TD height=18 width="150"><p>1.14</p></TD>
          <td width="150" height="18"><p>0.7</p></td>
          <td width="200" height="18"><p>1.0</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>
          Formalhaut</p></td>
          <TD height=18 width="150"><p>1.16</p></TD>
          <td width="150" height="18"><p>2.0</p></td>
          <td width="200" height="18"><p>0.09</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Becrux</p></td>
          <TD height=18 width="150"><p>1.20</p></TD>
          <td width="150" height="18"><p>-4.7</p></td>
          <td width="200" height="18"><p>-0.23</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Deneb</p></td>
          <TD height=18 width="150"><p>1.25</p></TD>
          <td width="150" height="18"><p>-7.2</p></td>
          <td width="200" height="18"><p>0.09</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Regulus</p></td>
          <TD height=18 width="150"><p>1.35</p></TD>
          <td width="150" height="18"><p>-0.3</p></td>
          <td width="200" height="18"><p>-0.11</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Adhara</p></td>
          <TD height=18 width="150"><p>1.50</p></TD>
          <td width="150" height="18"><p>-4.8</p></td>
          <td width="200" height="18"><p>-0.21</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Shaula</p></td>
          <TD height=18 width="150"><p>1.60</p></TD>
          <td width="150" height="18"><p>-3.5</p></td>
          <td width="200" height="18"><p>-0.22</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Gacrux</p></td>
          <TD height=18 width="150"><p>1.63</p></TD>
          <td width="150" height="18"><p>-1.2</p></td>
          <td width="200" height="18"><p>1.59</p></td>
        </tr>
        <tr>
          <td width="150" height="18"><p>Castor</p></td>
          <TD height=18 width="150"><p>1.98</p></TD>
          <td width="150" height="18"><p>0.5</p></td>
          <td width="200" height="18"><p>0.03</p></td>
        </tr>
      </table>
      <p>These data are also available in a <a href="workbooks/exercise1.xls" target="workbooks">SkyServer 
      workbook</a>, which you can use in the Exercise below.</p>
      <a name="threehundredfourteen"></a>
      <p>If you want more stars, there is a list of the 314 brightest stars 
      available <a href="http://www.astro.utoronto.ca/~garrison/oh.html" target="Offsite">here</a>.</p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 1.</strong> 
          Make an H-R diagram for the brightest stars by graphing 
          b-v and absolute magnitude for the 26 stars above. Use a graphing 
          program such as Microsoft Excel to make your diagram. You may use this 
          <a href="workbooks/exercise1.xls" target="workbooks">SkyServer workbook</a> to store 
          the data. If you don't have a graphing program, you can download a free program 
          such as <a href="http://www.openoffice.org" target="offsite">Open Office</a>.</p>
          
          <p>For help on how to make a 
          graph using Microsoft Excel, see SkyServer's 
          <a href="../../../help/howto/graph/">Graphing tutorial</a>.
          </p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Question 1.</strong> Do 
          you see any groups of stars that appear to have something in common? 
          Sketch a box around those groups.</P></td>
        </tr>
      </table>
      
      <p></p>    
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Question 2.</strong> The stars in the  
          upper right of the diagram are very bright but are also very cool. If 
          the stars are cool, why do you think they are so bright?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Question 3.</strong> Where does our sun plot on 
          this diagram? Is it hotter or cooler than average? Does it emit more or less 
          light than average?</p></td>
        </tr>
      </table>
          
      <p></p>
          
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Question 4.</strong> Do you think your diagram 
          constitutes a good random 
          sample of stars? Why or why not?</p></td>
        </tr>
      </table>
      <p></p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><A href="intro.aspx"><img align="left" src="../../images/previous.jpg"></A>
      <A href="hrdiagram2.aspx"><img align="right" src="../../images/next.jpg"></A></td>
    </tr>
  </table>
</div>
</asp:Content>
