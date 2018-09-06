<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Practice4.aspx.cs" Inherits="SkyServer.Help.Howto.Practice4" %>
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
      <h1>Practice Using Aggregate Functions, Group By, and Order By</h1>
      
	  <p>Write queries to answer the astronomy questions in Practice 7, 8, and 9. 
	  Use the <A href="../../browser/browser.aspx" target=tools>Schema 
	  Browser</a> when you need it. Many of these questions can be answered in multiple 
          ways; the Sample Solutions give just one way of solving it.
	  </p>
      
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%">
          <p><strong>Practice 7.</strong> What are the northernmost and southernmost 
	  objects with spectra measured by the SDSS?</p> 
              
        <p><a href="javascript:showdiv('answers1')">Show Sample Solution</a></p>

        <div id="answers1" class="answers" style="display:none;">
          
            <p>A query that accomplishes this task is:</p>

<pre>
    SELECT 
        min(dec),max(dec)
    FROM
        specObj
</pre>        


<p>In SDSS Data Release 13, the northernmost object (maximum declination) is at dec = 84.852144; the southernmost object 
(minimum declination) at dec = -19.702714</p>

            <p> <a href="javascript:hidediv('answers1')">Hide Sample Solution</a></p>
        </div>
                                    
          </td>
        </tr>
      </table>
      <p></p>
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>
	    <tr>
	      <td>      
          <p><strong>Practice 8.</strong> What is the redshift of the nearest galaxy 
          whose spectrum was measured by the SDSS with high confidence (zWarning=0)? 
          Use the equation</p>
          <p>cz = H<sub>0</sub>d</p>
          <p>to find the distance to the galaxy in light-years. The speed of 
          light, c, is 1 light-year per year. The constant H<sub>0</sub>, called 
          the Hubble constant, is about 70 km/s/Mpc, or <br>7.11 x 10<sup>-11</sup> / yr.</p>
          <p>Compare the distance you found to the distances to the Andromeda 
          Galaxy (2 million light-years) and the Whirlpool Galaxy (37 million 
          light-years). Does the distance you found seem reasonable?</p>

                      <p><a href="javascript:showdiv('answers2')">Show Sample Solution</a></p>

        <div id="answers2" class="answers" style="display:none;">

        <p>To find the galaxy with the smallest redshift, use a query like the following:</p>          

<pre>
    SELECT top 1
        p.objID, s.z as redshift, p.u, p.r, p.g, p.i, p.z
    FROM photoObj p
    JOIN specObj s ON s.bestObjID = p.objID
    WHERE 
        s.class = 'galaxy'
        and s.z > 0 
        and p.objID <> 0 
        and s.zWarning = 0
    ORDER BY s.z
</pre>


<p>The query returns <a href="../../../tools/explore/summary.aspx?id=0x112d14c220880060&spec=0x28e84d919a006800&apid=apogee.n.s.s3.4128.2M13102744+1826172">
    ObjID = 1237662666425827520</a> at z = 4.44 x 10<sup>-7</sup>. 
    Using the equation cz = H<sub>0</sub>d, the galaxy is at a 
    distance of about 800,000 light-years. Comparing the distance 
    to this galaxy to the Andromeda and Whirlpool Galaxies, 
    the distance seems reasonable.</p> 


            <p> <a href="javascript:hidediv('answers2')">Hide Sample Solution</a></p>
        </div>
	      </td>
                  
          </td>
        </tr>
      </table>
      
      <p></p>
      
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>
	    <tr>
	      <td>      
          <p><strong>Practice 9.</strong> What field has galaxies with 
          the highest average redshifts in run=5112, camcol=1?</p>
          <p>Be sure you are searching fields (as run-camcol-field) for 
          galaxies. Also look at how many spectrally measured galaxies 
          are in the field - make sure you don't pick a field with only one or two 
          galaxies! Also, note that this query will probably take a long time to 
          execute.</p>

                      <p><a href="javascript:showdiv('answers3')">Show Sample Solution</a></p>

        <div id="answers3" class="answers" style="display:none;">

<pre>
    SELECT 
        p.run, p.camcol, p.field, count(s.z) as count, avg(s.z) as average
    FROM photoObj p
    JOIN specObj s ON s.bestObjID = p.objID
    WHERE 
        s.class = 'galaxy'
        and p.run = 5112 
        and camcol = 1 
    GROUP BY 
        p.run,p.camcol,p.field
    ORDER BY
        avg(s.z) desc
</pre>
</font></p>

<p>The field in run 5112 camcol 1 with the highest average redshift 
    is field 5112-1-369. It includes three spectrally measured galaxies 
    with average redshifts of about 0.68.</p>



            <p> <a href="javascript:hidediv('answers3')">Hide Sample Solution</a></p>
        </div>

	      </td>
                  
          
        </tr>
      </table>
      
      <p></p>

      <p>Notice that these practice questions have gotten more difficult, and 
      are more like the questions that astronomers really ask in their 
      research. You're getting better in your searches!</p>


</td></tr>
<%  ResponseAux.sqlform(0,"",url,Response); %>

    <tr>
      <td><a href="orderby.aspx"><img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="views.aspx"><img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
