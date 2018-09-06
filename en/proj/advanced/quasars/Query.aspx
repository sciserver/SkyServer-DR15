<%@ Page Title="" Language="C#" MasterPageFile="QuasarsMaster.master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="SkyServer.Proj.Advanced.Quasars.Query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="QuasarsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>SDSS Quasars</h1>
      <p>The SDSS has found over a hundred thousand of quasars, including 26 of the 30 most 
      distant quasars ever seen. Those quasars were been found in only the 
      first few percent of the sky to be mapped!</p>
      <p>To look at the properties of large numbers of quasars, you are 
      going to use a search tool to retrieve information on a thousand 
      quasars at once. The query tool uses a programming language 
      called Structured Query Language (SQL) to 
      retrieve the data. Don't worry - the next exercise gives you 
      a sample query to get you started.</p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>      
        <tr>
          <td width="100%"><p><strong>Exercise 3. 
          </strong>Go to SkyServer's 
          <a target="tools" href="../../../tools/search/sql.aspx">
          SQL Search</a> tool. Copy the query listed below, and paste it into 
          the box (overwrite the default query). Get your results as CSV (comma-separated value). 
          Click Submit.</p>

          <table border="1" cellpadding="1" cellspacing="1" width="100%" id="AutoNumber2" bgcolor="#552255">
            <tr>
              <td width="100%"><p></p>
              <p><br>select top 1000<br> 
              objid, modelmag_u, modelmag_g, modelmag_r, modelmag_i, modelmag_z,z</p>
              <p>from<br>
              SpecPhoto</p>
              <p>where<br>
              class='QSO'</p>
              <p></p>
              </td>
            </tr>
          </table>
          <p>Results will open in a new window. Wait for the query to finish - it should take less 
          than a minute. You will get a a long list of data, separated by commas. The data is information 
          on 1,000 quasars. Save the file to your computer with the "Save" command in your browser. 
          Be sure to save it as plain text rather than HTML.</p>

          <p>Import the file into a graphing program such as Excel. If you don't have a graphing program, 
          you can download a free program such as <a href="http://www.openoffice.org" target="offsite">Open Office</a>.</p>
          
          <p>Use Excel's "Import Text File" option, or a similar option in another program, to import the data (see 
          SkyServer's <a href="../../../help/howto/graph/open.aspx" target="help">Graphing and 
          Analyzing Data</a> how-to tutorial to see how to import the file). Look at the results 
          in Excel.</p>

          <p>The first column tells you the SDSS Object ID of the quasar. You can use this number to 
          look the quasar up in SkyServer's <a href="../../../tools/explore/obj.aspx" target="tools">
          Object Explorer</a>. The next five columns give the SDSS's five magnitudes (u,g,r,i,z) for 
          each quasar. The last column gives the quasar's redshift.</p>

          <p>If you want more than 1,000 quasars, remove the "top 1000" from the query, then run 
          it again. It will take longer to run, maybe 20 to 30 minutes, but it will return more 
          than 60,000 quasars.</p></td>
        </tr>
      </table>
      <p></p>
      <p>You can analyze these quasars in many different ways using these magnitudes and redshifts. 
      You can also study the quasars' spectra with the <a href="../../../tools/explore/obj.aspx" 
      target="tools">Object Explorer</a>. The two projects on the next page let you do 
      quasar analysis that was only recently published by the SDSS collaboration. 
      The projects are a little advanced, but they reflect research that professional astronomers 
      are doing right now!<p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="power.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="photometricredshifts.aspx"><img align="right" src="../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
