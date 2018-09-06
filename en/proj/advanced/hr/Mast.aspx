<%@ Page Title="" Language="C#" MasterPageFile="HrMaster.master" AutoEventWireup="true" CodeBehind="Mast.aspx.cs" Inherits="SkyServer.Proj.Advanced.HR.Mast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HrContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      
      <h1>Searching for Data</h1>
      
      <p>You can see that searching the data by hand is tedious and time 
      consuming. To make a good H-R diagram for a globular cluster, you might need a 
      couple of hundred stars or more. To make a diagram with hundreds of stars, you 
      would need some tool to search through SDSS data automatically.</p>
      <a name="mast"></a>
      <p>Fortunately, SkyServer includes several tools to search through SDSS data. The simplest 
      is the <a href="../../../tools/search/radial.aspx" target="tools">Radial Search</a> tool, 
      which finds all objects in a region of sky. You can search more precisely with the 
      <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> tool, which uses a 
      programming language called SQL to make requests, or <em>queries</em>, from the SDSS database.</p>
      
      
      <a name="using"></a>
      <h1>Searching for Stars in Palomar 5</h1>
      <p>You can use either of the search tools to find stars near Palomar 5. You can use the radial 
      search tool to find all objects, then use Excel to pare the list down to the stars. Or you can 
      use the SQL Search tool to look for stars, and only stars.</p>

      <p>Click one of the links below to learn one of the two methods for finding stars. Your teacher 
      might tell you which one he or she wants you to use. Either link will bring up a new page in 
      this window.</p>

      <a name="options"></a>
      <p>Use the <a href="radial.aspx">Radial Search</a> tool and Excel</p>
      <p>Use the <a href="sql.aspx">SQL Search</a> tool</p>

      <p>Regardless of which method you chose, you should now have a table of data for all stars in 
      the region around Palomar 5.</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><strong>Exercise 7.
          </strong> Using the data from your search, create an H-R diagram for Pal 
          5. Graph r on the y-axis and g-r on the x-axis. Remember 
          to reverse the values on the y-axis so brighter stars are at the top. 
          You may also want to adjust the min and max values of the axes to 
          give a better view of the H-R diagram.</td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><strong>Question 12.</strong> 
          Can you see the main sequence on this diagram? Can you see 
          any of the giants and supergiants? If so, identify these groups 
          of stars on your diagram.</td>
        </tr>
      </table>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="globularcluster.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="conclusion.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
