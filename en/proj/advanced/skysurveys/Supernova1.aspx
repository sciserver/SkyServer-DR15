<%@ Page Title="" Language="C#" MasterPageFile="SkySurveysMaster.master" AutoEventWireup="true" CodeBehind="Supernova1.aspx.cs" Inherits="SkyServer.Proj.Advanced.SkySurveys.Supernova1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkySurveysContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Finding Supernovae</h1>
      <p>We do not see many changes in the sky from night to night. 
      Over the course of a human lifespan, only the planets, the moon, and an 
      occasional comet are likely to move and change appearance significantly.
      </p>
      <p>But sometimes the sky changes in a flash. Sometimes, stars die a 
      violent death called a supernova. A supernova occurs when a very large 
      star exhausts its nuclear fuel. The star collapses, triggering a violent explosion. 
      The light from a supernova can be as bright as an entire galaxy for a 
      short period of time. Some supernovae in our galaxy have been so 
      bright they have been visible during the day!</p>
      <p>Unfortunately, supernovae visible to the naked eye are rare. 
      One occurs in our galaxy every few hundred years, so there is no 
      guarantee you will ever see one in our galaxy in your lifetime. In 
      1987, a supernova called 1987A was visible in a nearby galaxy called the Large Magellanic Cloud. 
      It was visible to the naked eye to people in the southern 
      hemisphere. Astronomers are still closely studying 1987A's blast wave as it 
      collides with interstellar gas and dust.</p>
      <p>The SDSS has discovered several supernovae. Three of them 
      are in the SDSS's Early Data Release (EDR). In the next 
      exercise, you are going to try to 
      find them by comparing SDSS EDR images with those in the Palomar Sky Survey.</p>
      <p>The two images are below. The image on the left is from POSS I, and the image on the 
      right is from the SDSS. Click on either image for a larger view. (Note that the larger view of the 
      SDSS image is shaped a little differently from the smaller image. But you should still be able to 
      pick out the same galaxies in the larger POSS and SDSS images).</p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Question 3.</strong> Compare the images closely. 
          A supernova is visible in the SDSS image. Can you find it? Be careful that you are not 
          just picking out a very faint object that was not visible in the POSS 
          image!</p></td>
        </tr>
      </table>
      <a name="compare"></a>
      <p><b>POSS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      SDSS</b></p>
      
      <table width=600 align=center border=0>
        <tr>
          <td align=center><a href="images/supernova1fullsizeposs.gif" target="images">
          <img src="images/supernova1poss.gif"></a></td>
          <td align=center valign=top><a href="images/supernova1fullsizesdss.jpg" target="images">
          <img src="images/supernova1sdss.jpg"></a></td>
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
      <td><a href="poss.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="supernova2.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
