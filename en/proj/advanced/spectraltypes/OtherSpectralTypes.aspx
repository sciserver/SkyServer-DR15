<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="OtherSpectralTypes.aspx.cs" Inherits="SkyServer.Proj.Advanced.SpectralTypes.OtherSpectralTypes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Other Spectral Types</h1>
      <p></p>
            <p>The spectral types you have used, OBAFGKM, were developed in the 
      early 20th century. In the last ten years, a new generation of 
      telescopes has been built. These telescopes include the 
      <a target="telescopes" href="http://hst.stsci.edu">Hubble Space Telescope</a>, the giant 
      <a target="telescopes" href="http://www2.keck.hawaii.edu">Keck Telescopes</a> in Hawaii, 
      <a target="telescopes" href="http://www.gemini.edu/public/">Gemini 
      North and Gemini South</a>, the 
      <a target="telescopes" href="http://www.eso.org/projects/vlt/">Very Large Telescope</a> in Chile,
      the <a target="telescopes" href="http://www.naoj.org/">Subaru Telescope,</a> and 
      several others. There has also been a dramatic increase in the 
      sensitivity of the CCD cameras used on these telescopes. These 
      advances have allowed astronomers to discover new types of stars 
      that do not fit into any of the traditional spectral types.</p>
      <p>Type C stars, or carbon stars, are unusually rich in carbon.
      They have a beautiful, deep red color when viewed through a telescope. They 
      appear red because a variety of carbon compounds on their surface absorb most 
      of their blue light. The image below shows the spectrum of a type C star 
      found by the SDSS.</p>
     
      <a name="carbon"></a>
      <table border="0" align=center cellpadding="0" cellspacing="0"><tr>
          <td>
         <A href="#carbon" 
         onclick="window.open('images/carbonstar_full.gif','','width=850,height=680,resizable,scrollbars');">
         <IMG src="images/carbonstar.gif">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to see it full size</span></p></td></tr></table>

      
      <p>Type L and type T stars are cooler, smaller, and dimmer than type M 
      stars. They are usually very faint and difficult to find, and it's 
      difficult to obtain spectra from them.</p>
      <p>Type W stars, also known as Wolf-Rayet stars, are 
      as hot as the type O stars, but they have strong emission lines due to 
      clouds of gas surrounding the star.</p>
      <p>Type S stars are very rare. They are similar to type M stars 
      except with zirconium oxide and lanthanum oxide instead of titanium oxide.</p>
      <p>Most stars you observe will have one of the traditional spectral types. 
      However, you may occasionally run across one of the unusual types listed 
      here. Every star's spectrum is unique, much like a human 
      fingerprint. When a star is close to the boundary between two types, 
      it can be difficult to classify by simply looking at the spectrum.</p>
      
      <a name="ex5"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><b>Exercise 8</b>. Use the Object Explorer to examine 
          Plate 282/51658, Fiber <a href="../../../tools/explore/obj.aspx?plate=282&mjd=51658&fiber=345" target="tools">
          345</a>. This star is a class C carbon star.
          What spectral lines are present? Are the spectral lines present 
          that you cannot identify from the charts given earlier?</p>
          
          </td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Exercise 9</b>. Repeat Exercise 5 for Plate 282/51658, Fiber 
          <a href="../../../tools/explore/obj.aspx?plate=282&mjd=51658&fiber=370" target="tools">370</a>. This is a sub-dwarf star. What is its spectral type (if you can 
          classify it)?</p></td>
        </tr>
      </table>
      
      <p></p>



      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Exercise 10</b>.
          Look at the stars below. These stars have interesting spectra that are 
          difficult to classify. As you can see, not every star fits 
          neatly into our classification system!</p>
          <p>What absorption lines are present? Do they fit into one of our 
          classifications? If not, what is different about them? (Thanks to Mark SubbaRao)</p>
          <table border="1" cellpadding="2" cellspacing="2" width="45%" id="AutoNumber2">
            <tr>
              <td width="35%"><p class=caption>Plate</p></td>
              <td width="24%"><p class=caption>Fiber</p></td>
            </tr>
            <tr>
              <td width="35%"><p>582/52045</p></td>
              <td width="24%"><p><a href="../../../tools/explore/obj.aspx?plate=582&mjd=52045&fiber=64" target="tools">
              64</a></p></td>
            </tr>
            <tr>
              <td width="35%"><p>1333/52782</p></td>
              <td width="24%"><p><a href="../../../tools/explore/obj.aspx?plate=1333&mjd=52782&fiber=289" target="tools">
              289</a></p></td>
            </tr>
            <tr>
              <td width="35%"><p>1114/53179</p></td>
              <td width="24%"><p><a href="../../../tools/explore/obj.aspx?plate=1114&mjd=53179&fiber=261" target="tools">
              261</p></td>
            </tr>
            <tr>
              <td width="35%"><p>1336/52759</p></td>
              <td width="24%"><p><a href="../../../tools/explore/obj.aspx?plate=1336&mjd=52759&fiber=384" target="tools">
              384</p></td>
            </tr>          
            <tr>
              <td width="35%"><p>1608/53138</p></td>
              <td width="24%"><p><a href="../../../tools/explore/obj.aspx?plate=1608&mjd=53138&fiber=515" target="tools">
              515</p></td>
            </tr>    
          </table>
          </td>
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
      <td><a href="identifying.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="followup.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
