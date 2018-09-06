<%@ Page Title="" Language="C#" MasterPageFile="SkySurveysMaster.master" AutoEventWireup="true" CodeBehind="Supernova2.aspx.cs" Inherits="SkyServer.Proj.Advanced.SkySurveys.Supernova2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkySurveysContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Finding Supernovae</h1>
      <p>Below you will see the SDSS image with the supernova marked. Did you 
      find it?</p>

      <table align=center width=450 border=1>
        <tr>
          <td align=center><a href="images/supernova1solution.jpg" target="images">
          <img src="images/supernova1solution_small.jpg"></a></td>
        </tr>
          <td align=center><p><SPAN class=caption>Click on the image for a 
          larger view</SPAN></p></td>
        </tr>
      </table>


      <p>As you can see, finding supernovae by eye is a challenge. The 
      SDSS uses a computer program to help with the search. The computer 
      points out likely supernovae, and then astronomers make 
      follow up observations to confirm the discovery.</p>
      
      <a name="ex1"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 1.</strong> 
          Now, find the other two supernovae in the SDSS's Early Data Release. The table below has links 
          to images of the SDSS fields that contain the supernovae. Click the "small" 
          link for a small image, and the large link for a large (2048 x 1489) image. 
          Both types of image will open in the same new window.</p>
          
          <p>After getting the SDSS image, use the given RA and Dec in the 
          <a href="http://archive.stsci.edu/cgi-bin/dss_form" target="tools">
          POSS Image Retrieval tool</a> to find POSS images of the same field. 
          Compare the fields to find the supernovae. (Note: the images are 
          not oriented the same direction!) The second supernova is rather 
          hard to find.</p>
          <table border="1" cellpadding="1" cellspacing="1" width="70%" id="AutoNumber2">
            <tr>
              <td><p class=caption align=center>Supernova #</p></td>
              <td><p class=caption align=center>RA</p></td>
              <td><p class=caption align=center>Dec</p></td>
              <td colspan=2><p class=caption align=center>Images</td>              
            </tr>
            <tr>
              <td align=right><p>1</p></td>
              <td><p>353.18</p></td>
              <td><p>-0.98</p></td>
              <td><p><a href="images/s1.jpg" target="images">Small</a></p></td>
              <td><p><a href="images/s1full.jpg" target="images">Large</a></p></td>
            </tr>
            <tr>
              <td align=right><p>2</p></td>
              <td><p>18.12</p></td>
              <td><p>0.13</p></td>
              <td><p><a href="images/s2.jpg" target="images">Small</a></p></td>
              <td><p><a href="images/s2full.jpg" target="images">Large</a></p></td>              
            </tr>
            </table>
          </td>
        </tr>
      </table>
      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="supernova1.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="2mass.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
