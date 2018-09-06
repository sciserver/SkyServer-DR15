<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="radial.aspx.cs" Inherits="SkyServer.Proj.Advanced.Galaxies.Clusters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>

<h1>Using the Radial Search tool</h1>
 
      <p>Open the <a href="../../../tools/search/radial.asp" target="tools">Radial Search</a> tool. 
      You will see a screen like this:</p>

      <img src="images/radial1.jpg">   
      
      <p>For "ra" and "dec," enter the coordinates of Abell 2255: ra = 258.1292, dec = 64.0925. For 
      "radius," enter 5 (for 5 arcminutes). Click "All Entries" to have the tool return all objects near the position of Abell 2255. Request the results as 
      CSV (comma-separated value). Click Submit.</p>

      <p>Results will open in a new window. Wait for the query to finish - it should take between one and three minutes. You will get a long list of data, separated by commas. The data is information on all the objects in the region around Abell 2255. Save the file to your computer with the "Save" command in your browser. Be sure to save it as plain text rather than HTML, and give it extension ".csv".</p>

<p>Use Excel's "Import Text File" option to import the data (see SkyServer's <a href="../../../help/howto/graph/open.asp" target="help">Graphing and Analyzing Data</a> how-to tutorial to see how to import the file).</p>

<p>The spreadsheet shows 19 columns of data, and about 700 rows. The most important columns are the first, "objID," and the five columns u,g,r,i,z. You can use objID to look up an object in the 
<a href="../../../tools/explore/obj.asp" target="tools">Object Explorer</a>. You will use the 
magnitudes u,g,r,i,z to make your diagram.</p>

<p>But, before you make the color-color diagram, you need to make sure you are making a diagram for galaxies only, not stars. You need to eliminate stars from your data, focusing only on galaxies. To do that, use Excel's "Filter" tool.</p>

<h1>Finding Only Galaxies</h1>

<p>Under the Data menu, select "Filter," then "AutoFilter." Arrows will appear in the data headers, 
as shown below:</p>

<img src="images/filter1.jpg">

<p>Select the arrow next to "type," as shown in the image above. In SDSS data, type indicates whether an 
object seen in an image is a star, a galaxy, or something else. Type = 3 means a galaxy; type = 6 means 
a star. (The database uses numbers rather than words because numbers need less storage space.) Click on 
3 in the menu under "type." The arrow next to type turns blue, and so do the number labels on the 
far left. The blue means the data have been filtered - only galaxies (type = 3) appear in the data. Scroll 
through the data to verify that type = 3 for all points.</p>

<p>Calculate u-g and g-r in new columns. You are almost ready to make a color-color diagram for Abell 2255. Before you do, click the arrow next to type again, and change the setting to "All." Look through your values for u-g and g-r - you only have data for rows with type = 3. You can now make a diagram 
containing only galaxies.</p>

<p>Click the Previous button to go back to the previous page, where you will study your color-color diagram.</p>


      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="clusters.aspx">
      <img align="left" src="../../images/previous.jpg"></a> 
      <!--<a href="separator.aspx">
      <img align="right" src="../../images/next.jpg"></a>--></td>
    </tr>
  </table>
</div>
</asp:Content>
