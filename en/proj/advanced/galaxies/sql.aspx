<%@ Page Title="" Language="C#" MasterPageFile="GalaxiesMaster.master" AutoEventWireup="true" CodeBehind="sql.aspx.cs" Inherits="SkyServer.Proj.Advanced.Galaxies.Clusters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="GalaxiesContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <h1>Using the SQL Search Tool</h1>
      
      <p>Open the <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> tool. 
      You will see a textbox with a submit button below. Copy the following query and paste it into the 
      textbox (deleting what is already there). Click "CSV" to request results as a CSV 
      (comma-separated value) file. Click Submit. Results will appear in a new window. Wait for 
      all the results to appear - it should take between one and three minuteql for the query to run.</p>

          <table border="1" cellpadding="1" cellspacing="1" width="100%" id="AutoNumber2" bgcolor="#552255">
            <tr>
              <td width="100%"><p></p>
              <p><br>select<br> 
              g.objid, g.ra, g.dec, g.u, g.g, g.r, g.i, g.z</p>
              <p>from<br>
              galaxy g</p>
               <p>join dbo.fGetNearbyObjEq(258.1292,64.0925,5) n<br />
                   on n.objid = g.objid</p>
              <p></p>
              </td>
            </tr>
          </table>

      <p>When the query is finished, save the results to your computer using the "Save" command in 
      your browser. Be sure to save the file as plain text (not HTML), and to give the file 
      extension .csv.</p>

      <p>Use Excel's "Import Text File" option to open the results in Excel (see SkyServer's 
      <a href="../../../help/howto/graph/open.aspx" target="tools">Graphing and Analyzing Data</a> 
      tutorial to learn how to import). Look at the results.</p>

      <p>The first column, "objid," is the SDSS's Object ID for each galaxy. You can use this number to 
      look up each galaxy in the <a href="../../../tools/explore/obj.aspx" target="tools">Object 
      Explorer</a>. The next two numbers are the galaxy's ra and dec. The next five numbers are the 
      magnitudes u,g,r,i,z, which you will use to make your diagram.</p>

      <a name="query"></a>
      <p>Now that you have your data, click the Previous button to go back to the previous page, 
      where you will make your color-color diagram.<!-- If you are curious about the query you entered, click 
      <a href="#query" onclick="window.open('query.asp','sidebar','width=500,height=600,resizeable,scrollbars');">this 
      link to learn more about it</a>.--></p>

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
