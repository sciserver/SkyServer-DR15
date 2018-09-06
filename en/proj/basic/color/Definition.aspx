<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="Definition.aspx.cs" Inherits="SkyServer.Proj.Color.Definition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>The Definition of Color in Astronomy</h1>
      <table width="200" align="right" border="1">
        <tr>
          <td><img src="images/multicolor2.jpg"></td>
        </tr>
      </table>
      <p>As you can see, the magnitude of a star through any given filter has little 
      bearing on the star's color. Stars with similar magnitudes in the g filter, 
      for example, might have very different colors.</p>
      <p>But when you look at the difference in magnitudes between two filters, then 
      you should see that stars with similar values have similar colors. Red stars 
      have similar values for magnitude difference, blue stars have similar 
      values for magnitude difference, and white stars have similar values for 
      magnitude difference. The order is not perfect, but nothing in nature 
      ever is.</p>
      <p>You have just discovered how astronomers classify color! Astronomers 
      look at the five magnitudes of a star and measure the difference between 
      any two. The g-r value is one way to find 
      color, but astronomers have other options as well because the SDSS uses 
      five filters. Astronomers could also use u-r, r-i, or i-z 
      to measure color.</p>
      <p>When an astronomer talks about a star's "color," then, he or she 
      is talking about these magnitude difference measurements: g-r, u-r, i-z, 
      and so on. If you asked an astronomer what the color of a star is, 
      he or she wouldn't say "red" or "white"; he or she would say something 
      like "this star has a g-r color of 1.3."</p>
      
      <h1>Magnitude</h1>
      <p>A star's color is measured by its magnitude, which tells how bright 
      a star or galaxy appears from Earth. Astronomers have used versions of 
      the magnitude scale for thousands of years, so they keep using it even 
      though the scale is a bit confusing. In the magnitude scale, higher 
      numbers correspond to fainter objects, lower numbers to brighter objects; 
      the very brightest objects have negative magnitudes.</p>
      <table border="1" cellpadding="0" cellspacing="0" width="36%" id="AutoNumber2" align="right">
        <tr>
          <td width="100%">
          <a onclick="window.open('maghistory.html','sidebar','width=500,height=555,resizeable,scrollbars');" href="#history">
          <img src="../../images/didyouknow.jpg" align="left"></a></td>
        </tr>
      </table>
      <table width="116" align="left" border="1">
        <tr>
          <td width="118">
          <a onclick="window.open('try2.html','sidebar','width=500,height=520,resizeable,scrollbars');" href="#try2">
          <img src="../../images/trythis.jpg" align="left"></a></td>
        </tr>
      </table>
      <p>An increase of one number in magnitude corresponds to a decrease in 
      brightness by a factor of about 2.51 - a magnitude five object is 2.51 
      times fainter than a magnitude four object. The sun has magnitude -26. The 
      brightest star in the Northern sky, Sirius, has magnitude -1.5. The 
      faintest object you can see with your eyes has a magnitude of about 6; the 
      faintest object the SDSS telescope can see has a magnitude of about 23. If 
      you're curious about the magnitudes of other famous stars, take a look at 
      this table of the
      <a onclick="window.open('http://www.astro.utoronto.ca/~garrison/oh.html','offsite');" href="#try2">
      314 brightest stars</a>.</p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td width="100%">
          <p class="question"><strong>Question 1. </strong>In the magnitude scale, 
          increasing the measurement by one means decreasing the quantity 
          measured by a <i>factor</i> of 2.51. Scales where the measurement 
          increases by addition when the quantity measured increases or decreases by 
          multiplication are called "logarithmic" scales. Can you think of 
          any other quantities that are measured using logarithmic scales?</p></td>
        </tr>
      </table>
      <p></p>
      <p>Now you know how astronomers measure a star's color. But what 
      exactly is "color," the quantity they are measuring? Not surprisingly, 
      a star's color is caused by the color of light the star gives off. But 
      what does it mean for light to have a certain color? Click Next to find 
      out.</p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="explore.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="whatiscolor.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
