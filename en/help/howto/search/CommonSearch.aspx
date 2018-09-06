<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="CommonSearch.aspx.cs" Inherits="SkyServer.Help.Howto.CommonSearch" %>
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

      <a name="top"></a>      
      <h1>Commonly Searched Columns</h1>
      <p>The Schema Browser contains complete documentation on 
      every table in the SkyServer database. But, most of the queries you 
      will write will search through only a small subset of those tables. 
      And even the commonly used tables contain many technical, esoteric 
      items - most users will search for only a few columns.</p>
      <p>Below is a list of some of the most commonly used tables (or views) and a short 
      description of them. Click on any of the table names to be taken to a list 
      of the most commonly used columns in that table. Take some time to 
      understand what these columns mean, because you will use them over 
      and over again in your queries. Click on a table (or view) name in the list 
          below to launch a popup window showing the most commonly-searched data 
          columns in that table/view.</p>
      
      <p><a href="#top" onclick="javascript:popup('photoobj.html','sidebar',650,790)">
      PhotoObj</a> - stores information about the images of 
      every object, including run, rerun, camcol, field, ra, dec, magnitudes and 
      object flags.</p>
      <p><a href="#top" 
      onclick="javascript:popup('platex.html','sidebar',650,440)">
      PlateX</a> - stores information on the aluminum plates that the SDSS 
      uses to take spectra, including their exposure times and reddening 
      information. You will need to find the Plate and MJD in this table to 
      look up an object's spectrum in the Get Spectra tool.</p>
      <p><a href="#top" 
      onclick="javascript:popup('specobj.html','sidebar',650,650)">
      SpecObj</a> - stores information on objects' spectra, 
      including redshifts and spectroscopic classifications.</p>
      
      <p>In addition, SkyServer contains several subsets of the PhotoObj table. 
      <span class=caption>PhotoPrimary</span> contains only the "best" 
      measurements of each object. Generally, it's better to use 
      PhotoPrimary rather than PhotoObj, which contains both good and bad 
      data. <span class=caption>Star</span> contains 
      only data for stars, <span class=caption>Galaxy</span> contains only 
      data for galaxies, and <span class=caption>Unknown</span> contains 
      only data for objects classified as "unknown." These subsets are actually views 
      rather than tables; you will learn the difference later in the 
      tutorial.</p>
      
      
      <p>&nbsp;</p>
      
           
      <h1>Two Other Tips</h1>
      
      <p>First, SkyServer's Query tool is limited to 90 
      seconds of search time and 100,000 results. If you want to write 
      queries that return more than 100,000 objects, you have to be clever: 
      split your query into multiple pieces. For example, if you are looking 
      for stars between ra = 0 and ra = 3, you could write two queries, 
      one from ra = 0 to ra = 1.5 and one from ra = 1.5 to ra = 3. Save 
      all the results of the queries until you have all the results you 
      want.</p>
      <p>Or, you can get around the limit 
      completely writing your query in <a target="help" href="http://casjobs.sdss.org/casjobs">
      CasJobs <img src="../../../images/new_window.png" alt=" (new window)" /></a>, 
          which has no limits on search time or number of results.</p>
      <p>If you want the query to return <i>fewer</i> results, you can add 
      the statement "top <i>n</i>" to the select block, where n is some 
      integer from 1 to 1,000. 
      For example, when you're testing to see if a query returns reasonable 
      results, you might not want to have to wade through 1,000 records. You 
      might want to have the query return 10 records instead; use "select top 10".</p>
      <p>Second, SQL is not case-sensitive, meaning capital and lowercase letters 
      are the same. The commands "select," "Select," "SELECT" will all do the same thing. 
      But, it's a good idea to use capitalization and spacing to make your queries as easy 
      as possible for other people to understand.</p>

	  <p>Click Next to learn more about how to write SQL queries.</p>
 
	</td></tr>
	
	<%  

    string query = "select ra, dec\n";
    query += "from specObj\n";
    query += "where ra BETWEEN 140 and 141 AND\n";
    query += "dec BETWEEN 20 and 21";
	
	ResponseAux.sqlform(0,query,url,Response); %>
    
    <tr>
      <td><a href="practice1.aspx"><img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="query2.aspx"><img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
