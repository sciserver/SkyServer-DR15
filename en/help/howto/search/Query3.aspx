<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Query3.aspx.cs" Inherits="SkyServer.Help.Howto.Query3" %>
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
          
      <h1>Querying from multiple tables: Joining</h1>
      <p>Take another look at the <a target="tools" href="../../browser/browser.aspx">
      Schema Browser</a>. Data on the same objects are often stored in different 
      tables and/or views. For example, a galaxy's magnitudes are stored in the photoObj 
      view, its redshift in the specObj view, and the plate used to observe 
      its spectrum in the plateX table.</p>
      <p>Quite often, you will want to compare information from many 
      different tables. For example, making a Hubble Diagram to show the expansion 
      of the universe requires some measure of brightness, such as magnitude, 
      and redshift. Magnitude is in the photoObj table; redshift is in the 
      specObj table. How do you search both tables?</p>
      <p>You can search multiple tables using SQL's join syntax. You will need 
          to designate one table/view as the base table onto which other tables will be 
          temporarily joined - at this stage it doesn't matter which is the base table and 
          which table(s) are joined to it. Put the name of the base table in the FROM block 
          of the query, and give it a shorthand name to refer to it. For example, if you 
          want to use photoObj as the base table, you might say:</p>

    <p><em>FROM photoObj p</em></p>

      <p>List the other tables you want to search, one line at a time, using SQL's 
          <em>JOIN...ON</em> syntax. On each line, use the keyword <em>JOIN</em>, the name 
          of the table, a nickname for the table to be joined, and the keyword <em>ON</em>. 
          After the <em>ON</em>, specify the name of the column you want to use to do the 
          join, both in the base table and in the table you want to join. The column may 
          be called something different in the two tables, so study the Schema Browser 
          carefully. For example, so temporarily join the photoObj and specObj views, 
          you would say:
      </p>

    <p><em>FROM photoObj p<br />JOIN specObj s ON s.bestObjID = p.objID</em></p>

      <p>At this point, it doesn't matter what order the two tables appear in.</p>
 
      <p>For example, look at the following query:</p>
      
      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">            
      <tr>
      <td>
      <pre>
SELECT top 100
    x.plate, x.mjd, 
    s.fiberID, 
    p.modelMag_u, p.modelMag_g, 
    p.modelMag_r, p.modelMag_i, 
    p.modelMag_z,
    p.ra, p.dec,
    s.z, p.ObjID
FROM photoObj p
JOIN specObj s ON s.bestObjID = p.objID
JOIN plateX x ON x.plateID = s.plateID          
WHERE
    s.class = 'qso' 
    and s.zWarning = 0 
    and s.z between 0.3 and 0.4
      </pre>
      
      </td>
      </tr>
      </table>
      <a name="queryend"></a>

    <p>As this query demonstrates, you don't have to join all tables on to the base table - 
        you can join tables onto other join-ed tables as well.
    </p>

      <p>To join two tables, look for common entries - when the same column 
          appears in both tables. The columns that appear after the ON keyword, 
          connected by an equals sign, will be the names of the same column 
          in each table.</p>


	  <p>To find columns to use in joining tables, look in the 
	  <a target="tools" href="../../browser/browser.aspx">Schema Browser</a>. 
	  Find places where the same column name appears in more than one table. 
	  You can use that column in the where block to join the tables.</p>
                 
      <p>Naming tables in the SELECT and WHERE blocks &mdash; either by their 
          full name or by the nickname you specify &mdash; is important because 
          sometimes columns in different tables have the same name, yet contain 
          different data. For example, the PhotoObj table contains the right 
          ascension and declination of the object in the "ra" and "dec" columns. 
          The PlateX table also has ra and dec columns, but these are the ra 
          and dec of the telescope while it is observing a single plate, not 
          the ra and dec of an individual object on the plate. So photoObj.ra 
          and plate.ra mean totally different things!</p>

      <p>In addition to the join statements, the query above includes two 
      other commands in the where block. The command specObj.class = 'qso'
      tells the query to return quasars only, and the command 
      specObj.zWarning = 0 tells the query to return only objects for 
      which we have well-measured 
      redshifts. Again, you can add more restrictions to your query in terms 
      of colors, magnitudes, ra and dec or any number of parameters.</p>
      
      <h1>Try It!</h1>   
      
      <p>Click Submit below to run the query. If you would like, try rewriting the 
      query using one-letter nicknames for all the tables.</p>
      
      <p>Click Next to get some more practice using joins.</p>
      
	</td></tr>

<%  
	string query="SELECT top 100\n";
	query+="x.plate, x.mjd, s.fiberID, p.modelMag_u, p.modelMag_g, \n";
	query+="p.modelMag_r, p.modelMag_i, p.modelMag_z,\n"; 
	query+="p.ra, p.dec,\n"; 
	query+="s.z, p.ObjID\n";
	query+="FROM\n";
	query+="PhotoObj p\n";
    query+="JOIN specObj s ON s.bestObjID=p.objID\n";
    query+="JOIN plateX x ON x.plateID=s.plateID\n";
    query+="WHERE\n";
    query+="s.class = 'qso' AND \n"; 
	query+="s.zWarning = 0 and s.z between 0.3 and 0.4\n";
	ResponseAux.sqlform(0,query,url,Response); 
%>

    <tr>
      <td><a href="practice2.aspx">
      <img align="left" src="../../../proj/images/previous.jpg"></a> <a href="practice3.aspx">
      <img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
