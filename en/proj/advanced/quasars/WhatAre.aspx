<%@ Page Title="" Language="C#" MasterPageFile="QuasarsMaster.master" AutoEventWireup="true" CodeBehind="WhatAre.aspx.cs" Inherits="SkyServer.Proj.Advanced.Quasars.WhatAre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="QuasarsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>What are Quasars?</h1>
      
      <table width=228 align=right border=1>
        <tr>
          <td><img src="images/qso62.gif"></td>
        </tr>
        <tr>
          <td align=center>
          <p class=caption>The arrow points to a quasar at redshift 
          6.2 discovered by SDSS</p></td>
        </tr>
      </table>
      <p>As you can see, the third spectrum differs greatly from the first 
      two. It is the spectrum of a quasar.</p>
      <p>Quasars are so far away that most look like single bright points 
      in the sky - just like normal stars. This is why Photo usually classifies them 
      as stars. To tell the difference between a very distant quasar and a 
      relatively close star, you need to look at other things beside its image, 
      such its colors or its spectrum.</p>
      <p>The word "quasar" originally stood for "quasi-stellar radio source." Although 
      quasars were originally discovered due to their radio emissions, only 
      about 10% of quasars have substantial radio emissions. These quasars 
      are now called radio loud quasars. Quasars without strong radio 
      emissions are called radio quiet quasars. Researchers are still 
      trying to determine what makes a quasar radio loud or radio quiet.</p>
      <p>All quasars have a substantial redshifts in their spectra. As you learned in the 
      <a href="../hubble">Hubble Diagram</a> project, objects that move away from us 
      have their light shifted toward the red end of the spectrum. The familiar spectral 
      lines seen in most stars and galaxies are frequently redshifted too far 
      into the infrared for us to see. Spectral lines that were too far in 
      the ultraviolet for us to detect in nearby objects move into the visible 
      portion of the spectrum of a quasar. You saw these lines in the quasar spectrum 
      in Question 3.</p>
      <p>Let's look at the spectra of some quasars and see how they vary.</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 2.
          </strong> The table below gives several of the SDSS's quasar spectra by 
          their spectral plate and fiber numbers. Click on the fiber numbers 
          to use SkyServer's 
          <a href="../../../tools/getimg/spectra.aspx" target="tools">Get 
          Spectra</a> tool to view each quasar's spectrum. Do all quasars have the same emission lines? 
          Look at the redshift, which is the "z" value written at the bottom of the spectrum. 
          Do you notice a relationship between redshift and emission lines?</p>
          
          <p>Use this <a href="workbooks/exercise2.xls" target="workbooks">SkyServer workbook</a> to keep track 
          of your notes.</p>
          <table border="1" cellpadding="1" cellspacing="1" width="28%" id="AutoNumber2">
            <tr>
              <td width="46%"><p class=caption>Plate</p></td>
              <td width="54%"><p class=caption>Fiber</p></td>
            </tr>
            <tr>
              <td width="46%">358</td>
              <td width="54%"><a href="../../../get/specByPF.ashx?P=403072197150664704&F=504&submit1=Get+Spectrum" target="tools">
              504</a></td>
            </tr>
            <tr>
              <td width="46%">350</td>
              <td width="54%"><a href="../../../get/specByPF.ashx?P=394064995765217280&F=73&submit1=Get+Spectrum" target="tools">
              73</a></td>
            </tr>
            <tr>
              <td width="46%">390</td>
              <td width="54%"><a href="../../../get/specByPF.ashx?P=439100994136074240&F=537&submit1=Get+Spectrum" target="tools">
              537</a></td>
            </tr>
            <tr>
              <td width="46%">309</td>
              <td width="54%"><a href="../../../get/specByPF.ashx?P=347903099165239296&F=556&submit1=Get+Spectrum" target="tools">
              556</a></td>
            </tr>
            <tr>
              <td width="46%">385</td>
              <td width="54%"><a href="../../../get/specByPF.ashx?P=433471494048212992&F=492&submit1=Get+Spectrum" target="tools">
              492</a></td>
            </tr>
            <tr>
              <td width="46%">286</td>
              <td width="54%"><a href="../../../get/specByPF.ashx?P=322007406894671872&F=183&submit1=Get+Spectrum" target="tools">
              183</a></td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
      <p></p>
	 </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="spectracomparisons.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="power.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
