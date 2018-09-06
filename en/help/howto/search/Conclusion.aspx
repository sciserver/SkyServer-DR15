<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Conclusion.aspx.cs" Inherits="SkyServer.Help.Howto.Conclusion" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SearchHowtoContent" runat="server">
<script>
    function popup(filename, target, w, h) {
        var link = filename;
        var w = window.open(link, target, 'width=' + w + ',height=' + h + ',resizeable,scrollbars');
        w.focus();
    }
</script>
<div id="title">SQL Tutorial</div>
<div id="transp">  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
           <p></p>
      <h1>Congratulations!</h1>
      
	  <p>You've worked hard to get here, but you've done it - you've finished Level 1 of 
	  SkyServer's SQL tutorial. You now know enough to search SkyServer's 
	  massive database for just the data you need. Happy searching!</p>
      
      <p>For more examples of SQL queries, see the <a href="../../docs/realquery.aspx">
      Sample SQL Queries</a> page. That page contains many queries that were written by 
      SkyServer users (mostly scientists) to answer interesting science questions.</p>
      
      <p>For more information about using SQL with SkyServer, including advice on how 
      to make your queries run faster, see <a href="../../docs/sql_help.aspx">Using SQL 
      with SkyServer</a>.</p>
      
      <p>Here are a few challenge questions that will give you more practice with SQL. With everything you 
      now know, you should be able to write SQL queries to answer these 
      questions.</p>
      
	  <table class=rchallenge width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%">
          <p><strong>Challenge 1.</strong> What percentage of galaxies 
          have spectral redshifts measured? What percentage have photometric redshifts 
          taken? What are the advantages of using photometric redshift? 
          Try to compare photometric and spectral redshift; how accurate 
          are photometric redshifts?</p>
          
          <p><strong>Challenge 2.</strong> What are the limits in ra 
          and dec of stripes 42 and 43, two of the SDSS's diagonal stripes?</p>
          
          <p><strong>Challenge 3.</strong> Look at colors and spectra 
          of stars, and find stars consistent with white dwarfs. Create a 
          list of white dwarfs in the SDSS database.</p>
          
          <p><strong>Challenge 4.</strong> What are the largest galaxies 
          in the SDSS, in terms of size?<br>
          HINT: Look at surface brightness and ellipticity.</p>
          
          
          <p><strong>Challenge 5.</strong> Find all objects with spectra 
          classified as unknown.</p>
          
          <p><strong>Challenge 6.</strong> Find the broad absorption line (BAL) 
          quasars in the SDSS database. At what redshifts are most BAL 
          quasars found?</p>
          
          <p><strong>Challenge 7.</strong> Find variable stars in the 
          SDSS (stars imaged more than once whose magnitudes changed by more 
          than 0.1 between observations). How variable are the stars?</p>
          </td>
        </tr>
      </table>
      <p></p>


</td></tr>
<%  ResponseAux.sqlform(0,"",url,Response); %>
      

  <tr>
      <td><a href="practice5.aspx"><img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="../../../"><img align="right" src="../../../proj/images/home.gif"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
