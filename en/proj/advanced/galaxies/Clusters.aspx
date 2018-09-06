<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="Clusters.aspx.cs" Inherits="SkyServer.Proj.Advanced.Galaxies.Clusters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Galaxy Clusters</h1>
      <table align=right width=260 height=260 border=1>
        <tr>
          <td><img src="images/abbell2255.jpg"></td>
        </tr>
        <tr>
          <td align=center><p class=caption>Abell 2255</p></td>
        </tr>
      </table>

      <p>&nbsp;</p>

      <p>A good way to study the properties of many galaxies is by 
      looking at a galaxy cluster. There are many galaxy clusters in the 
      SDSS data, which may contain hundreds or even thousands of galaxies.</p>
      <p>The picture at the right shows a famous cluster called Abell 2255.
      The cluster is named after George Abell, an American astronomer who published 
      a catalog of galaxy clusters in 1958. In this project, you will study the 
      galaxies that make up Abell 2255.</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      
      <a name="ex3"></a>
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td width="100%" height="219"><p><strong>Exercise 3. 
          </strong> Use the Navigation tool to look up a few galaxies in Abell 2255. 
          Open the tool, then enter the RA and Dec coordinates of Abell 2255: RA = 258.1292, 
          Dec = 64.0925. Click "Get Image." Click Zoom Out (the minus sign) once or twice, and you 
          should be able to see the whole cluster. Click on any galaxy, and its basic data 
          should appear in the right-hand frame. Click "Add to Notes" to save the galaxy's 
          data in your online notebook.</p>
          <p>Think about how you know which galaxies are part of Abell 2255, 
          and which are just other galaxies at different distances in the same 
          part of the sky. Click on 15-20 galaxies that you think are part of 
          the cluster, both spirals and ellipticals, and save them in your 
          notebook. You can save the entire notebook to your computer by choosing CSV as the output type 
          and clicking "Export." You can then open the resulting CSV file in Excel.</p>
          
          <p>How are these galaxies similar? How are they different?</p>
          <p><a href="../../../tools/chart/navi.aspx" target="tools">
          Launch the Navigation tool</a></td>
        </tr>
      </table>
      
      <p></p>
      
      <a name="colorstag"></a>
      <p>If you have completed the <a href="#colorstag" onclick="window.open('../color/');">
      Color</a> project, you are now ready to use Abell 2255 to learn about the 
      nature of galaxies.</p>
      
      <a name="using"></a>
      <h1>Using Galaxy Clusters in Astronomy</h1>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Exercise 4:</strong> Make a color-color diagram for the 
          galaxies you saved in Exercise 3. You can make the diagram in Excel. Put u-g on the x-axis and g-r on the 
          y-axis. Do you notice any patterns?</p>
          
        </td>
        </tr>
      </table>
      
      <p>In Exercise 4, you looked at only a few galaxies. To draw convincing 
      conclusions about galaxies, you need to examine hundreds or thousands 
      of galaxies - far more than you could look up individually. Therefore, 
      in the next exercise, you will use a search tool to automatically look 
      up information on <i>all</i> the galaxies in Abell 2255.</p>      

      <p>You may use one of two tools: SkyServer's <a href="../../../tools/search/radial.aspx" 
      target="tools">Radial Search</a> or <a href="../../../tools/search/sql.aspx" target="tools">
      SQL Search</a>. The Radial Search tool will return all objects near Abell 2255; you can then 
      use Excel to select only galaxies.</p>

      <p>Your teacher may tell you which one to use, or you could pick one yourself. 
      Click one of the links below to learn how to use the tool of your choice. A new page will 
      open in this window. When you are done, you will return to this page to make and analyze your 
      color-color diagram.</p>

      <a name="options"></a>
      <p>Use the <a href="radial.aspx">Radial Search</a> tool and Excel</p>

      <p>Use the <a href="sql.aspx">SQL Search</a> tool</p>
     
      <a name="ex5"></a>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td><p><strong>Exercise 5:</strong> 
          Use the data you collected to make a color-color diagram of Abell 2255 with 
          u-g on the x-axis and g-r on the y-axis. To learn more about how to make the 
          graph using Microsoft Excel, see SkyServer's <a href="../../../help/howto/graph/"           target="help">Graphing and Analyzing Data</a> how-to tutorial.</p>
          </td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><strong>Question 4:</strong> 
          Where on the color-color diagram are the bluer galaxies? 
          Where on the diagram are the redder galaxies?</p></td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>      
          <td><p><strong>Question 5:</strong> Look at your graph along with the 
          graph you made in Exercise 4. Which part of 
          the graph corresponds to the early (elliptical) galaxies? Which 
          part corresponds to the late (spiral) galaxies?<br> Note: Irregular 
          galaxies are difficult to classify by colors and may be scattered on 
          your diagram. But only 3% of observed galaxies are irregular, so this 
          should not be a problem.</p></td>
        </tr>
      </table>
      
      <a name="astropaper"></a>
      <p>SDSS astronomers recently analyzed over 147,000 galaxies and created a diagram similar to the one you made in Exercise 5. 
      If you are interested in some challenging reading, you can download the 
      paper they published 
      <a href="#astropaper" onclick="window.open('http://xxx.lanl.gov/abs/astro-ph/0107201');">
      here</a> (to see the paper as a .pdf file, click Other Formats, then Download PDF).</p>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="characteristics.aspx">
      <img align="left" src="../../images/previous.jpg"></a> 
      <a href="separator.aspx">
      <img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
