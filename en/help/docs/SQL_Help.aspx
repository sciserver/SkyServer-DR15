<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="SQL_Help.aspx.cs" Inherits="SkyServer.Help.Docs.SQL_Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">SQL in SkyServer</div>
<div id="pdflink">
  <a href="swf/sql_help.swf" target="text" onmouseover="this.T_WIDTH=320;this.T_BGCOLOR='#FFFFFF';return escape('Get text as Flash paper document (opens in new window)')">
     <img src="../../../images/swf_icon.jpg" alt="Get text as Flash paper document" />
  </a>
  &nbsp;&nbsp;&nbsp;  
  <a href="pdf/sql_help.pdf" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
  </a>

</div>

<div id="transp">

<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td bgcolor="black">

<!--<h1><center>An Introduction to SQL</center></h1>-->
<p></p>

<p>
<b>SQL</b> is the <em><b>S</b>tructured <b>Q</b>uery <b>L</b>anguage</em>, 
a standard means of asking for data from databases, and is used to query the 
<a href="../default.aspx">Catalog Archive Server (CAS)</a>. This page provides 
a brief overview of SQL. <a href="realquery.aspx">Query examples</a> are also 
available, with comments, as well as a page of <a href="links.aspx">links</a> 
to more detailed off-site documentation. </p>

<ul>
<li><a href="#databasic">Database Fundamentals</a></li>
<li><a href="#querybasic">Query Fundamentals</a></li>
<li><a href="#logic">Simple Logical/Mathematical Operations</a></li>
<li><a href="#flags">Querying Bit Flags</a></li>
<li><a href="#clean">Clean Photometry</a> <b>**IMPORTANT!**</b></li>
<li><a href="#invalid">Excluding Invalid Data Values</a></li>
<li><a href="#precision">Changing Precision of Query Output</a></li>
<li><a href="#joins">Joins: Querying With Multiple Tables</a></li>
<li><a href="#queryoutput">Manipulating Query Output: Using <b>distinct, group by, order by, etc.</b></a></li>
<li><a href="#optquery">Optimizing Queries</a> <b>**IMPORTANT!**</b></li>
<li><a href="realquery.aspx">Example Queries</a></li>
</ul>

<a name="databasic"></a>
<br>
<h3><u>Database Fundamentals</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>
<p>
The CAS provides access to SDSS-III catalog data that is stored in a
relational databse managment system (DBMS) for data integrity and access
speed.  The data is organized into tables in a relational database.  The
SkyServer is the Web portal to the CAS databases and allows you to
submit SQL queries to extract the data that you need from these
databases.  However, you do not usually need to specify which database
your query is run on, since the SkyServer is configured by default to
submit your queries to a particular database.  This site is configured
to submit your queries to the <b><%=globals.Database%></b> database, which contains the
best data and most recent processing for the entire released sky area. 
<p>
The <%=globals.Database%> database contains a large number of tables, some of which contain photometric measurements (such as PhotoObj), spectroscopic measurements (such as SpecObj), or information about the observing conditions (Field) or survey geometry(TileBoundary). See the <a href="../docs/intro.aspx#datamodel">data model page</a> for more details.</p>

<p>In addition to the tables, we have defined <b>Views</b>, which can be thought of as virtual tables and are subsets or combinations of the data stored in the tables. Views are queried the same way Tables are; they exist just to make your life easier. For instance, the view <b>Galaxy</b> can be used to get photometric data on objects we classify as galaxies, without having to specify the classification in your query.<br><p>
Both the Skyserver and CasJobs interfaces have a <b>Schema Browser</b>. It shows you all of the available databases, the tables in each database, and the quantities stored in each column of the tables.
</p>

