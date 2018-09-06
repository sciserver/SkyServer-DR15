<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Query2.aspx.cs" Inherits="SkyServer.Help.Howto.Query2" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SearchHowtoContent" runat="server">
<script>

    function popup(filename, target, w, h) {
        var link = filename;
        var w = window.open(link, target, 'width=' + w + ',height=' + h + ',resizeable,scrollbars');
        w.focus();
    }

    function setDefaultQuery(query, option) {

        /*
        This function allows the user to select from two different default 
        queries that will appear in the query window. The user can then 
        modify either default query. This capability is useful for the 
        SQL tutorial - users can modify pre-existing queries, and have their 
        choice of which query they want to modify.

        Inputs:		query - the query to be entered; usually the "cmd" object

        option - the choice of the query. The options must be 
        hard-coded for each query option, inside the if statements
        below.

        Jordan Raddick		9/27/02
        */
        query.value = "";
        msg = "";

        if (option == 1) {
            msg += "select top 10 z,ra,dec,bestObjID\n";
            msg += "from specObj\n";
            msg += "where class = 'galaxy' AND\n";
            msg += "z > 0.3 AND\n";
            msg += "zWarning = 0";
        }

        if (option == 2) {
            msg += "select top 10 z,ra,dec,bestObjID\n";
            msg += "from specObj\n";
            msg += "where (class = 'galaxy' or class = 'qso') AND\n";
            msg += "z > 0.3 AND\n";
            msg += "zWarning = 0";
        }

        if (option == 3) {
            msg += "select top 10 ra,dec,modelMag_u,modelMag_g,modelMag_r,\n";
            msg += "modelMag_i,modelMag_z,objID\n";
            msg += "from photoObj\n";
            msg += "where type = 6 AND\n";
            msg += "modelmag_u-modelmag_r < .5";
        }

        query.value = msg;
    }

    selectedquery = new Object();
    msg = "";

</script>
<div id="title">SQL Tutorial</div>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>More Sample Queries</h1>
      <p>Look at the following query:</p>
      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">      
        <tr>
          <td>
            <pre>
select top 10
    z, ra, dec, bestObjID
from
    specObj
where
    class = 'galaxy' 
    and z &gt; 0.3 
    and zWarning = 0
            </pre>

          </td>
        </tr>
      </table>
      <p>
      
      The SELECT and FROM blocks tell the database to look in the
      specObj table (which contains spectroscopic information) and return
      the redshift (z), the right ascension, the declination, and
      the (final, or "best") object ID. The WHERE block tells the
      database to look only at galaxies with redshifts above 0.3 and no
      known problems with the redshift determination (zWarning = 0).</p>

	  <h1>Logical Operators</h1>

	  <p>
      
      In this query, the word <em>AND</em> appears between all the characteristics in the 
	  where block. The query includes three characteristics - matching objects 
	  must be galaxies, they must have redshift &gt; 0.3, and there must be
      no warnings about the redshift determination. All three of these characteristics must be 
	  met by a given record for the search to return that record.
      
      </p>

	  <p>AND is just one of three <em>logical operators</em> used by SQL; the 
	  others are <em>OR</em> and <EM>NOT</em>. The meanings of the three 
	  logical operators are given in the table below:</p>

      <table border="1" cellpadding="1" cellspacing="1" width="55%" id="AutoNumber1" height="93">
        <tr>
          <td width="42%" height="18"><p class="caption">Logical Operator</p></td>
          <td width="58%" height="18"><p class="caption">Meaning</p></td>
        </tr>
        <tr>
          <td width="42%" height="17"><p><b>AND</b></p></td>
          <td width="58%" height="17"><p>all characteristics met</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p><b>OR</b></p></td>
          <td width="58%" height="18"><p>at least one characteristic met</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p><b>NOT</b></p></td>
          <td width="58%" height="18"><p>characteristic not met</p></td>
        </tr>
      </table>

<p>You can combine the logical operators using parentheses. For example, for 
the characteristics A, B, and C, A AND (B OR C) means that either 
characteristics B or C, as well as characteristic A, must be met for records 
to match. What does A AND (NOT B) mean?</p>

