<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="ColorColorDiagram.aspx.cs" Inherits="SkyServer.Proj.Color.ColorColorDiagram" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Color-Color Diagrams</h1>
      <table border="1" cellpadding="0" cellspacing="0" width="44%" id="AutoNumber1" align="right">
        <tr>
          <td width="100%">
          <A onclick="window.open('images/hypothetical_big.jpg','sidebar','width=615,height=415,resizeable,scrollbars');" href="#top">
          <IMG src="images/hypothetical.jpg"></A></td>
        </tr>
        <tr>
          <td width="100%">
          <p class="caption" align="center">Click on the image 
            for a larger view</p>       </td>
        </tr>
      </table>
      <p>Astronomers study the temperatures of other stars using a graph 
      called a color-color diagram. To make a color-color diagram, find two colors of a single star; for 
      example, g-r and 
      u-g. Then, make a graph with u-g on the x-axis and g-r on the y-axis. The 
      star you found will plot into a point on the diagram. Find 
      colors of several other stars and plot them on the same graph. The image 
      at the right shows what a hypothetical color-color diagram might look 
      like.</p>
      <p>&nbsp;</p>
      <table class=exercise width=600 cellpadding=5 cellspacing=0>          
        <tr>
          <td width="100%"><p><strong>Explore 5</strong>. 
          Use SkyServer's Object Explorer to find the stars with the following 
          object IDs in the SDSS database. Click on one of the Object IDs to open the 
	  Object Explorer. Write down each object's ID and 
          its magnitudes through SDSS's five filters - they are the 
          quantities u, g, r, i, and z in the second row on the right of the 
          object's image.</p>
          <p>Record your data in <a href="workbooks/explore5.xls">this workbook</a>.</p>
          <div align="center">
            <center>
            <table cellPadding="3" border="1" cellspacing="0" bgcolor="#006400">
              <tr>
                <td align="middle"><p>Object ID</p></td>
                <td align="middle"><p>ra</p></td>
                <td align="middle"><p>dec</p></td>
              </tr>
	          <tr>	          
                <td align="middle" width="158">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237655130384631215','tools');" href="#expl6">
                1237655130384631215</A></td>
                <td align="middle" width="64">
                <p>261.53089</p></td>
                <td align="middle" width="64">
                <p>27.8252</p></td>
              </tr>     			
              <tr>
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237659326573642860','tools');" href="#expl6">
                1237659326573642860</A></td>
                <td align="middle"><p>259.45503</p></td>
                <td align="middle"><p>26.13354</p></td>
              </tr>		
              <tr>             
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237663783128006843','tools');" href="#expl6">
                1237663783128006843</A></td>
                <td align="middle"><p>10.01782</p></td>
                <td align="middle"><p>-0.75441</p></td>
              </tr>
              <tr>       
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237663784211054802','tools');" href="#expl6">
                1237663784211054802</A></td>
                <td align="middle"><p>31.16766</p></td>
                <td align="middle"><p>0.16188</p></td>
              </tr>
              <tr>       
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237648720144367845','tools');" href="#expl6">
                1237648720144367845</A></td>
                <td align="middle"><p>151.18504</p></td>
                <td align="middle"><p>-0.92994</p></td>
              </tr>
              <tr>  
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237648702968430736','tools');" href="#expl6">
                1237648702968430736</A></td>
                <td align="middle"><p>187.87919</p></td>
                <td align="middle"><p>-1.08739</p></td>
              </tr>
              <tr>  
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237648704042893633','tools');" href="#expl6">
                1237648704042893633</A></td>
                <td align="middle"><p>189.45609</p></td>
                <td align="middle"><p>-0.29485</p></td>
              </tr>
              <tr>  
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237659896710562048','tools');" href="#expl6">
                1237659896710562048</A></td>
                <td align="middle"><p>262.90111</p></td>
                <td align="middle"><p>57.66249</p></td>
              </tr>
              <tr>
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237663783142359239','tools');" href="#expl6">
                1237663783142359239</A></td>
                <td align="middle"><p>42.6732</p></td>
                <td align="middle"><p>-0.75043</p></td>
              </tr>
              <tr>
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237648720689496156','tools');" href="#expl6">
                1237648720689496156</A></td>
                <td align="middle"><p>169.97091</p></td>
                <td align="middle"><p>-0.53913</p></td>
              </tr>
              <tr>        
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237655503501722501','tools');" href="#expl6">
                1237655503501722501</A></td>
                <td align="middle"><p>261.36639</p></td>
                <td align="middle"><p>27.56075</p></td>
              </tr>
              <tr>
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237648720715186525','tools');" href="#expl6">
                1237648720715186525</A></td>
                <td align="middle"><p>228.71353</p></td>
                <td align="middle"><p>-0.4823</p></td>
              </tr>
              <tr>   
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237648704582058231','tools');" href="#expl6">
				1237648704582058231</A></td>
                <td align="middle"><p>194.75972</p></td>
                <td align="middle"><p>0.1813</p></td>
              </tr>
              <tr>
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237648704049184997','tools');" href="#expl6">
                1237648704049184997</A></td>
                <td align="middle"><p>203.88511</p></td>
                <td align="middle"><p>-0.32011</p></td>
              </tr>
              <tr>
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237657191447527658','tools');" href="#expl6">
                1237657191447527658</A></td>
                <td align="middle"><p>12.51927</p></td>
                <td align="middle"><p>0.39023</p></td>
              </tr>
              <tr>
                <td align="middle">
                <A onclick="window.open('../../../tools/explore/obj.aspx?id=1237648721785717058','tools');" href="#expl6">
                1237648721785717058</A></td>
                <td align="middle"><p>221.42084</p></td>
                <td align="middle"><p>0.32477</p></td>
              </tr>                          
            </table>
            </center>
          </div>
          <p></p>
          <p>
          <A onclick="window.open('../../../tools/explore/obj.aspx','tools');" href="#expl6">
          Launch the Object Explorer</A></p>
          <a href="workbooks/explore5.xls">Download workbook</a>
          <p>Open a spreadsheet program such as Excel. Enter all the data you 
          just collected. Find the g-r, r-i, u-g, and i-z colors of 
          each of the 16 stars in the above list. Make a graph for the 
          16 stars with g-r on the x-axis and r-i on the y-axis.</p>
          <p>If you need help with using Excel, see SkyServer's <A 
          href="../../../help/howto/graph/" target="help">Graphing and Analyzing Data</A> tutorial.</p>
	  </td>
        </tr>
      </table>
      <p></p>
      <table class=question width=600 cellpadding=5 cellspacing=0>    
        <tr>
          <td width="100%"><p><b>Question 3.
          </b>Where on your diagram are the hotter stars? Where are the 
          cooler stars? How do you know?</p></td>
        </tr>
      </table>
      <p></p>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><A href="observedspectra.aspx"><img align="left" src="../../images/previous.jpg"></A>
      <A href="thermalsources.aspx">
      <img align="right" src="../../images/next.jpg"></A></td>
    </tr>
  </table>
</div>
</asp:Content>
