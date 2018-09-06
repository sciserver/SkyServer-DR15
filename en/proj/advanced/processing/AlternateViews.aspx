<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="AlternateViews.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.AlternateViews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Alternate Views of Images</h1>
      
      <a name="isophotes"></a>
      <h1>Isophotes</h1>
      <p>Another interesting way to view an image is through the use of 
      isophotes. Isophotes are lines drawn through areas of constant 
      brightness. Isophote images are very similar to contour maps, which show 
      lines through areas of constant elevation.</p>
      <p>Click on View and then Isophotes. The following window will 
      appear:</p>
      <p><img border="0" src="images/altern1.gif"></p>
      <p>X-Dim and Y-Dim are the size of the picture. High and low are the 
      highest intensity and lowest intensity for which you want isophotes drawn. 
      Step is how far in between isophotes. For the values shown above, Iris 
      will draw isophotes where the intensity is 100, 200, 300, 400, 500, etc, 
      up to 32,700. It is important to choose these numbers wisely.</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Exercise 10.</strong> 
          Open the green image of NGC 1087, the galaxy you used earlier. Click 
          on View and then Isophotes. For the high value, you want to 
          enter the intensity of the brightest pixel. To find this intensity, draw 
          a box around 
          the brightest area of the diagram. Right-click on the box and 
          select Statistics. Enter the number for the maximum value in the 
          high box (you may round to the nearest 100). Enter the image's minimum brightness 
          value in the Low box. Select a step size that will give you 15 to 
          20 isophotes. Click OK.</p></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 6.</strong> 
          Where are the isophotes widely spaced? Where are the closely 
          spaced? What does the distance between isophotes tell you?</p></td>
        </tr>
      </table>
      
      <a name="threed"></a>
      <h1>3-D Views</h1>
      <p>Another way to view an image is with a 3-D view - a 3-D picture 
      where the height represents the brightness of each pixel. Below you 
      can see a 3-D view of two stars.</p>
      <p><img border="0" src="images/altern2.gif"></p>
      <p>The dialog box for 3D view is shown below.</p>
      <p><img src="images/trid0.gif" vspace="15" NOSAVE></p>
      <p>X Dim and Y Dim are the size of the picture and will usually not need 
      to be changed. High and Low are the counts of the brightest and dimmest 
      pixel you want to observe. Azimuth and elevation determine the 
      viewing angle of the plot. Step is the size of the bins, in pixels, 
      on the x and y axis used to make the 3-D graph. A smaller step size 
      will give you a smoother, more detailed graph, but the graph will 
      take longer to make.</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Exercise 11.</strong> 
          Once again, open the green image of NGC 1087. 
          Click on View and 3D. You may adjust the High and Low to 
          correspond to your max and min values. Click OK. You 
          will see the 3D view. You may experiment with the azimuth and 
          elevation. These values change the angle at which you view the 
          display. The defaults will give you a good view, but you may find 
          different angles better for a particular image.</font></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Question 7. </strong>
          What parts of the image correspond to the highest peaks?
          </p></td>
        </tr>
      </table>
      <p></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="othercontrols.aspx">
      <img align="left" src="../../images/previous.jpg"></a> <a href="conclusion.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
