<%@ Page Title="" Language="C#" MasterPageFile="ObjectExplorer.Master" AutoEventWireup="true" CodeBehind="FitsSpec.aspx.cs" Inherits="SkyServer.Tools.Explore.FitsSpec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OEHead" runat="server">
    <style type="text/css">

        div.content       
            { background-color: #ffffff; }
        table.content td  
            { font-size:9pt; font-family: arial,helvetica,sans-serif; }
        .h		            
            { background-color: #b0c4de; }
        .b		            
            { background-color: #eeeeee; }
        .t		            
            { background-color: #e0e0e0; }
        .l		{background-color: #add8e6;}
        a.content		   
            { text-decoration: none; color:#000000;font-weight:bold;} 
        a.content:hover	
            { color: #000000; }
        #fits	{width:700px;position:absolute; top:10px; left:10px;}
        #infm	{position:absolute; top:14px;left:450px; z-index:2; white-space: nowrap;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OEContent" runat="server">
    <div class="content">

        <div id="fits">
        <h2>FITS Spectra (Optical)</h2>

        <p> Astronomers store their data in a generally agreed format, called
        <a class="content" href="http://heasarc.gsfc.nasa.gov/docs/heasarc/fits.html">FITS</a>. 
        The acronym FITS stands for Flexible Image Transport System.
        FITS is much more than an image format (such as JPG or GIF) and is primarily 
        designed to store scientific data sets consisting of multi-dimensional arrays 
        (1-D spectra, 2-D images or 3-D data cubes) and 2-dimensional tables containing 
        rows and columns of data. </p>
        <p>
        The low level data from the SDSS project (like spectra and our basic images,
        called corrected frames) are stored as gzip-compressed FITS files, accessible
        through a URL from our Data Archive. We have also built several functions in the
        database to compose the URLs of the FITS files directly from the object catalog.
        </p>
        <p>
        <b>NOTE: Please click on 'Download' with your <u>right</u> mouse button to 
        <u>save</u> the FITS file to your local disk, otherwise the FITS file will show 
        up as binary garbage in your browser.</b> </p>

        <p />
        <ul>
        <table border=0 cellspacing=10 cellpadding=10>
          <tr>
            <td><b>Spectrum FITS file :</b></td>
	        <td class='l'><a class="content" href="<%=hrefsSpec[0]%>">Download</a></td><td>&nbsp;</td>
          </tr>
          <tr>
            <td><b>Download more spectra from Science Archive Webapp (SAW):</b></td>
            <td class='l'><b><a class="content" href="<%=globals.DasUrl%>optical/spectrum/search"><%=globals.Release%> Optical Spectrum Search </a></td>
            <td class='l'><b><a class="content" href="<%=globals.DasUrl%>optical/plate/search"><%=globals.Release%> Optical Plate Search </a></td>
          </tr>
        </table>
        </ul>
        </div>
    </div>
</asp:Content>
