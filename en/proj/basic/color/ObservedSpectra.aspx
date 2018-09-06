<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="ObservedSpectra.aspx.cs" Inherits="SkyServer.Proj.Color.ObservedSpectra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Observed Spectra</h1>
      <p>The computer simulation you did in Explore 2 assumes that all 
      the light stars emit comes from thermal radiation. In reality, stars 
      emit light for other reasons as well (see the <a href="../spectraltypes">
      Types of Stars</a> project to learn more about these reasons).</p>
      <p>The SDSS's spectrograph has measured spectra for about <%=globals.NStarSpec%> stars. 
      In the next Explore exercise, you will study some of these spectra 
      to learn whether or not they really look like the simulated spectra 
      you studied earlier.</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>          
        <tr>
          <td width="100%"><p><strong>Explore 4. 
          </strong>Use the
          <a target="tools" href="../../../tools/getimg/plate.aspx">
          Plate Browser</a> tool to look up the spectra of several stars. Select 
          a plate from the drop-down menu, then select a "star" link to see a 
          spectrum. Be sure you pick a spectrum of a star.</p>
          <p>How do the spectra of stars in the SDSS compare to thermal radiation 
          curves? What are the similarities? What are the 
          differences? Can you see a peak wavelength for these stars?</p></td>
        </tr>
      </table>
      <p></p>
      <h1>The Other <%=globals.NStarNoSpec%> Stars</h1>
      <p>In the last two exercises, you have learned how to find the temperature 
      of a star from the peak wavelength of its spectrum. The SDSS has measured 
      spectra for <%=globals.NStarSpec%> stars. But it has also taken images of almost 
      <%=globals.NStar%> stars! What can astronomers learn about those other 
      <%=globals.NStarNoSpec%> stars by studying their colors? Read on to find out.</p>      
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="colorandtemp.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="colorcolordiagram.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
