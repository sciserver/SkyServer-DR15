<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="AggFunctions.aspx.cs" Inherits="SkyServer.Help.Howto.AggFunctions" %>
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
            msg += "select\n";
            msg += "min(dec) as min_dec, max(dec) as max_dec, ";
            msg += "avg(dec) as avg_dec\n";
            msg += "from photoObj\n";
            msg += "where run=5112";
        }

        if (option == 2) {
            msg += "select count(z) as num_redshift\n";
            msg += "from specObj\n";
            msg += "where z BETWEEN 0.5 and 1\n";
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
      <h1>Aggregate Functions</h1>
      <p>All the queries you have written so far return every 
      record that matches the criteria in the where block. But with SQL, you can 
      also return statistical summaries of all matching records. For 
      example, look at the query below:</p>
      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">      
        <tr>
          <td>
<pre>
select
    min(dec) as min_dec, max(dec) as max_dec, avg(dec) as avg_dec
from
    photoObj
where
    run = 5112
</pre>
          </td>
        </tr>
      </table>
      <p>The query retrieves the minimum, maximum, and average declination 
      of one of the SDSS's equatorial stripes (the area of the survey near the 
      celestial equator, dec = 0). The commands min(x), max(x), and avg(x) 
      are <em>aggregate functions</em>, named because they operate on an 
      aggregate, or sum, of all the matching records. SQL's aggregate functions 
      are listed in the table below:</p>
      
      <table border="1" cellpadding="2" cellspacing="2" width="75%" id="AutoNumber1" height="93">
        <tr>
          <td width="42%" height="18">
          <p class=caption>Aggregate Function</p></td>
          <td width="58%" height="18"><p class=caption>Returns...</p></td>
        </tr>
        <tr>
          <td width="42%" height="17"><p>min(x)</p></td>
          <td width="58%" height="17"><p>the smallest value in column x</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>max(x)</p></td>
          <td width="58%" height="18"><p>the largest value in column x</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>avg(x)</p></td>
          <td width="58%" height="18"><p>the average value in column x</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>stdev(x)</p></td>
          <td width="58%" height="18"><p>the standard deviation of the values in column x</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>count(x)</p></td>
          <td width="58%" height="18"><p>the number of values in column x</p></td>
        </tr>
        <tr>
          <td width="42%" height="18"><p>count(*)</p></td>
          <td width="58%" height="18"><p>the number of records in the table being searched</p></td>
        </tr>  
      </table>
      
 
	<p>The difference between count(x) and count(*) can appear confusing, but they 
	are usually used in different situations. Use count(*) to find out the number 
	of records in a table - how big the table is. The command "select count(*) 
	from specObj" returns 608801 - meaning there are 608,801 separate 
	records in the specObj table. The command "select count(*) from PhotoPrimary" 
	returns 180,235,043.</p>
	
	<p>Unlike count(*), count(x) is usually used with a characteristic listed 
	in the where block. For example, the query below returns the number of 
	records in the specObj table that have redshift between 0.5 and 1: 14,759. 
	So the number of objects with redshift between 0.5 and 1 found by count(x) 
	is much less than the total number of objects in specObj, found by count(*).</p>

      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">      
        <tr>
          <td>
<pre>
select
    count(z) as num_redshift
from
    specObj
where
    z BETWEEN 0.5 AND 1
</pre>
          </td>
        </tr>
      </table>
           
      <h1>Try It!</h1>
      
      <p>Try pressing the buttons "Query 1" and "Query 2" below. These 
      buttons will make the two queries above (in the purple boxes) appear in the 
      query window. Press Submit to execute the queries. Do you get what you 
      expected? Do the results seem reasonable to you?</p>
      <p>Click Next when you are ready to move on.</p>
    

	</td></tr>
	<%  ResponseAux.sqlform(2,"",url,Response); %>
    
    <tr>
      <td><a href="practice3.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a> <a href="groupby.aspx">
      <img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
