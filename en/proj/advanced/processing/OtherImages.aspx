<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="OtherImages.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.OtherImages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Other Tricolor Images</h1>
      <p>Sometimes, you can learn more about an object by looking at different 
      types of images. Other tricolor images can be made using images from 
      other wavelengths of light. Another sky survey called 2MASS (the 2 Micron 
      All Sky Survey) creates 
      tri-color images using three different filters, called the J, H, and K 
      filters, that all lie in the 
      infrared.</p>
      <p class=caption align="center">Constructing a 2MASS Color Image of NGC5719<br>
      (courtesy the Two Micron All Sky Survey*)</p>
      <table border="1" cellpadding="1" cellspacing="1" width="100%" id="AutoNumber4" bordercolorlight="#8888FF" bordercolordark="#8888FF">
        <tr>
          <td width="25%">
          <a href="images/J.jpeg" target="images"><img src="images/J.jpeg"></a>
          </td>
          <td width="25%"><a href="images/H.jpeg" target="images"><img src="images/H.jpeg"></a></td>
          <td width="25%"><a href="images/K.jpeg" target="images"><img src="images/K.jpeg"></a></td>
          <td width="25%"><a href="images/color.jpeg" target="images"><img src="images/color.jpeg"></a></td>
        </tr>
        <tr>
          <td width="25%"><font face="Arial" color="#F5F5F5">The J Filter</font></td>
          <td width="25%"><font face="Arial" color="#F5F5F5">The H Filter </font>
          </td>
          <td width="25%"><font face="Arial" color="#F5F5F5">The K Filter</font></td>
          <td width="25%"><font face="Arial" color="#F5F5F5">A Tri-Color Image</font></td>
        </tr>
      </table>
      <p align="center">&nbsp;</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Exercise 4.</strong> 
          Create another image of NGC 1087 using SDSS's ultraviolet, green and red images for 
          the blue, green and red filters respectively. Adjust the color 
          balance and max and min brightness to bring out the most detail.</p></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 3.</strong> 
          How does this image differ from the green, red and infrared image you made in 
          Exercise 2? 
          Which parts of the galaxy stand out more prominently? Which stand 
          out less prominently?</font></td>
        </tr>
      </table>
      <p></p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Exercise 5.</strong> 
          Repeat Exercise 4 for a different combination of filters that you 
          have not yet attempted.</p></td>
        </tr>
      </table>
      <p>As you may have learned in the <a href="../color/">Color</a> project, objects tend to give off 
      more light in certain wavelengths than others. Some objects give off 
      a lot of red light, where others might give off more ultraviolet or 
      infrared. You can see some of the differences in the images you just 
      observed.</p>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="tricolor.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="asteroids.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
    <tr><td><p class=caption><font size="2">*Atlas Image obtained as part of the Two Micron 
      All Sky Survey (2MASS), a joint project of the University of Massachusetts 
      and the Infrared Processing and Analysis Center/California Institute of 
      Technology, funded by the National Aeronautics and Space Administration 
      and the National Science Foundation.</font></p></td></tr>
  </table>
</div>
</asp:Content>
