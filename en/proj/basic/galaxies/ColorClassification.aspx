<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="ColorClassification.aspx.cs" Inherits="SkyServer.Proj.Galaxies.ColorClassification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Other Ways to Classify Galaxies</h1>
      <table border="1" cellspacing="1" width="41%" id="AutoNumber1" align="right">
        <tr>
          <td width="100%"><img border="0" src="images/colorc1.jpg"></td>
        </tr>
        <tr>
          <td width="100%"><p class=caption align=center>A very blue spiral 
          galaxy from the SDSS</p></td>
        </tr>
      </table>
      <p>When you look at millions of galaxies as the SDSS does, you can't 
      classify every one by looking at it and placing it on the 
      Hubble Tuning Fork. If it takes 30 seconds to find and classify a 
      galaxy on the Hubble Tuning Fork, it would take almost 100 years to 
      classify all the galaxies in the SDSS's Data Release <%=globals.ReleaseNumber%>! 
      To classify all the galaxies, astronomers need a faster method.</p>
      <p>Fortunately, you can use other properties of galaxies to 
      classify them. Astronomers have known for a long time that galaxy type 
      and color are related. Spiral galaxies tend to have more star 
      forming regions, and younger, bluer stars. Elliptical galaxies tend to have 
      mostly old, red stars. </p>
      <p>A team of SDSS astronomers looked at the colors, spectra, and 
      visual images of many galaxies to determine how colors are 
      related to galaxy types in SDSS data. The researchers found that galaxies 
      fell into the clearest groups when they looked at the difference 
      between the ultraviolet (u) and red (r) filters. Specifically, the 
      researchers found that most early galaxies (elliptical, SO, and Sa or SBa)
      had a u-r value greater than 2.22, and that most late galaxies 
      (Sb or SBb, Sc or SBc and Irregular) had a u-r value less than 2.22.</p>
      <p>The method of classifying galaxies by their colors is not 
      perfect. There are some unusually red 
      spiral galaxies and some unusually blue elliptical galaxies. 
      However, the method works well enough that it can be used to analyze the 
      properties of large numbers of galaxies fairly easily.</p>
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td width="100%"><p><strong>Exercise 4.</strong> Look up the 
          following galaxies in the Object Explorer by clicking on their 
          object IDs in the table below. Classify them as early (E, S0, Sa or SBa) or late (Sb or SBa, Sc or SBc, Irr) 
          galaxies from their u-r values (u and r are located to the right of the galaxy's image). Then, look at their images and classify them on 
          the Hubble tuning fork. (Note: you may need to click on the image and open the 
          Navigate tool to get a better view of the galaxy.)</p>
          <p>Use <a href="workbooks/exercise4.xls">this workbook</a> to keep track of your work.</p>
          
          <div align="center">
            <center>
            <table border="1" cellspacing="1" cellpadding="3" width="37%" id="AutoNumber3">
              <tr>
                <td>
                <p align="center" class=caption>Object ID</p></td>
                <td align=center class=caption>RA</td>
                <td align=center class=caption>Dec</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237655560403878129" target="tools">
                1237655560403878129</a></td>
                <td align=right>248.920</td>
                <td align=right>0.331</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237662225706123901" target="tools">
                1237662225706123901</a></td>
                <td align=right>254.768</td>
                <td align=right>16.715</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237648704068649509" target="tools">
                1237648704068649509</a></td>
                <td align=right>248.295</td>
                <td align=right>-0.213</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237648704068518498" target="tools">
                1237648704068518498</a></td>
                <td align=right>248.051</td>
                <td align=right>-0.304</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237655550207197707" target="tools">
                1237655550207197707</a></td>
                <td align=right>248.275</td>
                <td align=right>-0.189</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237648673997127724" target="tools">
                1237648673997127724</a></td>
                <td align=right>248.064</td>
                <td align=right>-0.050</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237662306744664864" target="tools">
                1237662306744664864</a></td>
                <td align=right>256.022</td>
                <td align=right>16.764</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237668336864788995" target="tools">
                1237668336864788995</a></td>
                <td align=right>249.860</td>
                <td align=right>11.211</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237662341631247030" target="tools">
                1237662341631247030</a></td>
                <td align=right>256.384</td>
                <td align=right>17.304</td>
              </tr>
              <tr>
                <td width="100%">
                <p align="center"><a href="../../../tools/explore/obj.aspx?id=1237662635841552623" target="tools">
                1237662635841552623</a></td>
                <td align=right>246.455</td>
                <td align=right>6.336</td>
              </tr>
            </table>

            </center>
          </div>

	 <p></p>

          </td>
        </tr>
      </table>
      <p></p>
	  <table class=question width=600 cellpadding=5 cellspacing=0>            
        <tr>
          <td width="100%"><p><strong>Question 5.</strong> 
          How many of the galaxies' colors match their Hubble 
          Tuning Fork types? How many do not?</p></td>
        </tr>
      </table>
      
      <p></p>

	  <table class=question width=600 cellpadding=5 cellspacing=0>            
	    <tr>          
          <td><p><strong>Question 6.</strong> 
          Do you think color classification is a good (even if it is not perfect) way of 
          classifying galaxies? Why or why not?</p></td>
        </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="collisions.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="conclusion.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
