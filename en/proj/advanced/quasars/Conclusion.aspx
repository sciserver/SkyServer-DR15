<%@ Page Title="" Language="C#" MasterPageFile="QuasarsMaster.master" AutoEventWireup="true" CodeBehind="Conclusion.aspx.cs" Inherits="SkyServer.Proj.Advanced.Quasars.Conclusion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="QuasarsContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Conclusion</h1>
      <p>Take another look at the query you used to get your first 1,000 quasars:</p>
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

      <p>The query you used limits the objects it returns by applying 
      one "constraint" - the query returns only objects with zconf &gt; .35. 
      Zconf is a measure of the statistical confidence level in the 
      redshift measurement. The query only returns quasars for which we 
      are more than 35% certain that the measured redshift is correct.</p>
      <p>Try modifying the query. A couple of ideas would be to change or 
      eliminate the confidence level zconf, or to add a statement in the "where" clause to 
      search for quasars less than a certain magnitude (such as u &lt; 20). Or you could try searching for various lines in the quasars' spectra.</p>
      <p><a target="tools" href="../../../tools/search/sql.aspx">Launch 
      the SQL search tool</a></p>
      <p>To learn more about how to work with SQL, see SkyServer's 
      <a href="../../../help/howto/search/" target="help">Searching for Data</a> how-to tutorial.</p>
      <p>When you are dealing with a large database such as the SDSS, you need to use tools such as the SQL Search tool 
      to find the data you want.</p>
      <table class=rchallenge width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%"><p><strong>Research Challenge. </strong>
          Modify the query slightly to obtain a different set of data. 
          For example, look at only quasars with poorly measured redshifts (set 
          zconf &lt; some number). Maybe you want to look at very red quasars 
          by setting the i and z magnitudes larger than a certain number. 
          You could also search for very blue 
          quasars using a similar technique.</p>
          <p>Think of a question about quasars that you want 
          to answer, and modify the query to get the data that will 
          let you answer that question. Analyze the data using a spreadsheet, then 
          draw conclusions about the quasars. When you finish your analysis, <a 
          href="mailto:raddick@pha.jhu.edu?subject=Quasars final challenge">E-mail us</a> 
          your queries, your results, and your conclusions. We'll look over 
          all the results we receive, and we'll put the best of them up 
          on this web site!</p>
          <p>If you need help with Structured Query Language, see 
          SkyServer's <a href="../../../help/howto/search" target="help">Searching for 
          Data</a> tutorial, or do a web search for SQL. For other 
          tutorials on SQL, see <a href="http://www.sqlcourse.com/" target="help">here</a>
          and <a href="http://www.1keydata.com/sql/sql.html" target="help">here</a>.</td>
        </tr>
      </table>
      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="photometricredshifts.aspx">
      <img align="left" src="../../images/previous.jpg"></a>
      <a href="results.aspx">
      <img align="right" src="../../images/next.jpg"></a> </td>
    </tr>
    <tr><td><p><FONT size=-3>Project designed by Robert Sparks</FONT></p></td></tr>
    <tr><td><p><FONT size=-3>Questions? Comments? Suggestions? E-mail 
    the <A href="mailto:raddick@pha.jhu.edu?subject=Feedback on Quasars Project">web designer</A>.</FONT></p></td></tr>
    
  </table>
</div>
</asp:Content>
