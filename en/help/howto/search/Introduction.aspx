<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Introduction.aspx.cs" Inherits="SkyServer.Help.Howto.Introduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SearchHowtoContent" runat="server">
<script type="text/javascript">
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

<h1 id="title">SQL Tutorial</h1>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h2>A Quick Introduction</h2>
      <p>Before you begin searching SkyServer, you should get a quick 
      introduction what it means to search for data. SkyServer's information on all 
      sky objects - stars, galaxies, and others - is stored in a 
      <em>database</em>, a storehouse for data. A request to a database 
      to return some information is called a 
      <em>query</em>. When you ask a database for information, you must write your query in some 
      computer language that the database can understand. SkyServer, like 
      many other databases, uses Structured Query Language (SQL). When you write a query with SQL, 
      the database searches for all <em>records</em> that meet your search criteria; 
      in the case of SkyServer, each record is the information on a single 
      observation of a single object in the sky.</p>
      <p>But you have to be careful when you write a query: since the database 
      contains hundreds of pieces of information for each of millions of objects, 
      a poorly written query could return Gigabytes of information that won't 
      help you at all. The best possible query will return all the information 
      that you need, and no information that you don't need. Writing queries is 
      an art - before you start writing, you need to think carefully about 
      what information you need.</p>
      <h2>The Database Structure</h2>
      <p>To know what information you need, you need to know exactly 
      what information the database contains. The SkyServer database is  
      divided into a series of <em>tables</em>. Each table contains 
      data of a different type. For example, all data related 
      to an object's spectrum are stored in a table called <em>specObjAll</em>. 
      All data related to an object's image properties are 
      stored in a table called <em>photoObjAll</em>. SkyServer contains many tables,  
      although most of the commonly accessed data are stored 
      in just three or four of them.</p> 
      <p>Each table contains a series of data <em>columns</em>. A column contains only 
      one type of data - for example, magnitude or sky position. Each record consists of a series 
      of columns, although some columns may be empty for some records. Some tables 
      contain only two or three columns; some contain hundreds! Knowing 
      exactly which table and which column contains the data you want can be a challenge.</p>
      
      <table align=center width=496 border=1>
        <tr>
          <td>
          <img src="images/photoprimary.jpg" align=center alt="A data table containing 11 columns and 13 rows">  
          </td>
        </tr>
        <tr>
           <td align=center><p class=caption>A very, very, very, very 
           small part of the photoPrimary table.<br>
           The full table contains more than 300 data columns and hundreds of millions of 
           records.</p></td>
         </tr>
      </table>
      
      <h2>The Schema Browser</h2>
      
      <p>A tool called the
      <a target="tools" href="../../browser/browser.aspx">
      Schema Browser <img src="../../../images/new_window.png" alt=" (new window)" /></a> 
          allows you to study all the tables and data columns, to find where 
      the data you want are located. The Schema Browser can be intimidating, but 
      it is easy to use. In the left-hand column, you can either browse through 
      various tables to find a specific column, or you can search for keywords in 
      all the column descriptions.</p>
      <p>To browse through the tables, click on "Tables" in the left-hand column. 
      (Note: some tables, like "specObj," are under "Views" instead...more on that later!) 
      A list of all tables will appear under the Tables link. Click on the name 
      of the one that you are interested in, and a list of that table's 
      columns will appear on the right.</p>
      <p>To search through all the tables to find a keyword, enter the keyword 
      in the Search box and hit Go. A list of matching table columns and descriptions will 
      appear on the right.</p>
<!--
      <p>Some of the column descriptions include a <img src="images/info.gif"> symbol.
      When you see the symbol, click on it for more information about that column.</p>
      <a name="browser"></a>      
-->
      <p>Try it now. Open the <a target="tools" href="../../browser/browser.aspx">
      Schema Browser <img src="../../../images/new_window.png" alt=" (new window)" /></a>. 
       In which table and data columns would you find the SDSS 
      run-camcol-field classification numbers for the image of a single object? 
      What about the object's type (star, galaxy, or other) as seen in its image? 
      What about the redshift of a spectrum?&nbsp;&nbsp;
      <a href="javascript:showdiv('answers1')">Show Answer</a></p>

        <div id="answers1" class="answers" style="display:none;">
            <p>The run, camcol, and field image classification numbers are stored in the 
                data columns run, camcol, and field of the <em>photoObjAll</em> table.</p>
            <p>The object type (as seen in an image) is in the type data column of the 
                photoObj table (under "Views"). The redshift of a spectrum is in the z 
                column of the <em>specObjAll</em> table (also under "Views").</p>
            <p>These columns are also available in the <em>photoObj</em> and <em>SpecObj</em> 
                views, which are versions of the photoObjAll and specObjAll tables containing 
                only the best SDSS observation of each object. photoObj and specObj are actually 
                <em>views</em>, and are available under the Views dropdown in the 
                Schema Browser.</p>
            <p> <a href="javascript:hidediv('answers1')">Hide Answer</a></p>
        </div>

      <p>Although you have looked up data in the photoObjAll and specObjAll tables, for most 
          queries you write you will not use those tables. Instead, you can use their associated 
          <em>views</em>, which contain only the best SDSS observation for each object. Views you 
          might use include:</p>

      <ul>
          <li><a href="../../browser/browser.aspx#&&history=description+PhotoObj+V" target="blank">
                photoObj <img src="../../../images/new_window.png" alt=" (new window)" /></a>: contains photometric (imaging) 
              data for only the best observation of each sky object
          </li>
          <li><a href="../../browser/browser.aspx#&&history=description+Star+V" target="blank">
                star <img src="../../../images/new_window.png" alt=" (new window)" /></a>: contains best SDSS observations for 
                stars only</li>
          <li><a href="../../browser/browser.aspx#&&history=description+Galaxy+V" target="_blank">
                galaxy <img src="../../../images/new_window.png" alt=" (new window)" /></a>: contains best SDSS observations for 
                galaxies only</li>
          <li><a href="../../browser/browser.aspx#&&history=description+SpecObj+V" target="_blank">
                specObj <img src="../../../images/new_window.png" alt=" (new window)" /></a>: contains spectroscopic data for only the 
              best observation of each sky object observed by the SDSS spectrograph</li>
      </ul>

      <p>Now that you know how to find the information you need, you're ready 
      to start querying the database for that information. Click Next to learn 
      how to write a simple query.</p>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx"><img align="left" src="../../../proj/images/previous.jpg" alt="Back"></a>
      <a href="simplequery.aspx"><img align="right" src="../../../proj/images/next.jpg" alt="Next"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
