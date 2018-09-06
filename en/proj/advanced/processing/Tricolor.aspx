<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="Tricolor.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.Tricolor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Making a Tricolor Image</h1>
      <p>To make a color image of an object, you need to combine three images of the object. 
      One will be assigned to the blue band, one will be assigned to the green 
      band, and one will be assigned to the red band. However, because the 
      SDSS camera is stationary while the sky moves, images through the 
      different filters were taken at slightly different times. So before you 
      make a tricolor image, you will need to align the pictures.</p>
      <p>The SDSS uses the green wavelength picture for the blue band, the red wavelength picture for 
      the green band and the infrared wavelength picture for the red band. These assignments were 
      chosen because they are the middle three filters.</p>
      <table border="2" cellpadding="0" cellspacing="0" id="AutoNumber4" bordercolorlight="#8888FF" bordercolordark="#8888FF">
        <tr>
          <td><img border="0" src="images/tricol1.gif" width="144" height="92"></td>
          <td><img border="0" src="images/tricol2.gif" width="144" height="91"></td>
          <td><img border="0" src="images/tricol3.gif" width="146" height="90"></td>
          <td><img border="0" src="images/tricol4.jpg" width="145" height="92"></td>
        </tr>
        <tr>
          <td><p>The Green Filter</p></td>
          <td><p>The Red Filter</p></td>
          <td><p>The Infrared Filter</p></td>
          <td><p>Combined to make a tri-color 
          image</p></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Exercise 2.</strong> 
          Make a tricolor image of NGC 1087 using infrared, red, and green images.</p>
          
          <p>First, align the three images. Do this by finding the location of a star 
          near NGC 1087, and using it as a landmark to shift the three pictures.</p>
          
          <table align=right>
            <tr><td><img src="images/psf.jpg"></td></tr>
          </table>
          
          <p>To find your landmark star, first open the green image. Look for a star near 
          NGC 1087 that you can clearly identify in all three images. Use your mouse to 
          draw a small box around the star. Right-click 
          inside the box and select "PSF." Record the x and y coordinate of the star 
          (these are coordinates in the image, not in the sky). Do the same for the 
          red and infrared images.</p>
          
          <p>Next, figure out how to shift the red and infrared images to match the green. 
          Find the difference between the x coordinates in the red and green image 
          (x<sub>r</sub> - x<sub>g</sub>). You need to know the direction of the shift, 
          so don't forget the sign! Do the same for the y coordinate (y<sub>r</sub> - y<sub>g</sub>), 
          and then for the x and y coordinates of the infrared image.</p>
          
          <table align=left>
            <tr><td><img src="images/shift.jpg"></td></tr>
          </table>          
          
          <p>Re-open the r image. Click on the Geometry menu and select Shift. Enter the difference 
          between the r and g images, but reverse the sign (so you can shift the r image to 
          align with the g image). Save the image under a new file name. Do the same for the 
          infrared image.</p>

          <table align=right>
            <tr><td><img src="images/tricolor.jpg"></td></tr>
          </table>          
                    
          <p>Next, click on View and select (L)RGB. Type the name of the 
          infrared file in the red box, the name of the red file in the green 
          box, and the name of the green file in the blue box. Do not 
          include the .fts extension. Click OK. Adjust the max and 
          min brightness values until you see the image clearly.</p>
          
          <p>What do you see?</p></td>
        </tr>
      </table>
      <p>You can also adjust the color balance. If you think your image 
      looks too blue, you can decrease the intensity of the blue image. If 
      you want more red, you can increase the intensity of the red image.</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Exercise 3.</strong> 
          Click on View and then Colors Stretching. Experiment with 
          the alpha and the intensity and see what happens. NGC 1087 is in SkyServer's
          <a target="tools" href="http://skyserver.sdss.org/en/tools/places/page2.aspx">Famous 
          Places</a>. Adjust the alpha and intensity
          until your image closely matches the image in Famous Places. 
          Record the values for the colors and max and min brightness you used.</p></td>
        </tr>
      </table>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
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
      <td><a href="maxandmin.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="otherimages.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
