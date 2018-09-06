<%@ Page Title="Radial Search" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="radial.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.Radial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
        <h1>Using the Radial Search Tool</h1>
          
          <p>Open the <a href="../../../tools/search/radial.aspx" target="_blank">Radial Search 
              <img src="../../../images/new_window.png" alt="(opens in new window)"  /></a> tool. You will see a screen like this:</p>

          <img src="images/radial1.jpg" alt="A screenshot of the radial search tool" />

          <p>For "ra" and "dec," enter the coordinates of Palomar 5: ra = 229.0128, dec = -0.1082. For "radius," enter 3 (the published radius of 
          Palomar 5 is 3 arcminutes). Click "All Entries" to have the tool return all objects near Palomar 5. Request the results as 
          CSV (comma-separated value). Click Submit.</p>
          
          <p>Results will open in a new window. Wait for the query to finish &mdash; it should take less than a minute. You will get a long list 
          of data, separated by commas. The data is information on all the objects in the region around Palomar 5. Save the file to your computer with 
          the "Save" command in your browser. Be sure to save it as plain text rather than HTML.</p>

          <p>Use Excel's "Import Text File" option to import the data (see SkyServer's <a href="../../../help/howto/graph/open.aspx" target="_blank">Graphing and 
          Analyzing Data <img src="../../../images/new_window.png" alt="(opens in new window)" /></a> how-to tutorial to see how to import the file). 
          Be sure to start the import at the row with the data labels (usually row 6). Look at the results in Excel.</p>
          
          <p>The spreadsheet shows 19 columns of data, and thousands of rows. The most important columns are the first, "objID," and the five columns 
          u,g,r,i,z. You can use objID to look up an object in the 
          <a href="../../../tools/explore/obj.aspx" target="_blank">Explore <img src="../../../images/new_window.png" alt="(opens in new window)" /></a> tool. 
          You will use the magnitudes u,g,r,i,z to make your H-R diagram.</p>

          <p>But, before you make an H-R diagram, you need to make sure you are making a diagram for stars only, not galaxies. You need to eliminate 
          galaxies from your data, focusing only on stars. To do that, use Excel's "Filter" tool.</p>

          <h1>Finding Only Stars</h1>

          <p>Under the Data menu, select "Filter," then "AutoFilter." Arrows will appear in the data headers, as shown below:</p>

          <img src="images/filter1.jpg" alt="A screenshot of Excel showing how to use the Filter tool" />

          <p>Select the arrow next to "type," as shown in the image above. In SDSS data, type indicates whether an object seen in an image is a star, a galaxy, 
          or something else. Type = 3 means a galaxy; type = 6 means a star. (The database uses numbers rather than words because numbers need less storage space.) 
          Click on 6 in the menu under "type." The arrow next to type turns blue, and so do the number labels on the far left. The blue means the data have been 
          filtered &mdash; only stars (type = 6) appear in the data. Scroll through the data to verify that type = 6 for all points.</p>

          <p>Calculate g-r, and copy r into a new column. You are almost ready to make an H-R diagram for Palomar 5. Before you do, click the arrow next to type again, 
          and change the setting to "All." Look through your values for g-r and r - you only have data for rows with type = 6. You can now make an H-R diagram 
          containing only stars.</p>

          <p>Click the Previous button to go back to the previous page, where you will study your H-R diagram.</p>

      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="mast.aspx"><img align="left" src="../../images/previous.jpg" alt="Previous page" /></a>
      </td>
    </tr>
  </table>
</div>
</asp:Content>