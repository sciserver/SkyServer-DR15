<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="OtherControls.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.OtherControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <h1>Other Features</h1>
      <p>Iris contains many features in addition to the ones you have used already. 
      Here are just a few more that you can try to see how they affect the image. 
      You an always click the Undo button (<img border="0" src="images/otherc1.gif">) 
      if you do not like the change.</p>
      <p></p>
      <p>An important thing to remember about image processing is that there is 
      no single &quot;best&quot; image you can produce. Some images show faint 
      detail exceptionally well, but make the brightest areas of the image 
      overexposed and washed out. If you are interested seeing in the 
      brightest areas of the image, you are probably not going to be able to see 
      the faint areas. The best image is the one that brings out the 
      features in which you are most interested. Someone who is studying a 
      different topic may find your image is not suited to their needs.</p>
      
      <a name="palettes"></a>
      <h1>Color Palettes</h1>
      <p>When you load an image from a single filter, such as the green image, it is 
      displayed as a grayscale. The brightest pixels are 
      shown in white, dimmer pixels in shades of gray, and the dimmest areas are 
      black.</p>
      <p>Color palettes allow you to display pixels of different brightnesses 
      with different colors. Sometimes color displays can bring out subtle 
      details.</p>
      <p></p>
      <p>The color palette bar is in the Threshold window. You have three 
      choices: grayscale, blue-yellow, or red-green-blue. You can also 
      invert any of the color palettes with the button at the far right.</p>
      <p><img border="0" src="images/otherc2.gif"></p>
      <p></p>
      <p></p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Exercise 8.</strong> 
          Open an image using Iris (you may use an image you already have). 
          Apply the different color palettes. Observe the changes. 
          Invert all the palettes and observe the changes.</p></td>
        </tr>
      </table>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 4.</strong> 
          What features stand out best using the grayscale palette? What 
          features stand out best using blue-yellow? Using red-green-blue?
          </p></td>
        </tr>
      </table>
      
      <a name="log"></a>
      <h1>Log Scaling</h1>
      <p>A normal grayscale image uses linear scaling. If one pixel has 
      twice as many counts as another, it is twice as bright.
      Linear scaling is not always the best choice, however. 
      Logarithmic scaling may be more appropriate for some applications. 
      Logarithmic scaling uses the logarithm of the number of counts in each 
      pixel for the brightness. Logarithmic scaling means that if one pixel 
      has ten times as many counts as another, it will appear twice as bright.</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Exercise 9.</strong> 
          Open an image. Click on the View menu and select Logarithm. 
          Observe the changes. Repeat for a couple of different images 
          (you may also need to adjust max and min brightness to get a good image).</p></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 5.</strong> 
          What features stand out when you use log scaling? What 
          features are missing? For what types of objects do you think you 
          should use log scaling?</p></td>
        </tr>
      </table>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="asteroids.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="alternateviews.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
