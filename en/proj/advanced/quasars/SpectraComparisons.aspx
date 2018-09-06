<%@ Page Title="" Language="C#" MasterPageFile="QuasarsMaster.master" AutoEventWireup="true" CodeBehind="SpectraComparisons.aspx.cs" Inherits="SkyServer.Proj.Advanced.Quasars.SpectraComparisons" %>
<asp:Content ID="Content1" ContentPlaceHolderID="QuasarsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Strange Objects in the Sky</h1>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td width="100%"><p><strong>Question 3.
          </strong> Below are three spectra. The first is the spectrum of a 
          typical star. The second is the spectrum of a typical galaxy. The third 
          is the spectrum of something else - an object like the ones you saw 
          in Exercise 1. 
          What are the differences between the first two spectra and the third? 
          What are some of the different emission and absorption 
          lines you see? Do they look like thermal radiation sources or 
          non-thermal radiation sources? Click on any of the images for a 
          full size version.</p>
          <p><b>Spectrum #1</b></p>
          <p><a href="images/star.gif" target="pictures">
          <img border="0" src="images/star_small.gif"></a></p>
          <p><b>Spectrum #2</b></p>
          <p><a href="images/galaxy.gif" target="pictures">
          <img border=0 src="images/galaxy_small.gif"></a></p>
          <p><b>Spectrum #3</b></p>
          <p><a href="images/quasar.gif" target="pictures">
          <img border=0 src="images/quasar_small.gif"></a></p>
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
      <td><a href="vlafirst.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="whatare.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
