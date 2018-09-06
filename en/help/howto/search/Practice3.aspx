<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Practice3.aspx.cs" Inherits="SkyServer.Help.Howto.Practice3" %>
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
<div id="transp">  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
           <p></p>
      <h1>Practice Using Joins</h1>
      
	  <p>Write queries to answer the astronomy questions in Practice 5 and 6. 
	  Use the <A href="../../browser/browser.aspx" target=tools>Schema 
	  Browser</a> when you need it.</p>
      
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%">
          <p><strong>Practice 5.</strong> How can you look up image data, plates and spectra 
          of moderately bright nearby galaxies?</p>
          <p>Write a query to find 100 
          galaxies for which we have spectra that have g magnitude between 17 and 17.4 and 
          redshift less than 0.05. 
          For each galaxy, retrieve the object ID, the five magnitudes (u,g,r,i,z), the redshift, 
          the plate/MJD number, and the fiber number.</p>         

        <p><a href="javascript:showdiv('answers1')">Show Sample Solution</a></p>

        <div id="answers1" class="answers" style="display:none;">
          
            <p>A query that accomplishes this task is:</p>
<pre>
 SELECT top 100
        gal.objID, gal.u, gal.g,
        gal.r, gal.i, gal.z, s.z,
        x.plate, x.mjd, s.fiberID
    FROM galaxy gal
    JOIN specObj s on s.bestObjID = gal.objID
    JOIN plateX x on x.plateID = s.plateID
    WHERE
        s.class='galaxy' 
        AND gal.g BETWEEN 17 and 17.4 
        AND s.z < 0.05
</pre>

            <p> <a href="javascript:hidediv('answers1')">Hide Sample Solution</a></p>
        </div>

          </td>
        </tr>
      </table>
      <p>
      </p>

	</td></tr>      
	

	<%  ResponseAux.sqlform(0,"",url,Response); %>
    
    <tr>
      <td><a href="query3.aspx"><img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="aggfunctions.aspx"><img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
