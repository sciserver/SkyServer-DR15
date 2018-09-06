<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Practice2.aspx.cs" Inherits="SkyServer.Help.Howto.Practice2" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SearchHowtoContent" runat="server">
<script>
    function popup(filename, target, w, h) {
        var link = filename;
        var w = window.open(link, target, 'width=' + w + ',height=' + h + ',resizeable,scrollbars');
        w.focus();
    }
    function showdiv(layer) {
        document.getElementById(layer).style.display = "block";
    }

    function hidediv(layer) {
        document.getElementById(layer).style.display = "none";
    }
</script>
<div id="title">SQL Tutorial</div>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>More Practice Queries</h1>
      
      <p>Write queries to answer the astronomy questions in Practice 3 and 4. 
      Use the <a target="tools" href="../../browser/browser.aspx">Schema 
      Browser</a> when you need it.</p>
      
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%">
          <p><strong>Practice 3. </strong>What are the reddest galaxies in the 
          area of sky near ra = 141?</p>
          <p>Write a query to search for galaxies between ra = 140.9
          and ra = 141.1 brighter than <br>g = 18.0 
          for which u - g &gt; 2.2. Retrieve the Object ID, ra, 
          dec, and the five final magnitudes.</p>

        <p><a href="javascript:showdiv('answers1')">Show Sample Solution</a></p>

        <div id="answers1" class="answers" style="display:none;">
          
            <p>A query that accomplishes this task is:</p>
<pre>
    select
        objID, ra, dec, u, g, r, i, z
    from
        galaxy
    where
        ra BETWEEN 140.9 and 141.1 
        AND g < 18.0 
        AND u - g > 2.2
</pre>

            <p> <a href="javascript:hidediv('answers1')">Hide Sample Solution</a></p>
        </div>
          </td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td>
          <p><strong>Practice 4.</strong> What are the highest-redshift 
          quasars in the SDSS database?</p>
          <p>Write a query to search for quasars for which we have 
          obtained spectra (search the specObj table) with  
          redshifts greater than 4.5 and good measurements (zWarning = 0). 
          Retrieve each quasar's Photo ID, ra, dec, and redshift.</p>       

                      <p><a href="javascript:showdiv('answers2')">Show Sample Solution</a></p>

        <div id="answers2" class="answers" style="display:none;">
          
            <p>A query that accomplishes this task is:</p>
<pre>
    select
        bestObjID, ra, dec, z
    from
        specObj
    where
        class='qso' 
        AND z > 4.5 
        AND zWarning = 0
</pre>

            <p> <a href="javascript:hidediv('answers2')">Hide Sample Solution</a></p>
        </div>

        </td>  
        </tr>
      </table>
               

	</td></tr>

	<%  ResponseAux.sqlform(0,"",url,Response); %>
   
    <tr>
      <td><a href="query2.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a> <a href="query3.aspx">
      <img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
