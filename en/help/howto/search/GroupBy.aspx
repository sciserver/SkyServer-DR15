<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="GroupBy.aspx.cs" Inherits="SkyServer.Help.Howto.GroupBy" %>
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
            msg += "select class, count(z) as num_redshift\n";
            msg += "from specObj\n";
            msg += "where z BETWEEN 0.5 and 1\n";
            msg += "group by class";
        }

        if (option == 2) {
            msg += "select c.name as class, count(s.z) as num_redshift\n";
            msg += "from specObj s, class c\n";
            msg += "where s.class = c.value AND\n";
            msg += "z BETWEEN 0.5 and 1\n";
            msg += "group by c.name";
        }

        query.value = msg;
    }

    function mysubmit(cmd) {
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
      <a name="groupby"></a>
      <h1>The <i>Group By</i> Command</h1>
      
      <p>The previous query searched through the entire SpecObj table and returned the 
      number of objects between redshifts 0.5 and 1. But instead of lumping 
      all objects together, you can display results sorted by another trait. 
      You can group all results containing a given trait with SQL's 
      <em>group by</em> command. For example, you could group the results 
      of the query above to show how many of the objects between z = 0.5 
      and 1 are stars, galaxies, quasars, or other.</p>
      
      <p>To collect together all the different objects in the query above, you would use 
      the command <b>group by <code>class</code></b>. Add this command to the end 
      of the query, after the where block. Be sure to select the <code>class</code>
      column in the select block, so you can know which <code>class</code> column 
      corresponds to which result. So the new query will look like this:</p>
      
      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">      
        <tr>
          <td>
<pre>
select
    class, count(z) as num_redshift
from
    specObj
where
    z BETWEEN 0.5 AND 1
group by 
    class
</pre>
          </td>
        </tr>
      </table>
            
      <p>The group by command will work with any of the six aggregate functions. 
      The column in the group by command must be in one of the tables in the 
      from block. The column used in the group by command must be returned in the select block, either 
      by itself or as part of an aggregate function.</p>
      
           
      <h1>Try It!</h1>
      
          
    </td></tr>
    <%  

		string query = "select class, count(z) as num_redshift\n";
		query +=	"from specObj\n";
		query +=	"where z BETWEEN 0.5 and 1\n";
		query +=	"group by class\n";

        ResponseAux.sqlform(0,query,url,Response); 
    %>
    
    <tr>
      <td><a href="aggfunctions.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a> <a href="orderby.aspx">
      <img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
