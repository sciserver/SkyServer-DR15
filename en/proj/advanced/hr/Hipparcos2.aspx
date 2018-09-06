<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="Hipparcos2.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.Hipparcos2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

      <h1>Calculating Distances from Parallax Angles</h1>
      <p>The parallax angle is given in units of arcseconds. The distance 
      to the star is given by the formula</p>
      <p>d = 1/p,</p>
      <p>where d is the distance to the star in parsecs (1 pc = 3.26 light-years) 
      and p is the parallax angle in arc seconds.</p>
      <a name="letspractice"></a>
      <p>Let's practice. You can access a tool that shows an image of the sky with 
      all Hipparcos data <a href="http://www.rssd.esa.int/SA-general/Projects/Hipparcos/skyplot.html"
      target="tools">here</a> 
      (it will open in a new window). Read the directions on the 
      page, then start the Java applet. Enter the coordinates given 
      for Sirius and click on View. The applet will draw the region of sky around 
      Sirius. The blue points are in the Hipparcos catalog and 
      the Tycho catalog (objects in the Hipparcos catalog were measured with 
      greater precision) and the white points are only in the Tycho catalog. 
      The larger the circle, the brighter the star. Click on Sirius, the 
      largest star in the middle, then click Get Info. Another window will 
      open with a lot of information. You are most interested in line 
      H11, Trigonometric parallax. </p>
      <p>For Sirius, the parallax is 379.21 milliarcseconds. Plugging 
      into our formula gives a distance of 2.637 parsecs. Converting to 
      light-years gives a distance of 8.6 light-years. </p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 3.</strong>
          Use the <a href="http://www.rssd.esa.int/SA-general/Projects/Hipparcos/skyplot.html" target="tools">
          Hipparcos data</a> to find the distances to the following stars, 
          given by RA and Dec. They are all in the same field you just 
          called up to find Sirius. Record the Visual magnitudes of the 
          stars as well. You will need them later.</p>
          
          <p></p>
          
          <table border="1" cellpadding="1" cellspacing="1" width="100%" id="AutoNumber2">
            <tr>
              <td width="22%"><p class=caption>RA</p></td>
              <td width="24%"><p class=caption>Dec</p></td>
              <td width="38%"><p class=caption>Visual Magnitude (Field H5)</p></td>
              <td width="16%"><p class=caption>Parallax<br />(milli-arcsec)</p></td>
              <td width="25%"><p class=caption>Distance<br />(parsecs)</p></td>
            </tr>
            <tr>
              <td width="22%"><p>100.521</p></td>
              <td width="24%"><p>-15.209</p></td>
              <td width="38%"><p>&nbsp;</p></td>
              <td width="16%"><p>&nbsp;</p></td>
              <td width="25%"><p>&nbsp;</p></td>
            </tr>
            <tr>
              <td width="22%"><p>99.648</p></td>
              <td width="24%"><p>-16.874</p></td>
              <td width="38%"><p>&nbsp;</p></td>
              <td width="16%"><p>&nbsp;</p></td>
              <td width="25%"><p>&nbsp;</p></td>
            </tr>
            <tr>
              <td width="22%"><p>100.392</p></td>
              <td width="24%"><p>-17.534</p></td>
              <td width="38%"><p>&nbsp;</p></td>
              <td width="16%"><p>&nbsp;</p></td>
              <td width="25%"><p>&nbsp;</p></td>
            </tr>
            <tr>
              <td width="22%"><p>102.203</p></td>
              <td width="24%"><p>-16.211</p></td>
              <td width="38%"><p>&nbsp;</p></td>
              <td width="16%"><p>&nbsp;</p></td>
              <td width="25%"><p>&nbsp;</p></td>
            </tr>
          </table>
          
          <p>Record your data in this <a href="workbooks/exercise3.xls" target="workbooks">SkyServer 
          workbook.</a></p>
          </td>
        </tr>
        
        <p></p>
        
      </table>
      
      <p>Now that you know these stars' apparent visual magnitudes and distances, you 
      can find their absolute magnitudes. Absolute magnitude is defined as 
      the magnitude a star would appear to have if it were 10 parsecs away from us. 
      Our Sun's absolute magnitude is 4.84 (compared to its visible magnitude of -26.2!).</p>
      <p>The relationship between a star's apparent magnitude and absolute 
      magnitude is given by the expression</p>
      <p>M = m - 5 log d + 5,</p>
      <p>where m is the star's apparent magnitude, M is the star's absolute 
      magnitude, and d is the distance to the star in parsecs.</p>
      <p>Let's take the star Sirius again. It has a visual magnitude of 
      -1.44 and it is 2.637 parsecs away. Therefore, its absolute 
      magnitude is</p>
      <p>M = -1.44 - 5 log (2.637) + 5 = 1.45.</p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><b>Exercise 4: </b>
          Use the visual magnitudes and distances you found earlier to find the 
          absolute magnitudes of these stars.</p>
          
          <p></p>
          
          <table border="1" cellpadding="1" cellspacing="1" width="100%" id="AutoNumber4" height="111">
            <tr>
              <td width="22%" height="36"><p class=caption>RA</td>
              <td width="19%" height="36"><p class=caption>Dec</p></td>
              <td width="26%" height="36"><p class=caption>Visual Magnitude 
              (Field H5)</p></td>
              <td width="16%" height="36"><p class=caption>Distance</p></td>
              <td width="42%" height="36"><p class=caption>Absolute 
              Magnitude</p></td>
            </tr>
            <tr>
              <td width="22%" height="18"><p>06 42 05</p></td>
              <td width="19%" height="18"><p>-15 12 32.8</p></td>
              <td width="26%" height="18"><p>&nbsp;</p></td>
              <td width="16%" height="18"><p>&nbsp;</p></td>
              <td width="42%" height="18"><p>&nbsp;</p></td>
            </tr>
            <tr>
              <td width="22%" height="17"><p>06 38 35.43</p></td>
              <td width="19%" height="17"><p>-16 52 24.6</p></td>
              <td width="26%" height="17"><p>&nbsp;</p></td>
              <td width="16%" height="17"><p>&nbsp;</p></td>
              <td width="42%" height="17"><p>&nbsp;</p></td>
            </tr>
            <tr>
              <td width="22%" height="18"><p>06 41 33.99 </p></td>
              <td width="19%" height="18"><p>-17 32 01.0 </p></td>
              <td width="26%" height="18"><p>&nbsp;</p></td>
              <td width="16%" height="18"><p>&nbsp;</p></td>
              <td width="42%" height="18"><p>&nbsp;</p></td>
            </tr>
            <tr>
              <td width="22%" height="18"><p>06 48 48.78 </p></td>
              <td width="19%" height="18"><p>-16 12 41.2 </p></td>
              <td width="26%" height="18"><p>&nbsp;</p></td>
              <td width="16%" height="18"><p>&nbsp;</p></td>
              <td width="42%" height="18"><p>&nbsp;</p></td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
      <p>Now you are ready to make an H-R diagram!</p>
      
      <a name="ex5"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%">
          
          <table align=right width=328>
          <tr><td>
             <img src="images/pleiades2.jpg">
          </td></tr>
          <tr><td align=center>
             <p class=caption>The Pleiades<br>
             <font size=-2>Copyright Anglo-Australian Observatory / Royal Observatory, 
             Edinburgh<br>
             Courtesy <a href="#ex5" 
             onclick="window.open('http://aao.gov.au/images/index.html');">AAO Astronomical 
             Images Gallery</a>.</font></p>
          </td></tr>
          </table>
          
          <p><strong>Exercise 5.</strong>
          You will be making an H-R 
          diagram using data from the <a href="http://www.rssd.esa.int/SA-general/Projects/Hipparcos/skyplot.html" target="tools">Sky Plot</a> 
          tool you used earlier. Search around the Pleiades, a famous star cluster in the 
          Northern Spring sky. Enter the appropriate coordinates and get your data. You will 
          need the visual magnitude, parallax, and b-v color for each star. 
          Get the data for many stars around the Pleiades. 
          Construct an H-R diagram for the stars near the Pleiades.</p>
          
          <p>Use this <a href="workbooks/exercise5.xls">SkyServer workbook</a> to keep track 
          of your data. (HINT: You can enter use Excel to calculate the distance 
          and absolute magnitude. It will save you a lot of calculation!)</p>

          </td>
        </tr>
      </table>
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Question 8. 
          </strong>Based on their distances, which stars do you think belong to the 
          Pleiades? Which stars just happen to be in the same part of the 
          sky but are at different distances?</p></td>
        </tr>
      </table>
        
      <p></p>
        
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Question 9.</strong> Are most 
          of the stars in the Pleiades main sequence stars, red giants, or 
          white dwarfs?</p></td>
        </tr>
      </table>
      
      <a name="radius"></a>
      <p>You can use this information, in conjunction with the temperature of 
      the star, to calculate the star's radius. To learn how to calculate the 
      radius of a star, click <a href="radius1.aspx">here.</a></p>
      
      <p>One of the most important assumptions in science is that the laws 
      of nature are the same everywhere in the universe. Your last two H-R 
      diagrams suggest that this should be true - stars in the Pleiades show the 
      same relationships as stars near the Sun.</p>
      
      <p>But even including the Pleiades gives you H-R diagrams for stars only out 
      to a distance of a few hundred light years. How 
      can we look at stars farther away and see if they exhibit the same 
      behavior? We cannot accurately measure distances to very distant stars because their 
      parallax angles get too small.</p>
      
      <p>When you looked at the Pleiades, you saw a star cluster. When you found the 
      distance to each star, you found that they were all about the same. 
      This finding makes sense: since the stars were together in a cluster, they 
      should all be at about the same distance from Earth. The more distant the cluster, 
      the safer it is to assume that all the stars are at the same distance.</p>
      
      <p>If you assume that all the stars in a cluster are at the same distance, you 
      can assume that each star's observed apparent magnitude corresponds to its luminosity. In other words, 
      you can make an H-R diagram using apparent magnitude instead of absolute magnitude. 
      If you make an H-R diagram for a cluster, you don't have to know the actual distance 
      to the cluster. Therefore, you can make H-R diagrams for star clusters too far away 
      to find distances with parallax. Star clusters are a powerful tool for making H-R 
      diagrams.</p>
     </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="hipparcos1.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="globularcluster.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