<p>Finally, we have created a variety of <b>functions</b> and <b>stored procedures</b> which let you easily perform some common operations. Usually, their names are prefixed by <em>f</em> or <em>sp</em>, like in <em>fPhotoStatus</em> or <em>spGetFiberList</em>. The full list of functions and store procedures is found in the Schema Browser. Note that some functions are <em>scalar-valued</em>, meaning that they return a single value, while others (such as the commonly used <b>dbo.fGetNearbyObjEq</b>, are <em>table-valued</em>; they actually return a table of data, and not a single number. This is important when interpreting the returned data and performing <a href="#joins">joins</a>.
</p>
<b>Please note the caution about using function calls as noted in the <a
href="#optquery">Optimizing Queries</a> section when attempting queries over
that return a large number of objects.</b>
<p>

<a name="querybasic"></a>
<br>
<h3><u>Query Fundamentals</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>


<p>Now that you have an overview of the database structure, how can you actually get data out? You can either used one of the webform-based tools
on the <a href="<%=url%>/tools/search/searchhome.aspx">Data/Search</a> page, or you can choose to write your own query using SQL 
using the <a href="<%=url%>/tools/search/sql.aspx">SQL Search</a> tool. Running a SQL query is the most direct and powerful way to
interact with the database. The following is a brief introduction to writing SkyServer SQL queries. You can view other help pages 
like <a href="<%=url%>/help/cooking/">Cooking With Sloan</a> and <a href="<%=url%>/help/howto/search/">SQL Tutorial</a> for additional help
on writing SQL queries in SkyServer.
<br>
The most basic query consists of three parts:</p>
<ol>
<li>A <b>SELECT</b> clause, which specifies the parameters you wish to retrieve;
<li>A <b>FROM</b> clause, which specifies the database tables you want to extract the data from;
<li>A <b>WHERE</b> clause, which specifies the limitations/predicates you want to place on the extracted data.
</ol>

<p>
The <b>WHERE</b> clause is not necessary if you want to retrieve parameters of all objects in a specified table, but this typically will be an overwhelming amount of data!</p>

<p>Note that the query language is insensitive to splitting the query over many lines. It is also <em><b>not</b></em> case sensitive. To make queries more readable, it is common practice to write the distinct query clauses on separate lines. The <em>Sample Queries</em> button on the CasJobs Query page provides a variety of samples, ordered in complexity. For instance, to obtain the list of unique <a href="glossary.aspx#field">Fields</a> that have been loaded into the database, we use:</p>
<pre>
SELECT FieldID
FROM Field
</pre>
<p>You can just copy and paste this (or any other) query into the <a href="<%=url%>/tools/search/sql.aspx">SQL Search window of SkyServer</a>, and press submit, or into the <a href="<%=globals.CasJobs%>">CasJobs</a> query window, and press the submit button.<br><p>
If we want to retrieve multiple parameters from the database, we separate them with commas:</p>
<pre>
SELECT ra,dec 
FROM Galaxy
</pre>

<p>Of course, the parameters you request must be included in the table(s) you are querying! Now, let's say we want magnitudes of all bright galaxies. We will need to specify a magnitude range to do this:</p>
<pre>
SELECT u,g,r,i,z
FROM Galaxy
WHERE r<12 and r>0
</pre>
<p>Here, we have used the <b>WHERE</b> clause to provide a magnitude range. The <b>and</b> operator is used to require that multiple limits be met. This leads us to...
</p>

<a name="logic"></a>
<br>
<h3><u>Simple Logical and Mathematical Operators</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>



<p>Not only can we place limits on individual parameters, we can place multiple limits using logical operators, as well as place limits on the results of mathematical operations on multiple parameters. We may also retrieve results that are logical joins of multiple queries. Here we list the <a href="#logical">logical</a>, <a href="#comparison">comparison</a>, and <a href="#mathematical">mathematical</a> operators.</p>

<a name="logical"></a>
<p>
The LOGICAL operators are <b>AND</b>,<b>OR</b>,<b>NOT</b>; they work as follows:</p>
<TABLE BORDER="1" CELLSPACING="0" CELLPADDING="4">
<TR><TH><TT><I>a</I></TT></TH><TH><TT><I>b</I></TT></TH><TH><TT><I>a</I></TT> AND <TT><I>b</I></TT></TH><TH><TT><I>a</I></TT> OR <TT><I>b</I></TT></TH></TR><TR><TD>TRUE</TD><TD>TRUE</TD><TD>TRUE</TD><TD>TRUE</TD></TR>
<TR><TD>TRUE</TD><TD>FALSE</TD><TD>FALSE</TD><TD>TRUE</TD></TR>
<TR><TD>TRUE</TD><TD>NULL</TD><TD>NULL</TD><TD>TRUE</TD></TR>
<TR><TD>FALSE</TD><TD>FALSE</TD><TD>FALSE</TD><TD>FALSE</TD></TR>
<TR><TD>FALSE</TD><TD>NULL</TD><TD>FALSE</TD><TD>NULL</TD></TR>
<TR><TD>NULL</TD><TD>NULL</TD><TD>NULL</TD><TD>NULL</TD></TR>
</TABLE>

<a name="comparison"></a>
<br clear="all">

<p>When comparing values, you will use the COMPARISON operators:</p>

<TABLE BORDER="1" CELLSPACING="0" CELLPADDING="4"
<TR><TH>Operator</TH><TH>Description</TH></TR>
<TR><TD> <TT CLASS="LITERAL">&#60;</TT> </TD><TD>less than</TD></TR>
<TR><TD> <TT CLASS="LITERAL">&#62;</TT> </TD><TD>greater than</TD></TR>
<TR><TD> <TT CLASS="LITERAL">&#60;=</TT> </TD><TD>less than or equal to</TD></TR>
<TR><TD> <TT CLASS="LITERAL">&#62;=</TT> </TD><TD>greater than or equal to</TD></TR>
<TR><TD> <TT CLASS="LITERAL">=</TT> </TD><TD>equal</TD></TR>
<TR><TD> <TT CLASS="LITERAL">&#60;&#62;</TT> or <TT CLASS="LITERAL">!=</TT> </TD><TD>not equal</TD></TR>
</TABLE>
<br clear="all">

<p>In addition to the comparison operators, the special <b>BETWEEN</b> construct is available.<br> 
<b><em>a</em> BETWEEN <em>x</em> AND <em>y</em></b> is equivalent to
<b><em> a</em> &gt;= <em>x</em> AND <em>a</em> &lt;= <em>y</em></b></p>

<p>Similarly, <br>
<b> <em>a</em> NOT BETWEEN <em>x</em> AND <em>y</em></b> is equivalent to
<b> <em>a</em> < <em>x</em> OR <em>a</em> > <em>y</em></b>
</p>

<a name="mathematical"></a>
<p>
Finally, the MATHEMATICAL operators (both numeric and bitwise) are:</p>

<TABLE BORDER="1" CELLSPACING="0" CELLPADDING="4">
<TR><TH ALIGN="LEFT" VALIGN="TOP">Name</TH><TH ALIGN="LEFT" VALIGN="TOP">Description</TH><TH  VALIGN="TOP">Example</TH><TH  VALIGN="TOP">Result</TH></TR>
<TR><TD> <TT CLASS="LITERAL">+</TT> </TD><TD>Addition</TD><TD>2 + 3</TD><TD>5</TD></TR>
<TR><TD> <TT CLASS="LITERAL">-</TT> </TD><TD>Subtraction</TD><TD>2 - 3</TD><TD>-1</TD></TR>
<TR><TD> <TT CLASS="LITERAL">*</TT> </TD><TD>Multiplication</TD><TD>2 * 3</TD><TD>6</TD></TR>
<TR><TD> <TT CLASS="LITERAL">/</TT> </TD><TD>Division </TD><TD>4 / 2</TD><TD>2</TD></TR>
<TR><TD> <TT CLASS="LITERAL">%</TT> </TD><TD>Modulo (remainder)</TD><TD>5 % 4</TD><TD>1</TD></TR>
<TR><TD> <TT CLASS="LITERAL">POWER</TT> </TD><TD>Exponentiation</TD><TD>POWER (2.0,3.0)</TD><TD>8.0</TD></TR>
<TR><TD> <TT CLASS="LITERAL">SQRT</TT> </TD><TD>Square root</TD><TD>SQRT (25.0)</TD><TD>5.0</TD></TR>
<TR><TD> <TT CLASS="LITERAL">ABS</TT> </TD><TD>Absolute value</TD><TD>ABS (-5.0)</TD><TD>5.0</TD></TR>
<TR><TD> <TT CLASS="LITERAL">&#38;</TT> </TD><TD>Bitwise AND</TD><TD>91 &#38; 15<br>01011011 &#38; 00001111</TD><TD>11<br>00001011</TD></TR>
<TR><TD> <TT CLASS="LITERAL">|</TT> </TD><TD>Bitwise OR</TD><TD>32 | 3<br>00100000 | 00000011</TD><TD>35<br>00100011</TD></TR>
<TR><TD> <TT CLASS="LITERAL">^</TT> </TD><TD>Bitwise XOR</TD><TD>17 # 5<br>00010001 # 00000101</TD><TD>20<br>00010100</TD></TR>
<TR><TD> <TT CLASS="LITERAL">~</TT> </TD><TD>Bitwise NOT</TD><TD>~1</TD><TD>-2</TD></TR>
<TR><TD> <TT CLASS="LITERAL">AVG</TT> </TD><TD>Average</TD><TD>AVG(ModelMag_r)</TD><TD></TD></TR>
<TR><TD> <TT CLASS="LITERAL">MIN</TT> </TD><TD>Minimum</TD><TD>MIN(ModelMag_r)</TD><TD></TD></TR>
<TR><TD> <TT CLASS="LITERAL">MAX</TT> </TD><TD>Maximum</TD><TD>MAX(ModelMag_r)</TD><TD></TD></TR>
<TR><TD> <TT CLASS="LITERAL">LOG</TT> </TD><TD>Natural Logarithm</TD><TD>LOG(petroMag_r)</TD><TD></TD></TR>
<TR><TD> <TT CLASS="LITERAL">LOG10</TT> </TD><TD>Base-10 Logarithm</TD><TD>LOG10(petroMag_r)</TD><TD></TD></TR>
<TR><TD> <TT CLASS="LITERAL">EXP</TT> </TD><TD>Exponential Value (<i>e</i><sup>x</sup>)</TD><TD>EXP(2.5)</TD><TD>12.182494</TD></TR>
</TABLE>
<br clear="all">

<p>In addition, the usual mathematical and trigonometric functions are available in SQL, such as COS, SIN, TAN, ACOS, etc..
</p>

<a name="flags"></a>
<br>
<h3><u>Querying Bit Flags</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>


<p>
Several SDSS tables contain bit-encoded flags to indicate various types of
information about the object or quantity in question (e.g., the
PhotoObjAll table and the PhotoTag view each have the <b>flags</b> column, SpecObj has
<b>zWarning</b> and various targeting flags etc.).  

<p>One of the most important uses of bit flags is to indicate why an object was 
targeted for spectroscopy. A list of spectroscopic target flags is available on the
<a href="<%=globals.SdssUrl%>spectro/targets.php">Spectroscopic Target Flags</a> page.</p>

This section describes how you can test 
for flag values in your query.  For sample queries that demonstrate the use of
flags, see the <a href="<%=url%>/help/docs/realquery.aspx#starflag"> Using
flags</a>, <a href="<%=url%>/help/docs/realquery.aspx#diamlim"> Diameter limited sample</a>, 
<a href="<%=url%>/help/docs/realquery.aspx#lrg"> LRG sample</a>, <a href="<%=url%>/help/docs/realquery.aspx#cleanStars"> 
Clean photometry with flags - Stars</a>, and <a href="<%=url%>/help/docs/realquery.aspx#cleanGals"> Clean photometry with flags
- Galaxies</a> sample queries for examples on how to use flags.

<h4>Checking a single flag
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h4>


<p>
To return rows for which the flag is set, the basic syntax for the constraint
is: 
<dd> (<i>flag-column</i> & <i>bitmask</i>) > 0 <br>
and to return rows for which the flag is not set:
<dd> (<i>flag-column</i> & <i>bitmask</i>) = 0 <br>
where <i>bitmask</i> is the binary value in which the bit corresponding to the flag
is 1 and all other bits are 0.  You can use the flag functions provided by the
SkyServer (listed in <a href="<%=url%>/help/browser/browser.aspx">Schema
Browser</a>) to get the bitmask for a given flag,
but if you are scanning a large fraction of a large table like PhotoObj, you
are better off not making a function call for each row, and in that case you
should first get the actual binary value of the bitmask first and substitute
that instead.  This is described in the <a href="#functions"> Using dbo
functions in your query</a> subsection of the <a href="#optquery">Optimizing
Queries</a> section below.
<p>
For example, to select objects for which the BLENDED flag is set in PhotoTag,
you would use a query like:

<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT top 10 objid, flags FROM PhotoTag
WHERE flags & dbo.fPhotoFlags('BLENDED') > 0
</pre>
</td></tr></table>
<p>
and to select only objects for which the flag is NOT set, use
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT top 10 objid, flags FROM PhotoTag
WHERE flags & dbo.fPhotoFlags('BLENDED') = 0 
</pre>
</td></tr></table>

<h4>Checking multiple flags
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h4>


To test if multiple flags are set, you can combine the values by adding them
and then testing the result.
<p>
To select objects for which <u>all</u> of several flags are set, generate the
combined bitmask by adding the individual flag bitmasks, then compare the
result of ANDing the combined bitmask with the flag column with the combined
bitmask itself, e.g.,
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT top 10 objid, flags FROM PhotoTag
WHERE 
    ( flags & (dbo.fPhotoFlags('NODEBLEND')
               + dbo.fPhotoFlags('BINNED1')
	       + dbo.fPhotoFlags('BINNED2')) ) 
	= ( dbo.fPhotoFlags('NODEBLEND')
            + dbo.fPhotoFlags('BINNED1')
	    + dbo.fPhotoFlags('BINNED2') )
</pre>
</td></tr></table>
<p>
To select objects for which <u>at least one</u> of several flags is set, you
just need to check that ANDing the combined bitmask with the flag column
returns a non-zero result, e.g.,
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT top 10 objid, flags FROM PhotoTag
WHERE 
    ( flags & (dbo.fPhotoFlags('NODEBLEND')
               + dbo.fPhotoFlags('BINNED1')
               + dbo.fPhotoFlags('BINNED2')) ) > 0
</pre>
</td></tr></table>
<p>
To select objects for which <u>none</u> of several flags is set, the
result of ANDing the flag column with the combined bitmask must be 0, e.g.,
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT top 10 objid, flags FROM PhotoTag
WHERE 
    ( flags & (dbo.fPhotoFlags('NODEBLEND')
               + dbo.fPhotoFlags('BINNED1')
               + dbo.fPhotoFlags('BINNED2')) ) = 0
</pre>
</td></tr></table>
<p>
As mentioned above, if you are running a query that is expected to match a large number of rows (millions), it is better
to first obtain the binary bitmask resulting from the multiple flag arithmetic and using that single bitmask instead of
repeated function calls to the flag functions, as described in the <a href="#functions"> Using dbo
functions in your query</a> subsection of the <a href="#optquery">Optimizing Queries</a> section below.


<a name="clean"></a>
<br>
<h3><u>Clean Photometry</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>


<p>
The SDSS photo pipeline sets a number of flags that indicate the quality of the photometry for a given object in the catalog.
If you desire objects with only clean photometry for science, you should be aware that you need to filter out unwanted objects
yourself in your query.  This is not done automatically for you (e.g. with a view of the PhotoObjAll table).  The main reason
is that the flag constraints that are required for this filtering often impose a significant performance penalty on your query
</a>.
<p>
There is a single up or down flag that is available in the PhotoObjAll table (and its views) called "clean" that is
set to 1 if the photometry meets our definition of good photometry, and the use of this shorthand flag is illustrated
in the <a href="realquery.aspx#clean">Clean Photometry</a> sample query. This is meant to provide a simple way to select
objects with clean photometry. However, if you do not trust this or you want to be more specific and use the
individual photo flags to select objects that meet your criteria for "clean photometry", this is illustrated in two other
sample queries: the <a href="<%=url%>/help/docs/realquery.aspx#cleanStars"> Clean photometry with flags - Stars</a>, and 
the <a href="<%=url%>/help/docs/realquery.aspx#cleanGals"> Clean photometry with flags - Galaxies</a> sample queries.

<a name="invalid"></a>
<br>
<h3><u>Excluding Invalid Data Values</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>


<p>
As mentioned in the <a href="<%=url%>/sdss/edrpaper">EDR Paper</a>, the database designates quantities that are not calculated for a 
particular object in a table with special values, as follows:
<ul>
	<li>The value of a quantity that has not been calculated is set to <b>-9999</b>.</li>
	<li>The value of an error that has not been calculated is set to <b>-1000</b>.</li>
</ul>
To exclude such invalid values from your query result, you should include constraints in your WHERE clause explicity to filter them
out, e.g.
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT ra,dec,u,err_u FROM PhotoObj
WHERE 
	ra BETWEEN 180 AND 181
	AND dec BETWEEN -0.5 AND 0.5
	AND u BETWEEN -9999 AND 20.0 	-- or "u > -9999 AND u < 20.0", 
					-- instead of just "u < 20.0"
	AND err_u BETWEEN -1000 AND 0.1	-- or err_u > -1000 AND err_u < 0.1, 
					-- instead of just "err_u < 0.1"
</pre>
</td></tr></table>
</p>

<a name="precision"></a>
<br>
<h3><u>Changing Precision of Query Output</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>


<p>
Use the <b>STR(<i>column</i>,<i>n</i>,<i>d</i>)</b> SQL construct (where <i>n</i> is the total number
of digits and <i>d</i> is the number of decimal places) to set the precision of the column that your query requests.  The
SkyServer returns values with a default precision that is set for each data type, and this may not
be enough for columns like ra, dec etc.  See the <a href="<%=url%>/help/docs/realquery.aspx#nbrrun">Selected neighbors in run</a> or
the <a href="<%=url%>/help/docs/realquery.aspx#qcomplete">Uniform Quasar Sample</a> sample queries for examples of how to use
STR.
</p>

<a name="joins"></a>
<br>
<h3><u>Joins: Querying With Multiple Tables</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>



<p>You may wish to obtain quantities from multiple tables, or place
constraints on quantities in one table while obtaining measurements from
another. For instance, you may want magnitudes (from PhotoObj) from all
objects spectroscopically identified (SpecObj) as galaxies. To perform
these types of queries, you must use a <em>join</em>. You can join any
two (or more) tables in the databases as long as they have some quantity
in common (typically an object or field ID). To actually perform the
join, you must have a JOIN subclause in the FROM clause of your query
that specifies the common quantity to be equal in the two tables.  

Here is an example, getting the g magnitudes for stars in fields where
the PSF fitting worked well: </p>
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT TOP 10 s.psfMag_g
FROM Star s JOIN Field f ON s.fieldID = f.fieldID
WHERE
  s.psfMag_g < 20 
  AND  f.pspStatus = 2
</pre>
</td></tr></table>
<p>Notice how we define abbreviations for the table names in the FROM clause; this is not necessary but makes for a lot less typing. Also, you do not have to ask for quantities to be returned from all the tables. You <em>must</em> specify all the tables on which you place constraints (including the join) in the FROM clause, but you can use any subset of these tables in the SELECT. If you use more than two tables, they do not all need to be joined on the same quantity. For instance, this three way join is perfectly acceptable:</p>
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT TOP 10 p.objID,f.field,z.z
FROM PhotoObj p 
   JOIN Field f ON f.fieldid = p.fieldid
   JOIN photoz z ON p.objid = z.objid
WHERE
   f.psfWidth_r > 1.2
   AND  p.colc > 400.0
</pre> 
</td></tr></table>

<p>The type of joins shown above are called <em>inner joins</em>. In the above examples, we only return those objects which are matched between the multiple tables. If we want to include all rows of one of the tables, regardless of whether or not they are matched to another table, we must perform an <em>outer join</em>. One example is to get photometric data for all objects, while getting the spectroscopic data for those objects that have spectroscopy. </p>
<p>
In the example below, we perform a <em>left outer join</em>, which means that we will get all entries (regardless of matching) from the table on the left side of the join. In the example below, the join is on <b>P.objID = s.BestObjID</b>; therefore, we will get all photometric (P) objects, with data from the spectroscopy if it exists. If there is no spectroscopic data for an object, we'll still get the photometric measurements but have nulls for the corresponding cpectroscopy.</p>

<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
select top 100 P.objID, P.ra, P.dec, S.SpecObjId, S.ra, S.dec
from PhotoObj as P left outer join SpecObjAll as S
on P.objID = s.BestObjID
</pre>
</td></tr></table>

<p>
When using table valued functions, you must do the join explicitly (rather than using "="). To do this, we use the syntax <br>
<b>SELECT</b> quantities<br>
<b>FROM</b> <em>table1</em><br>
<b>JOIN</b> <em>table2</em> <b>on</b> <em>table1.quantity = table2.quantity</em><br>
<b>WHERE</b> <em>constraints</em><br>
<p>
For instance, in the example below, we use the function <b>dbo.fGetNearbyObjEq</b> to get all objects within a given radius (in this case, 1') of a specified coordinate. This is a table-valued, so it returns a table, containing the ObjIDs and distances of nearby objects. We want to get further photometric parameters on the returned objects, so we must join the output table with PhotoObj.:</p>
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT G.objID, GN.distance
FROM Galaxy as G
JOIN dbo.fGetNearbyObjEq(115.,32.5, 1.0) AS GN
  ON G.objID = GN.objID 
WHERE (G.flags & dbo.fPhotoFlags('saturated')) = 0
</pre>
</td></tr></table>

<a name="queryoutput"></a>
<br>
<h3><u>Manipulating Query Output</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>


<p>
SQL provides a number of ways to reorder, group, or otherwise arrange the output of your queries. Some of these options are:</p>

<ul>
<li><b>count</b>: Just tell me how many objects would be returned by my
query.  You can specify a column name as the argument to the count
function or just "*" to mean all columns.  It doesn't really matter
(unless you are including a DISTINCT qualifier, see below) since it will count all
rows that match your query anyway.  Example:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT count(*) 
FROM Galaxy
WHERE ra between 180.1 and 180.5
</pre>
</td></tr></table>
</li>
<li><b>distinct</b>: Return only the unique values of the quantities requested in the SELECT statement. Example:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT distinct run 
FROM Field
</pre>
</td></tr></table>
<p>
Here a COUNT would return different counts depending on the column you
selected, e.g. 
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT count(distinct run) 
FROM Field
</pre>
</td></tr></table>
<p>
would return a different number in general from:
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT count(distinct field) 
FROM Field
</pre>
</td></tr></table>
</li>
<li><b>top</b>: Return only the first <em>n</em> rows of the query
results.  We've already been using this above.  Note that the rows
selected in the TOP x are not deterministic, i.e., there is no
order implied in the rows selected.  This is true of all database
queries in general.  You have to explicitly enforce an order in your
query if you want, and it is an expensive option in terms of query
execution time usually (see ORDER BY clause below).  Example:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT top 10 r
FROM Star
</pre>
</td></tr></table>
</li>

<li><b>order by</b>: Order the output by the specified quantities. Default is ascending order, but you can specify descending as well. You can also order by multiple columns. Example:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT top 10 u,g,r
FROM Star
order by g,r desc
</pre>
</td></tr></table>
<p>
Note how repeatedly executing this query returns the <i>same</i> 100
rows.   This is not true of the previous query, especially if you run it
at different times so the cache does not come into play..
</li>

<li><b>group by</b>: Group the output by the specified quantities. For instance, you could have all the stars in the output, followed by the galaxies. You could also perform operations on the grouped quantities. You could get the min and max magnitudes for stars and galaxies separately, as shown below:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT min(r),max(r)
FROM PhotoPrimary
group by type
</pre>
</td></tr></table>

You can use this to count how many of each object type is loaded as primary photometric objects, for instance:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT count(r)
FROM PhotoPrimary
group by type
</pre></td></tr></table>
</li>
</ul>


<a name="optquery"></a>
<br>
<h3><u>Optimizing Queries</u>
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h3>


<p>It is easy to construct very complex queries which can take a long time to execute. When writing queries, one can often rewrite them to run faster. This is called optimization.</p>
<p>
The first, and most trivial, optimization trick is to use the minimal
<b>Table</b> or <b>View</b> for your query. For instance, if all you
care about are galaxies, use the <b>Galaxy</b> view in your FROM clause,
instead of PhotoObj. We have also created a 'thin' version of
PhotoObjAll, called <b>PhotoTag</b>. This vertical subset contains all the
objects in PhotoObjAll, but only a subset of the measured
quantities. Using the PhotoTag view to speed up the query only makes
sense if you do NOT want parameters that are only available in the full
PhotoObjAll. 
</p>
<p>

<b>It is extremely useful to think about how a database handles queries,
rather than trying to write a plain, sequential list of constraints. NOT
every query that is syntactically correct will necessarily be efficient;
the built-in query optimizer is not perfect! Thus, writing queries such
that they use the tricks below can produce significant speed
improvements.</b></p> 

<!--
<p>Here is a staggeringly example of the importance of optimization:<br>

Find the positions and magnitudes of photometric objects that have been
Targeted for spectroscopy as possible QSOs. </p> 

<p>
A user's first instinct would be to get the desired objects from the
PhotoObj table within the TARG<%=globals.Release%> database (which contains the
information, including targeting decisions, for objects <em>when they
were targeted (chosen) for spectroscopy</em>). So, this query might look
like:</p> 
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT p.ra, p.dec, p.modelMag_i, p.extinction_i
FROM TARG<%=globals.Release%>..PhotoObjAll p
WHERE (p.primtarget & 0x00000002 > 0) or (p.primtarget & 0x00000004 > 0)
</pre></td></tr></table>

<p>That's really simple - all you are doing is checking if the primary target flags (<b>primtarget</b>) are set for the two types of QSO targets. <b>This query can take hours, because a sequential scan of every object in the photometric database is required!</b><br><p>
One quick change which makes a difference is to simplify the WHERE clause, to get rid of the <b>or</b>, by masking everything but bits 2,4, and checking if the result is non zero. This changes the WHERE clause to:</p>
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
WHERE  (primtarget & 0x00000006) > 0
</pre></td></tr></table>
<p>
This helps a little, but not much - we are still scanning the entire PhotoObj
table. We can make our lives a lot better by realizing that the database
developers have anticipated that people will be interested in targetting
information, and created a smaller table <b>TargetInfo</b>, that contains
<em>only</em> the <b>Target</b>ted objects, which is a small subset of the
entire photometric database! Using this table, we can rewrite our query as (we
do need a join with the Target table also):</p>
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT p.ra, p.dec, p.i, p.extinction_i
FROM TargetInfo ti, Target t, PhotoObjAll p 
WHERE (ti.primtarget & 0x00000006>0)
       and p.objid=t.bestobjid
       and t.targetid=ti.targetid
</pre></td></tr></table>

<p>
Note how most of the WHERE clause is performed using the <b>Targetinfo</b>
table; the SQL optimizer immediately recognizes that this table is much
smaller than PhotoObj, and does this part of the search first. <b>The query
now runs in about a minute or two.  That is two orders of magnitude
improvement over the initial method!</b>.</p>
<p>
Finally, we can recognize that all the quantities of interest are also in the PhotoTag view, which contains all the objects in PhotoObjAll, but not all measured quantities. The query will be:
</p>
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT p.ra, p.dec, p.ModelMag_i, p.extinction_i
FROM TargetInfo t, PhotoTag p 
WHERE (t.primtarget & 0x00000006>0)
       and p.objid=t.targetobjid
</pre>
</td></tr>
</table>
<p>
This runs in 18 sec, and returns the same 32931 rows. Another factor of two in speed! Note how PhotoTag does not contain the simplified <b>i</b> magnitude, and we must use modelMag_i instead.
</p>
-->
<a name="indices"></a>
<h4>Using indices in your query
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h4>


<p>Another simple way to make queries faster is to use indexed quantities
to search on.  There are two types of indices in the CAS, indices built
into the database, and an external spatial index that we have added to
make spatial searches much faster, called <a
href="http://www.skyserver.org/htm/">the Hierarchical Triangular
Mesh.</a>.  The latter is explicitly invoked by using the 
built-in spatial search functions like <a
href="<%=url%>/help/browser/browser.aspx?cmd=description+fGetNearbyObjEq+F">fGetNearbyObjEq</a>
(does a radial search in equatorial coordinates), 
or <a href="<%=url%>/help/browser/browser.aspx?cmd=description+fGetObjFromRectEq+F">fGetObjFromRectEq</a>
(searches in a rectangular area).  Database indices are invoked
automatically when you include columns in your search (in the WHERE
clause) that have indices built on them.  There are 3 types of database
indices:
<ol>
	<li><b>Primary Key (PK) indices</b> - these are also called
	<i>clustered</i> indices because the data is physically arranged
	(clustered) on disk in the ascending order of this key.  Each
	table has exactly one clustered or PK index, built on its
	primary search key.  For most of the photometric data tables,
	this is the <b>objID</b> column, and for most of the
	spectroscopic data tables, this is the <b>specObjID</b> column.
	</li>

	<li><b>Foreign Key (FK) indices</b> - these are indices built on
	columns that define a relationship with other tables, e.g. objID
	in the SpecObjAll table is a foreign key on the PhotoObjAll
	table.  Having FK indices helps to speed up queries that include
	a JOIN between the SpecObjAll table (and its associated views)
	and the PhotoObjAll table (and its views).
	</li>

	<li><b>Covering Indices</b> - these are indices created on
	(groups of) columns that are frequently used (together).  Thus
	they "cover" the search space defined by those columns.  They
	may be unique or non-unique (allow duplicates).
</ol>
All database indices defined on a given table in the CAS are listed in
the <a href="<%=url%>/help/browser/browser.aspx">Schema Browser</a> under
<a href="<%=url%>/help/browser/browser.aspx?cmd=shortdescr+Indices+I">the Indices
tab</a>.  If you click on the <a href="<%=url%>/help/browser/browser.aspx?cmd=shortdescr+Indices+I">the Indices
tab</a>, you will get a listing of all indices for all tables.  If you
want to view the indices for a single table, expand the <a href="<%=url%>/help/browser/browser.aspx?cmd=shortdescr+Indices+I">the Indices
tab</a>, scroll down the list to the table you want and just
click on the table name to see all its indices. 
<p>
If you must search on non-indexed columns in addition to the indexed
ones, you can still benefit by first performing a query using only the indexed quantities, and then select those parameters from the returned subset of objects. 
An indexed quantity is one where a look-up table has effectively been calculated, so that the database software does not have to do a time-consuming sequential search through all the objects in the table. 
For instance, sky coordinates cx,cy,cz are indexed using a Hierarchical Triangular Mesh (HTM).  
So, you can make a query faster by rewriting it such that it is nested; the inner query grabs the entire row for objects of interest based on the indexed quantities, while the outer query then gets the specific quantities desired.

<!--
<h4>Using Views is convenient, but ...
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h4>


This is a cautionary note about using views.  Views are a great convenience that enable you to access virtual subsets of tables.
The <a href="<%=url%>/help/docs/intro.aspx">Archive Intro page</a> lists the views defined on each table in the SDSS databases.  However, 
there are a couple of points to remember with regard to using views, when it comes to performance:
<ul>
    <li>Since a view is only a virtual subset of a table, every query on a view is actually a query on the underlying table.
	This means, for example, when you do a query on the <b>Star</b> view of the PhotoObjAll table, the query still scans
	the PhotoObjAll table or its indices.  There is no persistent physical entry in the database corresponding to the
	Star view other than its definition.  In other words, there is no performance benefit to using a view, it is only a
	conceptual convenience.
    </li>
    <li>Table hints are ignored if you are using a view instead of the table name in the FROM clause.  Hints can be included
	using the "WITH (&lt;hintname&gt;[=&lt;value&gt;])" syntax.  For example, if you say "SELECT ... FROM Galaxy WITH (nolock)", 
	the nolock hint is ignored. 
    </li>
</ul>
-->

<a name="functions"></a>
<h4>Using dbo functions in your query
&nbsp;&nbsp;&nbsp;<a href="#top"><img src="images/top.gif" ALT="Back to Top" NOSAVE BORDER="0" HEIGHT="25" ALIGN="TOP"></a>
</h4>


Finally, a word of caution about using function calls in queries.  If your query is
going to match a large number of objects (million or more), using a function
call, especially one that operates on a constant or literal, in the WHERE
clause is not a good idea, because the function will be called once per
matching row in that table, resulting in a significant performance hit.  Here
is an example of this:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT ... 
FROM PhotoObj
WHERE
    flags & dbo.fPhotoFlags('BLENDED') > 0
</pre></td></tr></table>
<p>
In this case, it would be better to first do the pre-query:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT dbo.fPhotoFlags('BLENDED')
</pre></td></tr></table>
<p>
to get the bitmask value for that flag, and then rewrite the above query as:
<p>
<table width=600 border=0 cellspacing=0 cellpadding=0 bgcolor=#222266>
<tr><td>
<pre>
SELECT ... 
FROM PhotoObj
WHERE
    flags & 8 > 0
</pre></td></tr></table>
<p>
This will avoid the wastefully repeated function call for each and every photobj
in the table.This is even more important when you are using multiple flags and you can
reduce the comparison to a single bitmask using flag arithmetic.  In the final example
above in the <a href="">Querying Bit Flags</a> section, you can replace the original query:
<pre>
SELECT top 10 objid, flags FROM PhotoTag
WHERE 
    ( flags & (dbo.fPhotoFlags('NODEBLEND')
               + dbo.fPhotoFlags('BINNED1')
               + dbo.fPhotoFlags('BINNED2')) ) = 0
</pre>
with a more efficient version by first running the following pre-query:
<pre>
SELECT (dbo.fPhotoFlags('NODEBLEND')
               + dbo.fPhotoFlags('BINNED1')
               + dbo.fPhotoFlags('BINNED2'))
</pre>
which returns the bitmask value <b>805306432</b>, which can in turn be substituted back in the 
original query as follows:
<pre>
SELECT top 10 objid, flags FROM PhotoTag
WHERE 
    ( flags & 805306432 ) = 0
</pre>
so as to save 3 function calls and make the query significantly more efficient. (In this particular example it does 
not matter because we are only asking for 10 rows, but if the "TOP 10" were to be removed and the query was run
on millions of rows, it would make a difference).

<p>

<hr>
<font size=-2>
Roy Gal, 
<a href="mailto:thakar@pha.jhu.edu">Ani Thakar</a>,
Jim Gray, Alex Szalay <br>
Last updated Apr 8, 2004.
</font>
</td></tr>
</table>
</div>
</asp:Content>
