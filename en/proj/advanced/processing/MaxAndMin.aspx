<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="MaxAndMin.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.MaxAndMin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Analyzing a Single Picture</h1>
      <p>Before we make color images, we will start by looking at one image to learn 
      a little more about Iris.</p>
      <p>Click on File and Load. Select the green-wavelength (g) image you just 
      downloaded and open it. You will probably see nothing but a black screen.</p>
      
      <p>You should see a small box at the bottom of the Iris screen - this is the 
      Threshold box. If the threshold 
      box is not present, activate it by clicking on the button at the top of the Iris 
      window that looks like this: <img border="0" src="images/maxand4.gif" alt="Iris threshhold button" />. 
      In the threshhold window, click on the Auto button.</p>
      
      <p>&nbsp;<img border="0" src="images/threshold.jpg"></p>
      <p>Each pixel on the screen has a brightness associated with it. The 
      top bar in the Threshold box represents the value of the brightest pixel that will be 
      displayed, also known as the maximum brightness. All pixels 
      brighter than the maximum brightness will have the same color. The lower value 
      represents the value of the faintest pixel that will be displayed, also 
      known as the minimum brightness. All pixels fainter than the minimum 
      brightness will have the same color.</p>
      
      <p>You should now see an image of the sky. This is the area around NGC 1087. 
      Use the scrollbars to scroll through the image until you see NGC 1087 itself - 
      it is the largest galaxy in the image. When you have NGC 1087 in your 
      viewing area, you should see a screen like this:</p>
      
      <table border=0 align=center>
         <tr><td><img src="images/ngc1087_in_iris.jpg"></td></tr>
      </table>
      
      <p></p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Exercise 1.</strong> 
          Increase and decrease the maximum brightness. Notice the 
          effect it has on the image. Increase and decrease the minimum 
          brightness. Observe the effect on the image.</p></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Question 1.</strong> How 
          would you adjust the maximum and minimum brightness to 
          clearly see the galaxy's faint spiral arms?</p></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Question 2.</strong> How 
          would you adjust the maximum and minimum brightness to clearly 
          see the galaxy's bright center?</p></td>
        </tr>
      </table>
      <p>Note: As you change the max and min brightness, you are not 
      changing the information contained in the picture - you are merely 
      changing the way it is displayed.</p>
      <p>Tip: You get a nice dark background 
      if you set the minimum value to the background value of the image. To find the 
      background value, use the mouse to draw a rectangle around an area where 
      there are no visible stars or galaxies. Right-click on the area and 
      select statistics. Set the minimum value for the threshold to the mean or median (if 
      you choose an area with no objects, they should be almost exactly the 
      same. If they are substantially different, you probably have some 
      stars or a galaxy in the box!)</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="retrievingdata.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="tricolor.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
