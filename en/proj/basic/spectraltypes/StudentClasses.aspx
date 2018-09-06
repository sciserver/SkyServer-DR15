<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="StudentClasses.aspx.cs" Inherits="SkyServer.Proj.SpectralTypes.StudentClasses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<div id="title">Exploring Spectra</div>
<div id="transp">
  <table width="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
           
      <p>The table below lists 14 stars. Click on each of the star numbers in the table below to go to the Quick Look tool entry 
      for that star (it will open in a new window). You will see a picture of the star, and its spectrum. 
      Click on the spectrum for a larger view. Click on the "Quick Look" link in the left column to go 
      back to the page with the image and spectrum.</p>
     
<center>
      <table border="1" cellspacing="1" cellpadding=3 width="200">
        <tr>
          <td><p class="caption">Star</p></td>
          <td><p class="caption">Star</p></td>
        </tr>
        <tr>

          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=280&mjd=51612&fiber=202" target="tools">1</a></td>
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=283&mjd=51959&fiber=502" target="tools">8</a></td>
        </tr>
        <tr>
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=285&mjd=51930&fiber=242" target="tools">2</a></td>
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=291&mjd=51928&fiber=105" target="tools">9</a></td>
        </tr>
        <tr>

          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=298&mjd=51955&fiber=400" target="tools">3</a></td>
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=332&mjd=52367&fiber=184" target="tools">10</a></td>
        </tr>
        <tr>

          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=334&mjd=51993&fiber=461" target="tools">4</a></td>
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=342&mjd=51691&fiber=141" target="tools">11</a></td>
        </tr>
        <tr>

          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=342&mjd=51691&fiber=435" target="tools">5</a></td>
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=342&mjd=51691&fiber=586" target="tools">12</a></td>
        </tr>
        <tr>
      
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=343&mjd=51692&fiber=396" target="tools">6</a></td>
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=281&mjd=51614&fiber=3" target="tools">13</a></td>
        </tr>
        <tr>
      
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=343&mjd=51692&fiber=341" target="tools">7</a></td>
          <td align="right"><a href="../../../tools/quicklook/quickobj.aspx?plate=363&mjd=51989&fiber=5" target="tools">14</a></td>
        </tr>      
      </table>
</center>      
      <p></p>
      
      <a name="ex1"></a>
      <table class="exercise" width="600" cellpadding="5" cellspacing="0">
        <tr>
          <td><p><strong>Explore 1</strong>. Look at each star and its spectrum. It 
          might help to print out all the spectra so you can compare them all.</p>
          <p>Study the spectra carefully and answer the questions below.</p>        
          </td>
        </tr>
                
      </table>
      
      <p></p>
      
      
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><b>Question 1</b>. What do you notice about the spectra? What are the most 
          important features they all have in common?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0><tr><td>
          <p><b>Question 2</b>. What differences do you notice among the spectra? How do the features 
          you identified in Question 1 change among the 14 spectra?</p></td>
        </tr>
      </table>
      
      <p></p>
          
      <table class=question width=600 cellpadding=5 cellspacing=0><tr><td>
          <p><b>Question 3</b>. Do you notice a relationship between a star's color and what its spectrum 
          looks like?</p></td>
        </tr>
      </table>
     
      <p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="stellarspectra.aspx"><img align="left" src="../../images/previous.jpg" alt="Previous page: spectra of stars" /></a>
      <a href="absorption.aspx"><img align="right" src="../../images/next.jpg" alt="Next page: absorption and emission at the atomic level" /></a></td>
    </tr>
  </table>
</div>
</asp:Content>