<p>The query below is like the first query except that it will return both 
galaxies and quasars. The OR statement in 
the where block causes the query to return both.</p>

      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">      
        <tr>
          <td>
            <pre>
select top 10 
    z, ra, dec, bestObjID
from
    specObj
where
    (class = 'galaxy' or class = 'qso')
    and z &gt; 0.3 
    and zWarning = 0
            </pre>
          </td>
        </tr>
      </table>
      
      <a name="math"></a>
      <h1>Mathematical and Conditional Operators</h1>
      
      <p>SQL includes a variety of <em>mathematical operators</em> that perform 
      math functions in a query. You can use multiplication, division, addition and subtraction. SQL 
      uses the same symbols for these operators that most other computer languages 
      use: +&nbsp;for addition, -&nbsp;for subtraction, *&nbsp;for multiplication, and /&nbsp;for 
      division. Other mathematical operators include COS(x), which returns the cosine 
      of column x, or SQRT(x), which returns the square root of column x. 
      Here is a <a href="https://msdn.microsoft.com/en-us/library/ms177516.aspx">
      complete list <img src="../../../images/offsite.png" alt=" (new window)" /></a> of SQL's mathematical operators.</p>
      <p>You can also use the <em>conditional operators</em> summarized below.</p>
      <table border="1" cellpadding="1" cellspacing="1" width="55%" id="AutoNumber1" height="93">
        <tr>
          <td width="42%" height="18"><p class=caption>Conditional</p></td>
          <td width="58%" height="18"><p class=caption>Meaning</p></td>
        </tr>
        <tr>
          <td width="42%" height="17"><p>=</p></td>
          <td width="58%" height="17"><p>equal to</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>&gt;</p></td>
          <td width="58%" height="18"><p>greater 
          than</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>&lt;</p></td>
          <td width="58%" height="18"><p>less 
          than</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>&gt;=
          </p></td>
          <td width="58%" height="18"><p>greater 
          than or equal to</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>&lt;=
          </p></td>
          <td width="58%" height="18"><p>less 
          than or equal to</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>&lt;&gt;</p></td>
          <td width="58%" height="18"><p>not 
          equal to</p></td>
        </tr>
      </table>
      <p>Let's say you wanted to find a list of very blue 
      stars. In astronomy, color is defined by the differences in 
      magnitudes (see the 
          <a href="../../../proj/advanced/color" target=tools>SkyServer Color Project</a> 
      for more information). In the SDSS's system of measurement, 
      blue stars have u-g < 0.5. So to find blue stars, you might write a 
      query like the following:</p>
      
      <table border="1" cellpadding="7" width=600 cellspacing="0" bgcolor="#552255">
      <tr>
      <td>
      <pre>
select top 10
    ra, dec, modelMag_u, modelMag_g, modelMag_r, modelMag_i, modelMag_z, objID
from
    photoObj
where
    type = 6 
    and modelMag_u - modelMag_g < 0.5
      </pre>
      </td>
      </tr>
      </table>      
      
      <p>This query returns the first 10 photometric objects 
      (in the PhotoObj table) that are labeled as stars (denoted by type = 6)
      where u - g &lt; 0.5. You could further refine your query
      by searching for a certain ra and dec. Or you could limit 
      yourself to bright stars by specifying a magnitude limit such as 
      modelMag_r &lt; 17.</p>
      
      <h1>Try It!</h1>
      
      <p>Try pressing the buttons "Query 1," "Query 2," and "Query 3" below. These 
      buttons will make the three queries above (in the purple boxes) appear in the 
      query window. Press Submit to execute the queries. 
      Write down a few of the ObjIDs, then use SkyServer's 
      <a href="../../../tools/explore/obj.aspx" target="tools">Explore <img src="../../../images/new_window.png" alt=" (new window)" /></a>
      tool to examine the objects. Do they have the characteristics 
      you requested in the where block? What kinds of astronomy questions 
      do you think you could answer by studying these objects?</p>

      <p>Click Next to get some more practice in writing SQL queries.</p>
    

	</td></tr>

	<%  ResponseAux.sqlform(3,"",url,Response); %>

    <tr>
      <td><a href="commonsearch.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a> <a href="practice2.aspx">
      <img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
