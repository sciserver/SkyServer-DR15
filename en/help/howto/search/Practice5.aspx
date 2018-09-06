<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Practice5.aspx.cs" Inherits="SkyServer.Help.Howto.Practice5" %>
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
      <h1>Practice Using Functions</h1>
      
	  <p>Write queries to answer the astronomy questions in Practice 10 and 11. 
	  Use the <A href="../../browser/browser.aspx" target=tools>Schema 
	  Browser</a> when you need it.</p>
      
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td width="100%">
          <p><strong>Practice 10.</strong> In the field 5112-6-119, what percentage 
          of all objects detected by the SDSS are too close to the edge 
          of their fields to be trusted?</p>
          </p>
          <p><b>Hint:</b> Use two searches, one with a flag and one 
          without. Search run=5112, camcol=6, field=119. </p>
        <p><a href="javascript:showdiv('answers1')">Show Sample Solution</a></p>

        <div id="answers1" class="answers" style="display:none;">
          
<p>To find the number of objects in the field too close to the edge of their fields, 
    use the "EDGE" flag in the following query:</p>

<pre>
    select 
        count(objID)
    from 
        photoObj
    where 
        run=5112 
        and camcol=6 
        and field=119
        and (flags & dbo.fPhotoFlags('EDGE')) > 0
</pre>


<p>The query returns a count of 17.</p>

<p>To find the total number of objects in the field, use the same query without 
the flag:</p>

<pre>
    SELECT 
        count(objID)
    FROM
        photoObj
    WHERE
        run=5112
        and camcol=6 
        and field=119
</pre>

<p>This query returns a count of 670.</p>

<p>So the percentage of objects too close to the field edge to trust is 
17 / 670, or about 3%.</p>

            <p> <a href="javascript:hidediv('answers1')">Hide Sample Solution</a></p>
        </div>

          </td>
        </tr>
      </table>
      <p></p>
	  <table class=exercise width=600 cellpadding=5 cellspacing=0>
	    <tr>
	      <td>      
          <p><strong>Practice 11.</strong> Choose a galaxy cluster from SkyServer's 
          <a href="../../../tools/places/" target="tools">Famous Places</a> tool. 
          Write a query to select galaxies in the cluster, and only galaxies in 
          the cluster.</p>
          <p><b>Hint:</b> After you pick a cluster, use the <a href="../../../tools/chart/navi.aspx" target="tools">
          Navigation Tool</a> to examine the cluster. Guess which galaxies 
          belong to the cluster - you should be able to tell just by looking. 
          Click on 5-10 cluster galaxies and save them in your online notebook. 
          Open the notebook, and look for features that the cluster galaxies 
          have in common. Guess the center position and radius of 
          the galaxies. Then, write a query that uses what you have learned 
          to search for cluster galaxies.</p>                  

        <p><a href="javascript:showdiv('answers2')">Show Sample Solution</a></p>

                      <div id="answers2" class="answers" style="display:none;">
          
<p>First, select a galaxy cluster from the Famous Places 
tool and look at it in the Navigation Tool. As an example, these answers 
will use Abell 0957.</p>

<p>Galaxy clusters tend to have similar colors, or differences in 
magnitudes. Color is one of the most reliable ways to identify which 
galaxies are in a cluster. Most of the galaxies in Abell 0957 have a 
g-r color of about 0.8. So a search should consider galaxies with g-r 
of about 0.6 to 1.</p>

<p>The galaxies in Abell 0958 appear to extend about 0.15 degrees, or 
9 arcminutes. The brightest galaxy in Abell 0958 appears to have an r 
magnitude of about 13. The faintest galaxy appears to be at about r = 18.</p>

<p>Combining all these results into one query:</p>

<pre>
    SELECT 
        p.objID, p.ra, p.dec, p.u, p.g, p.r, p.i, p.z
    FROM photoObj p
    JOIN dbo.fGetNearbyObjEq(153.378,-0.85,9) n ON n.objID = p.objID
    WHERE
        p.type = 3 
        and p.r BETWEEN 13 and 18 
        and p.g-p.r BETWEEN 0.6 and 1
</pre>

<p>The query returns 46 objects. Not every galaxy is part of the cluster, but most are.</p> 

<p>Your results will be different, depending on which cluster you chose, what 
criteria you chose, and how big you thought the cluster was. The 
important thing is that you think carefully about how to search for 
galaxies in a cluster, then write a query that reflects your thinking.</p>

            <p> <a href="javascript:hidediv('answers2')">Hide Sample Solution</a></p>
        </div>
          </td>
        </tr>
      </table>
      
      <p></p>
            
      <p></p>
      <a name="answers"></a>
      <p><a href="#answers" onclick="javascript:popup('answers5.html','sidebar',500,500)">
      Answers</a></p>
      
      <h1>An Afterthought: Procedures and Constants</h1>
      
      <p>In addition to tables, views, and functions, the Schema Browser contains 
      entries for procedures and constants. <em>Procedures</em>, like functions, are 
      mini-programs that the database can execute. Unlike functions, they 
      do not output a single value; rather, they manipulate the inputs passed 
      in to them. Procedures are called with the syntax</p>
      
      <p>dbo.spProcedurename(inputs)</p>
      
      <p>Nearly all of the procedures in SkyServer are used by the web 
      server or tools - you will hardly ever use them in your queries. If 
      you ever need them, the <a href="../../browser/browser.aspx" target="tools">
      Schema Browser</a> will tell you what they do and how to use them.</p>
      
      <p><em>Constants</em> are, well, constant. They can be displayed and 
      searched just like tables can. See the <a href="../../browser/browser.aspx" target="tools">
      Schema Browser</a> for a complete description of SkyServer's constants.</p>
      
      <p>You're done! Click Next for the conclusion.</p>
      

</td></tr>
<%  ResponseAux.sqlform(0,"",url,Response); %>

    <tr>
      <td><a href="functions.aspx"><img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="conclusion.aspx"><img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
