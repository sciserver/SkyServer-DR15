<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="GlobularCluster.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.GlobularCluster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <h1>H-R Diagram of a Globular Cluster</h1>
      
      <p>Clusters like the Pleiades lie deep within our galaxy. The SDSS, on the 
      other hand, looks primarily above and below the plane of the galaxy. This view 
      is great for seeing distant galaxies and quasars, but it is not very good for 
      seeing star clusters.</p>
      
      <p>All of the clusters seen by the SDSS are globular clusters, thick clusters containing 
      millions of stars that lie just above and just below the plan of our galaxy. 
      The two clusters we'll work with were both found by the Palomar Sky Survey 
      in the 1950's, hence the names Pal 3 and Pal 5. Their coordinates are given below.</p>
      <table border="1" cellpadding="1" cellspacing="1" width="400" id="AutoNumber1">
        <tr>
          <td width="25%"><p class=caption>Name</p></td>
          <td width="25%"><p class=caption>Ra</p></td>
          <td width="25%"><p class=caption>Dec</p></td>
          <td width="25%"><p class=caption>Radius</p></td>
        </tr>
        <tr>
          <td width="25%"><p>Pal 3</p></td>
          <td width="25%"><p>151.3801</p></td>
          <td width="25%"><p>0.072</p></td>
          <td width="25%"><p>0.7 arcmin</p></td>
        </tr>
        <tr>
          <td width="25%"><p>Pal 5</p></td>
          <td width="25%"><p>229.0128</p></td>
          <td width="25%"><p>-0.1082</p></td>
          <td width="25%"><p>3 arcmin</p></td>
        </tr>
      </table>
      <p></p>

      <p>Below you can see pictures of Pal 3 and Pal 5. 
      These pictures are here to help you orient yourself, so you can  be sure you 
      are seeing the correct clusters in the Navigation tool. If you would like to 
      look up the original Palomar Sky Survey pictures of these clusters, you may 
      do so by clicking
      <a href="http://archive.stsci.edu/cgi-bin/dss_form" target="offsite">
      here</a> to 
      use a form to download a .fits or .gif image. Simply enter Pal 3 or Pal 5 in the 
      field labeled "object name," then follow the instructions.</p>
      
      <h1>Pal 3</h1>
      
      <p>You can see the cluster on the bottom left of the image.</p>
      
      <a name="pal3image"></a>
      <center><table border="0" cellpadding="0" cellspacing="0"><tr><td>
         <A href="../../../tools/chart/navi.aspx?ra=151.3801&dec=0.072" target="tools">
         <IMG border=1 src="images/pal3.jpg">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to launch the Navigation tool</span></p></td></tr></table></center>
      
      <p>&nbsp;<p>

      <h1>Pal 5</h1>
      <p>Pal 5 is a much larger cluster. It is between the two brightest 
      objects in this image.</p>
      <p><span>
      
      <a name="pal5image"></a>
      <center><table border="0" cellpadding="0" cellspacing="0"><tr><td>
         <A href="../../../tools/chart/navi.aspx?ra=229.0128&dec=-0.1082" target="tools">
         <IMG border=1 src="images/pal5.jpg">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to launch the Navigation tool</span></p></td></tr></table></center>
           
      <p></p>
      
      <p>The SDSS uses slightly different filters than the traditional b, v, and 
      r filters, so when you make your H-R diagram, you can't use the traditional b-v 
      color. Instead, use the g and r filters, which happen to lie in the visible 
      part of the spectrum, to calculate g-r color for your H-R diagram.</p>
      
      <a name="ex6"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 6. 
          </strong>Use the 
          <a href="../../../tools/chart/navi.aspx" target="tools">
          Navigation Tool</a> to make an H-R diagram of Palomar 5. When you click the 
          link, the tool will open in a new window. You will see a screen like this:</P>
          
          <img src="../../images/navi_init.jpg">


		   <P>Enter the coordinates for Pal 5 (RA = 229.0128, Dec = -0.1082) and click 
		   "Get Image." Pal 5 will appear in the main window. You can zoom in or out 
		   in the image with the zoom bar below Get Image. Click the plus sign to zoom in or the minus sign to 
			zoom out. You can also move around in the sky by clicking the NWSE buttons 
			around the image.</P>
			<P>When you click on any star in the image, a green square 
			will come up around it. A close-up of the object will appear in the top right, 
			and the object's data will appear at the right. Click "Add to Notes" to save the 
			star's data in your notebook.</p>
           
          <p>When you finish choosing stars and saving them to your notebook, save your entire notebook 
          to your computer. To do that, click on the radio button next to "CSV," then click the "Export" button 
          to download the data as CSV (comma-separated value). You can then open the CSV file in any 
          graphing program, including Excel.</p>
          
          <p>Use the data to make an H-R diagram of the globular cluster. 
          Put the r magnitude on the y-axis and the g-r color on the x-axis.</p>
          
          <p>Try to take stars only from the cluster. Stars that appear 
          dramatically different may be at different distances along the same line of 
          sight. You should also be careful not to accidentally 
          record the information for a galaxy. Try to get at least 20 to 
          30 stars for your diagram.</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Question 10.
          </strong>What type(s) of stars do you see on this H-R diagram? What 
          types of stars do you not see?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>      
          <td><p><strong>
          Question 11.</strong> Why don't you see all types of stars in this 
          cluster? (Hint : Could it be due to a limitation imposed by our 
          equipment?)</p></td>
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
      <td><a href="hipparcos2.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="mast.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
