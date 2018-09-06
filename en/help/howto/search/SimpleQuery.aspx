<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="SimpleQuery.aspx.cs" Inherits="SkyServer.Help.Howto.SimpleQuery" %>
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
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>A Simple Query</h1>
      <p>An SQL query consists of three pieces, or <em>blocks</em>: the select block, the 
      from block and the where block.</p>
      <p>The <em>select</em> block tells the database which columns of data you want 
      it to return. You must separate each column name with a comma. For 
      example, if you wanted to find the celestial coordinates right 
      ascension (ra) and declination (dec) of an object, the select 
      block might read</p>
      <p>select<br>
      ra, dec</p>
      <p>The <em>from</em> block specifies which table (or tables) you want to search.
      If you wanted to retrieve information from the specObj table, the from 
      block would read</p>
      <p>from<br>
      specObj</p>
      <p>The <em>where</em> block allows you to search for records with certain 
      characteristics. Your list of characteristics must be separated by the word 
      "AND". Suppose you wanted to limit your search to a patch 
      of sky with ra between 140 and 141 degrees <em>and</em> dec between 20 and 21
      degrees. To search only this patch of sky, your where block would read</p>
      <p>where<br>
      ra BETWEEN 140 AND 141 AND<br>
      dec BETWEEN 20 AND 21</p>
      <p>The database will return only those records that have an ra between 
      140 and 141 <i>and</i> a dec between 20 and 21.</p>
      <p>This query is shown in the query window below. Click Submit to send the 
      query to the database. Results will appear in a new window. When you see the results, 
      scroll through them to verify that all records have ra between 140 and 141 and dec 
      between 20 and 21.</p>

    
	</td></tr>
	<tr><td>
	<%
		string query = "select ra,dec\n";
		query +=	"from specObj\n";
		query +=	"where ra BETWEEN 140 and 141 AND\n";
		query +=	"dec BETWEEN 20 and 21\n";
		ResponseAux.sqlform(0,query,url,Response); 
	%>
    </td></tr>
    <tr>
      <td><a href="introduction.aspx"><img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="practice1.aspx"><img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
