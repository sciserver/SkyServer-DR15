<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="IRIS.aspx.cs" Inherits="SkyServer.Proj.Advanced.Processing.IRIS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Image Processing Software</h1>
      <p>Before you can download images from SDSS, you will need a program to 
      view them. A good freeware program called Iris is available for download 
      on the Internet. You can download it from the 
      <a target="offsite" href="http://www.astrosurf.com/buil/us/iris/iris.htm">IRIS Home Page</a>.</p>
      <p>Scroll down to "How to install version 5.59...," then click the "IRIS.ZIP" link below it to 
      download the file iris.zip. You will need to unzip it using a program such 
      as <a href="http://www.stuffit.com">StuffIt</a>. After the program is unzipped, click on the 
      file "iris.exe" to launch Iris.</p>
      <p>When you launch Iris, you will see the screen similar to the screen shown below:</p>
      <p><img border="0" src="images/iris_init_3.jpg"></p>
      <p>Next, you need to set up Iris so it knows where to find the pictures you want 
      to use. Click on File and then Settings. The following window 
      will appear.</p>
      <p><img border="0" src="images/iris.a3.png"></p>
      <p>If you plan on getting your images from a CD-ROM, be sure the drive letter is correct. 
      Change the working path to the directory where you plan to store your 
      images. You might create a directory with your name to store your images. Change the 
      working path to c:\MyName\ </p>
      <p>Fits files can have a file type of either .fit or .fts. The rest 
      of this project will use the .fits extension, which can be opened by IRIS only if you 
      select FIT. Make sure that the File Type is set to FIT, then click OK.</p>
      <p></p>
      <p>Now, you need to get some images to analyze!</p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="ccdimages.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="retrievingdata.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
