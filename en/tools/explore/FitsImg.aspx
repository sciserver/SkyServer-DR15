<%@ Page Title="" Language="C#" MasterPageFile="ObjectExplorer.Master" AutoEventWireup="true" CodeBehind="FitsImg.aspx.cs" Inherits="SkyServer.Tools.Explore.FitsImg" %>

<asp:Content ID="Content2" ContentPlaceHolderID="OEContent" runat="server">
<div class="content">
<table class="content">
  <tr>
    <td>

        <h2>FITS Images</h2>
        <p class="content">The links below allow you to directly download FITS images 
        (<a class="content" href="http://fits.gsfc.nasa.gov/" target="_blank">Flexbile Image 
        Transport System<img src="../../images/offsite_black.png" alt=" (offsite)" /></a>) 
        of the SDSS field that contains this object.</p>

        <p class="content">Several different types of FITS files are available from SDSS imaging. 
        <em>Corrected Frames</em> are the final step of processing for each field; these should 
        be the correct files to use for most purposes. Click on the labels below to go to the 
        SDSS data model page for more information about each image type.</p>
        
        <p class="content">Click on one of the filter links below (<i>u/g/r/i/z/all</i>) to 
        download a FITS image. The image is compressed as a .bz2 file, which can be uncompressed 
        with programs like 
        <a href="http://www.bzip.org/" target="offsite" class="content">bzip2<img src="../../images/offsite_black.png" alt=" (offsite)" /></a>. 
        Note that in some older browsers, you may need to right-click (or CTRL-click) on the link 
        to download the file.</p>
        
        <ul>
        <table border=0 cellspacing=10 cellpadding=10 id="fits">
          <tr>
            <td><a class="content" href="<%=globals.DasUrl %>datamodel/files/BOSS_PHOTOOBJ/frames/RERUN/RUN/CAMCOL/frame.html">
            Corrected Frames:</a></td>
	        <td class='l'><a class="content" href="<%=hrefsCf[0]%>">u</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[1]%>">g</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[2]%>">r</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[3]%>">i</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[4]%>">z</a></td><td>&nbsp;</td>
          </tr>
          <tr>
            <td><a class="content" href="<%=globals.DasUrl %>datamodel/files/PHOTO_REDUX/RERUN/RUN/objcs/CAMCOL/fpBIN.html">
            Binned Frames:</a></td>
	        <td class='l'><a class="content" href="<%=hrefsCf[5]%>">u</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[6]%>">g</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[7]%>">r</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[8]%>">i</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[9]%>">z</a></td><td>&nbsp;</td>
          </tr>
          <tr>
            <td><a class="content" href="<%=globals.DasUrl %>datamodel/files/PHOTO_REDUX/RERUN/RUN/objcs/CAMCOL/fpM.html">
            Mask Frames:</a></td>
	        <td class='l'><a class="content" href="<%=hrefsCf[10]%>">u</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[11]%>">g</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[12]%>">r</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[13]%>">i</a></td><td>&nbsp;</td>
	        <td class='l'><a class="content" href="<%=hrefsCf[14]%>">z</a></td><td>&nbsp;</td>
          </tr>
          <tr>
            <td><a class="content" href="<%=globals.DasUrl %>datamodel/files/PHOTO_REDUX/RERUN/RUN/objcs/CAMCOL/fpAtlas.html">
            Atlas Image Frame:</a></td>
	        <td class='l'><a class="content" href="<%=hrefsCf[15]%>">all</a></td><td>&nbsp;</td>
          </tr>
          <tr>
            <td><a class="content" href="<%=globals.DasUrl %>datamodel/files/BOSS_PHOTOOBJ/RERUN/RUN/CAMCOL/photoObj.html">
            Objects in Field:</a></td>
	        <td class='l'><a class="content" href="<%=hrefsCf[16]%>">all</a></td><td>&nbsp;</td>
          </tr>
          <tr>
            <td><b><i>Download More Images:</i></b></td>
                <td class='l' colspan='10'><a class="content"
	        href="<%=globals.DasUrl%>fields"><%=globals.Release%> Science
	        Archive Server (SAS) Image Download</a></td>
          </tr>
        </table>
        </ul>
      </td>
    </tr>
</table>
</div>
</asp:Content>
