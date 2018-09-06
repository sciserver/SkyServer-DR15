<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="CCDImages.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.CCDImages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>What is an image?</h1>
      <p>The SDSS telescope uses a CCD (charged coupled device) camera to 
      record images of the sky. A CCD is a device that turns light into 
      electronic signals. When light hits a CCD camera, the CCD records 
      a signal; the brighter the light, the stronger the signal.</p>   
      
      <table width=185 border=1 align=right><tr><td>
      <img src="images/cam_face.web1.jpg"></td></tr>
      <tr><td align=center><p class=caption>The SDSS's camera consists of 
      six columns of five CCDs each</p></td></tr>
      </table>
      
       
      <p>The SDSS's CCD camera is one of the most sensitive ever built.
      The SDSS camera uses 
      30 CCDs, arranged in six columns, to record images. Each column contains 
      5 CCDs that record a strip of the sky in five wavelengths of light. 
      Each CCD consists of a 2048 by 2048 grid of pixels, or single points in the 
      image.</p>
      <p>The electronic image that the CCD records consists of a grid of these pixels. Each 
      entry in the grid includes the pixel's x-coordinate, its y-coordinate, and 
      the number of photons, or "counts," that hit that pixel 
      during the camera's exposure time. Image processing software reads the data 
      and assigns each pixel a shade of gray (or a color) depending on the 
      number of counts.</p>
      <p>Here is an example of how the data might look for part of an image from 
      one of SDSS's CCDs:</p>
      <table border="1" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber1" bgcolor="#333366" height="222">
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">4</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">3</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">2</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">4</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">5</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">5</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">7</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">4</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">3</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">6</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">8</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">9</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">8</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">8</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">4</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">7</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">9</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">9</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">9</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">7</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">5</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">2</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">3</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">6</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">7</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">6</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">7</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">5</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">3</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">5</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">5</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">4</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">3</font></td>
          <td width="9%" height="13"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">3</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">3</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">3</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">2</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
      </table>
      <p></p>
      <p>An image processing program would assign a color to each value in the grid. 
      For example, the integers 0 and 1 might be black. The integers 2 and 
      3 might be a very dark gray, up to the integers 9 and 10, which could be 
      white. The program could also display each integer as 
      a different color. Below is one possible way of displaying this 
      image:</p>
      <table border="1" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber2" height="222">
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18" bgcolor="#C0C0C0">
          <font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18" bgcolor="#C0C0C0">
          <font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18" bgcolor="#FF0000">
          <font face="Arial" color="#F5F5F5">4</font></td>
          <td width="8%" height="18" bgcolor="#800000">
          <font face="Arial" color="#F5F5F5">3</font></td>
          <td width="9%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18" bgcolor="#C0C0C0">
          <font face="Arial" color="#F5F5F5">2</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#C0C0C0">
          <font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18" bgcolor="#FF0000">
          <font face="Arial" color="#F5F5F5">4</font></td>
          <td width="8%" height="18" bgcolor="#FFFF00">
          <font face="Arial" color="#F5F5F5">5</font></td>
          <td width="8%" height="18" bgcolor="#FFFF00">
          <font face="Arial" color="#F5F5F5">5</font></td>
          <td width="8%" height="18" bgcolor="#0000FF">
          <font face="Arial" color="#F5F5F5">7</font></td>
          <td width="9%" height="18" bgcolor="#FF0000">
          <font face="Arial" color="#F5F5F5">4</font></td>
          <td width="9%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18" bgcolor="#800000">
          <font face="Arial" color="#F5F5F5">3</font></td>
          <td width="8%" height="18" bgcolor="#00FF00">
          <font face="Arial" color="#F5F5F5">6</font></td>
          <td width="8%" height="18" bgcolor="#FF00FF">
          <font face="Arial" color="#F5F5F5">8</font></td>
          <td width="8%" height="18" bgcolor="#800080">
          <font face="Arial" color="#F5F5F5">9</font></td>
          <td width="8%" height="18" bgcolor="#FF00FF">
          <font face="Arial" color="#F5F5F5">8</font></td>
          <td width="9%" height="18" bgcolor="#FF00FF">
          <font face="Arial" color="#F5F5F5">8</font></td>
          <td width="9%" height="18" bgcolor="#FF0000">
          <font face="Arial" color="#F5F5F5">4</font></td>
          <td width="9%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#C0C0C0">
          <font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18" bgcolor="#0000FF">
          <font face="Arial" color="#F5F5F5">7</font></td>
          <td width="8%" height="18" bgcolor="#800080">
          <font face="Arial" color="#F5F5F5">9</font></td>
          <td width="8%" height="18" bgcolor="#800080">
          <font face="Arial" color="#F5F5F5">9</font></td>
          <td width="8%" height="18" bgcolor="#800080">
          <font face="Arial" color="#F5F5F5">9</font></td>
          <td width="9%" height="18" bgcolor="#0000FF">
          <font face="Arial" color="#F5F5F5">7</font></td>
          <td width="9%" height="18" bgcolor="#FFFF00">
          <font face="Arial" color="#F5F5F5">5</font></td>
          <td width="9%" height="18" bgcolor="#C0C0C0">
          <font face="Arial" color="#F5F5F5">2</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18" bgcolor="#800000">
          <font face="Arial" color="#F5F5F5">3</font></td>
          <td width="8%" height="18" bgcolor="#00FF00">
          <font face="Arial" color="#F5F5F5">6</font></td>
          <td width="8%" height="18" bgcolor="#0000FF">
          <font face="Arial" color="#F5F5F5">7</font></td>
          <td width="8%" height="18" bgcolor="#00FF00">
          <font face="Arial" color="#F5F5F5">6</font></td>
          <td width="8%" height="18" bgcolor="#0000FF">
          <font face="Arial" color="#F5F5F5">7</font></td>
          <td width="9%" height="18" bgcolor="#FFFF00">
          <font face="Arial" color="#F5F5F5">5</font></td>
          <td width="9%" height="18" bgcolor="#800000">
          <font face="Arial" color="#F5F5F5">3</font></td>
          <td width="9%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="13" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="13" bgcolor="#FFFF00">
          <font face="Arial" color="#F5F5F5">5</font></td>
          <td width="8%" height="13" bgcolor="#FFFF00">
          <font face="Arial" color="#F5F5F5">5</font></td>
          <td width="8%" height="13" bgcolor="#FF0000">
          <font face="Arial" color="#F5F5F5">4</font></td>
          <td width="8%" height="13" bgcolor="#8B0000">
          <font face="Arial" color="#F5F5F5">3</font></td>
          <td width="9%" height="13" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="13"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#800000">
          <font face="Arial" color="#F5F5F5">3</font></td>
          <td width="8%" height="18" bgcolor="#C0C0C0">
          <font face="Arial" color="#F5F5F5">2</font></td>
          <td width="8%" height="18" bgcolor="#800000">
          <font face="Arial" color="#F5F5F5">3</font></td>
          <td width="8%" height="18" bgcolor="#8B0000">
          <font face="Arial" color="#F5F5F5">3</font></td>
          <td width="9%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18" bgcolor="#808080">
          <font face="Arial" color="#F5F5F5">1</font></td>
          <td width="8%" height="18" bgcolor="#C0C0C0">
          <font face="Arial" color="#F5F5F5">2</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
        <tr>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="8%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
          <td width="9%" height="18"><font face="Arial" color="#F5F5F5">0</font></td>
        </tr>
      </table>
      <p>You could then look at this color pattern with a computer image processing 
      program.</p>
      <p>A real image would have many more pixels and would use substantially more 
      than 10 colors. The way that image processing programs display the image is the same, 
      however.<p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="iris.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
