<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="Asteroids.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.Asteroids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Finding Asteroids</h1>
      <p>If you have done the <a href="../../basic/asteroids/">Asteroids</a> project, 
      you may have learned how to identify asteroids 
      from their movements. We are now going to learn another way to identify moving 
      objects, through a process called &quot;blinking&quot;. In 1930, Clyde Tombaugh 
      blinked images to discover Pluto. Along with asteroids and new planets, blinking 
      can also be used 
      to discover other objects such as supernovae, novae, and variable stars.</p>
      <p></p>
      <p>Blinking images means quickly switching between two images. 
      IRIS can do this for you automatically. 
      You will be able to see changes between the two images, such as an object 
      moving back and forth. The moving object could be an 
      asteroid.</p>
      <p>You may see some objects get brighter or dimmer. 
      If you are alternating two filters, such as the red and the green, this 
      tells you that an object is brighter in one color than in the other. 
      If you are looking at two different images taken through the same filter 
      but at different times, this tells you the object is actually getting brighter or 
      dimmer.</p>
      <p>The procedure for blinking images is lengthy, but it's worth it!</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Exercise 6.</strong> 
          The steps you must follow to blink images are outlined below.<p>
          1. Retrieve the data using the 
          <a target="tools" href="../../../tools/explore/obj.aspx">Object Explorer</a>. 
          Look in the area around ra = 196.18, dec = 11.425. 
          Select corrected frames in the r and g bands (they are on opposite ends of the camera, so 
          the most time passes between the r and g bands, making it easier to 
          find asteroids). Return the files as a .zip file. Unzip 
          the files into your Iris image directory. 
          Rename the files so they are easy to remember. Be sure the 
          filename ends with the .fts extension.</p>
          <p>2. Align the fields, like you did when you made the tricolor image. 
          Pick an easily identifiable landmark star.</p>
          <p>3. You are now ready to blink the images! Click on the
          <img border="0" src="images/astero2.gif"> in the toolbar. This button 
          will bring up a small command box. Type the blink command. 
          The blink command has the format:</p>
          <p>blink image#1 image#2 delay</p>
          <p>For image#1 and image#2, type the filenames for the red and green 
          images (no .fts extension on the end, and be sure they are in your 
          default directory). "Delay" is how long the images stay on the 
          screen before switching, given in milliseconds. Try 200 - 300 for the 
          delay (this will give you a 0.2 to 0.3 second delay). You can change the delay 
          later if you like. To stop the 
          images from blinking, type the command blinkoff.</p>
          <p>All of the objects in the images should remain stationary, except for the 
          asteroids. Find the asteroid(s)! Some objects may get 
          brighter or dimmer but not move. That is all right. Some 
          objects are brighter in the green or red filter.</p></td>
        </tr>
      </table>
          
      <p></p>
          
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>          
          <td><p><strong>Exercise 7. </strong>Open the <a href="../../../tools/chart/navi.aspx" target="tools">
          Navigation tool</a>. Use the zoom buttons (the magnifying glasses) and the 
          NWSE buttons to look through the sky until you find a field you like. 
          Click on any object in the field, then click on Explore to open the 
          Object Explorer. Get the g and r FITS images for that field. Use the blink 
          command to search for asteroids. You may need to adjust the max and 
          min values to find dim asteroids. There is at least one asteroid in almost 
          every field, so you should find something!</p>
          </td>
        </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="tricolor.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="othercontrols.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
