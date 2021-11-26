<%@ Page Title="" Language="C#" MasterPageFile="QuasarsMaster.master" AutoEventWireup="true" CodeBehind="PhotometricRedshifts.aspx.cs" Inherits="SkyServer.Proj.Advanced.Quasars.PhotometricRedshifts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="QuasarsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Research Using Quasar Data</h1>
      <p>In the two exercises below, you will use data from 
      the query you did in the last section to learn about quasars.</p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 4.</strong> 
          In this exercise, you can explore the relationship between colors and 
          redshifts of quasars. Make a color-redshift diagram using the 
          data on 1000 quasars you found in Exercise 3. Put u-g on the x-axis 
          and redshift on the y-axis. Repeat the graph for the colors g-r, r-i, and 
          i-z.</p>

		  <p>For a tutorial in how to use Microsoft Excel to make graphs, 
		  see SkyServer's <a href="../../../help/howto/graph" target="help">Graphing and 
		  Analyzing Data</a> How-To tutorial.</p>
          
          <p>In December 2000, the SDSS collaboration published 
          a paper with graphs like the ones you made. To compare your graphs to theirs, click 
          <a target="offsite" href="https://arxiv.org/abs/astro-ph/0012449">here</a> to 
          download their paper from the Los Alamos Astrophysical Preprint Server.
          Click "Other Formats," then select "Download PDF." (You will need to download 
          Adobe Acrobat Reader to view this file. Click <a target="help" 
          href="http://www.adobe.com/products/acrobat/readstep2.html">here</a> to 
          download the program, free of charge, from Adobe's web site.)</p>
          <p>The researchers' graphs are on page 34 of their paper. You may want to 
          change the scales on your graphs to make yours look more like theirs.</td>
        </tr>
      </table>
      <p></p>
      <p>The practical application of the graphs you just created is that they 
      can be used to find the redshift of a quasar photometrically; that is, 
      using only the quasar's image.</p>
      <p>Most quasars have their redshifts determined by looking at their spectra. 
      However, the SDSS will discover so many quasars that we cannot take the spectra of 
      every quasar. We do know the colors of the quasars, and we can use the 
      colors to estimate the redshifts. Although this method is not as 
      accurate as determining redshifts from the spectra, we can find the 
      redshifts of a large number of quasars for which no spectral measurements 
      exist.</p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Exercise 5. 
          </strong> In this exercise, you will make color-color diagrams for 
          quasars. Use the spreadsheet to make a graph with u-g on the x-axis 
          and g-r on the y-axis. Make a second diagram with g-r on the x-axis 
          and r-i on the y-axis. Make a third diagram with r-i on the y-axis 
          and i-z on the x-axis. 
          Where are the very high redshift quasars on your diagrams? Where 
          are the very low redshift quasars?</p></td>
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
      <td><a href="query.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="conclusion.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
