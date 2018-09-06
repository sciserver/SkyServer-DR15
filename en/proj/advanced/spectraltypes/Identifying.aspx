<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="Identifying.aspx.cs" Inherits="SkyServer.Proj.Advanced.SpectralTypes.Identifying" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="596" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      
      <h1>Identifying the Spectral Types of Stars</h1>
      
      <table align=right border=1><tr><td>
        <img src="images/typefstar.jpg">
      </tr></td></table>
      
      <p>So, what type of star did you think it was? The star had all the 
      hydrogen lines, so that narrows our choices down to B, A, and F. 
      However, it had no helium lines, so that rules out a type B 
      star. The star did have ionized calcium (the H and K lines), which are  
      characteristic of a type F star. So the star is a type F star. The 
      star whose spectrum you identified is shown to the right. 
      (The picture shows two stars close together; the star you identified is the 
      larger one on the bottom left.)</p>
      
      <p>Another way to find the temperatures of stars is to find the peak 
      wavelengths of their thermal radiation curves. Any non-reflective object, including a star, 
      emits light at a certain peak wavelength depending on its temperature 
      (see the <a href="../color/">Color</a> 
      project for a more detailed explanation). 
      The temperature of such an object can be found by using the 
      equation</p>
      <p>T = 2.897 x 10<sup>-3</sup> m K / <font face=symbol>l</font><sub>peak</sub>.</p>
      <p>The star whose spectrum was shown on the last page has a peak wavelength of 
      about 4200 Angstroms (1 Angstrom = 10<sup>-10</sup> m). This yields a temperature of about 
      <br>T = 2.897 x 10<sup>-3</sup> m K / (4.2 x 10<sup>-7</sup> m) = 6900K, close 
      to the middle of the temperature range for a type F star.</p>
      <p>The peak wavelength is not always in the portion of 
      the spectrum we observe, however. The spectra taken by the SDSS do not cover the entire 
      electromagnetic spectrum. If a star has a peak wavelength in the 
      ultraviolet (beyond 4,000 Angstroms) or in the infrared (beyond 10,000 Angstroms), you 
      cannot see the peak. However, you will still be able to see spectral lines for the star, 
      so you can still use the OBAFGKM spectral type classification to find the star's 
      approximate temperature.</p>
      <p>Now, it's your turn to start classifying stars on your own.</p>
      
      <a name="ex5"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
       <tr>
          <td><p><b>Exercise 5</b>. Use the Object Explorer tool to look at spectra of the 
          stars in the table below. When you click on a link, the tool will open in a new window, displaying 
          complete data on the star you have selected. Click "Spectrum" in the left-hand column 
          to view the spectrum of the star. You may wish to print out each spectrum so you 
          can compare them side-by-side.</p>
          
          <p>Classify the stars according to their spectra (note: one or two of the 
          objects are labeled as "huh" instead of a "star." 
          These objects have since been identified as stars, and their spectral types 
          have been determined). Some spectral types may appear more than once. 
          There is not necessarily one star of each spectral type. Be 
          careful...some of the spectral types are difficult to tell apart!
          <p></p>
          
          <table border="1" cellpadding="2" cellspacing="2" width="41%" id="AutoNumber2" height="61">
            <tr>
              <td width="48%" height="18"><p class=caption>
              Plate</p></td>
              <td width="52%" height="18"><p class=caption>
              Fiber</p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              266/51630</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=483" target="tools">
              483</a></p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              294/51986</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=294&mjd=51986&fiber=623" target="tools">
              623</a></p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              266/51630</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=394" target="tools">
              394</p></td>
            </tr>
            <tr>
              <td width="48%" height="1"><p>
              297/51959</p></td>
              <td width="52%" height="1"><p><a href="../../../tools/explore/obj.aspx?plate=297&mjd=51959&fiber=316" target="tools">
              316</p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              266/51630</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=266&mjd=51630&fiber=344" target="tools">
              344</p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              273/51957</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=273&mjd=51957&fiber=391" target="tools">
              391</p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              282/51658</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=282&mjd=51658&fiber=527" target="tools">
              527</p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              281/51614</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=281&mjd=51614&fiber=398" target="tools">
              398</p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              268/51633</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=268&mjd=51633&fiber=66" target="tools">
              66</p></td>
            </tr>
            <tr>
              <td width="48%" height="18"><p>
              310/51990</p></td>
              <td width="52%" height="18"><p><a href="../../../tools/explore/obj.aspx?plate=310&mjd=51990&fiber=178" target="tools">
              178</p></td>
            </tr> 
          </table>
          
          </td>
          
        </tr>
      </table>  
      
      <p></p>
      
      <a name="ex6"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p>
          <b>Exercise 6</b>. Use the Plate Browser tool to choose about a dozen 
          stars from the SkyServer database. Choose any plate you like, then 
          click on one of the "star" links to see the star's spectrum.</p>
          <p>Determine the spectral type of each star. Your sample is probably too 
          small to ensure you will find a star of each type, but you may always look 
          at more stars.</p>
          
          <p></p>
          <p></p>
          
          <p><a href="../../../tools/getimg/plate.aspx" target="tools"> 
	       Launch the Plate Browser</a></p>
          
          </td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Exercise 7</b>. On the board, 
          make a histogram showing the data from Exercise 6 for everyone in the 
          class. Let the bins represent 
          the spectral types (OBAFGKM).  When you make the class histogram, 
          label each square with the star's plate number 
          and fiber number. There are a couple of reasons for this. 
          You don't want to count the same star twice if two groups analyzed the 
          same star. There is also the possibility that two groups 
          analyzed the same star and disagree on its type. In this case, 
          call in your "peer reviewers" to check the findings! Which types 
          of stars are most common? Which types of stars are the least 
          common?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><b>Question 7.</b>
          You may have noticed that type O stars are rare, especially in the 
          SDSS database. Why do you think we see so few of them?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><p><b>Question 8</b>. Did you 
          find any stars that did not fit into any of the spectral types?&nbsp; 
          If so, what were their characteristics?&nbsp; </font></p></td>
        </tr>
      </table>
      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td width="584"></td>
    </tr>
    <tr>
      <td width="584"></td>
    </tr>
    <tr>
      <td width="584"><a href="lines.aspx">
      <img align="left" src="../../images/previous.jpg"></a>
      <a href="otherspectraltypes.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
