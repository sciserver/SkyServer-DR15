<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Views.aspx.cs" Inherits="SkyServer.Help.Howto.Views" %>
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
      <h1>Views</h1>
      
	  <p>Look again at the left column of the <a href="../../browser/browser.aspx" target="tools">
	  Schema Browser</a>. You already know what a table is - a storehouse for 
	  data of the same type. But what about those other terms?</p>
	  
	  <p>A <em>view</em> is a virtual table created by combining records from 
	  real tables. The records that make up a view remain in their original 
	  tables, but they can be accessed and searched through the view.</p>
	  
	  <p>What does this mean for you? If you're a database programmer, the difference 
	  is crucial. For the rest of you, the difference is... nothing. For the 
	  purpose of searching for data, a view is a table, and a table is a view. 
	  You can search views just like tables, by listing them in the from block.</p>
	  
	  <p>In fact, many of the so-called "tables" you have been using are actually 
	  views! The specObj "table" is actually a view created from the specObjAll table, 
	  which contains both good and bad spectra. The PhotoPrimary, Star, Galaxy, 
	  and Unknown databases are all views created from the PhotoObjAll table. 
	  You've been using these views all along!</p>
	  
	  <p>Try searching the same area of sky using the SpecObjAll table and 
	  the SpecObj view, or the PhotoObjAll table and Star, Galaxy, or Unknown 
	  views. What differences do you see?</p>

	  <p>One particularly important view is the <em>SpecPhoto</em> view, which contains photometric 
	  and spectroscopic information on the same objects. Using SpecPhoto is just like doing a join 
	  between SpecObj and PhotoObj, but SpecPhoto is easier to use, and your queries will run
	  faster.</p>
	  
	  <p>When you are ready to move on, click Next to learn about functions.</p>


</td></tr>
<%  ResponseAux.sqlform(0,"",url,Response); %>
    
    <tr>
      <td><a href="practice4.aspx"><img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="functions.aspx"><img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
