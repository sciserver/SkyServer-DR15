<%@ Page Title="" Language="C#" MasterPageFile="../../HelpMaster.master" AutoEventWireup="true" CodeBehind="SQLCL.aspx.cs" Inherits="SkyServer.Help.Download.SQLCL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<STYLE>
   .small {font-size:smaller}
</STYLE>
<div id="title">Download</div>
<div id="transp">
	<table WIDTH="640" border="0" cellspacing="5" cellpadding="5" bgcolor="#888888">
		<tr>
			<td bgcolor="#000040">
				<h3>SDSS Command Line Query Tool</h3>
				<span><b>Author:</b> Tamas Budavari, JHU
	<br>
				<b>Date:</b> April 2003, updated January 2005 (DR3)</span>	
				<p>
					<b>sqlcl.py</b> is a (very) simple <a href="http://www.python.org">Python</a> program that can 
					run SQL queries against <a href="http://skyserver.sdss.org">SkyServer</a>. 
					Python runs on your favourite OS including the most exotic ones. The query goes 
					through the same .aspx(x) page that you use in the web form or using <i>wget</i>.
				</p>
				<p>
					March/04 Upgrades:
					<ul>
						<li> Comments supported within query </li>
						<li> Header info is displayed if -v option is used </li>
						<li> Space added to end of each line to fix an earlier bug. </li>
					</ul>
				<p>
					For <u>basic SQL help</u>, go to the <a href="../../docs/sql_help.aspx">
						Intro to SQL page</a>
				</p>
	
				<table border=2>
					<tr><td> </tr>
					<tr>	<td><A HREF="<%=pyRef%>">Download sqlcl </A>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sqlcl.py [2 kB] 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
					<tr>	<td><A HREF="<%=pyRef%>.htm">View Python source file</A>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sqlcl.py.htm 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
					<tr></tr>
				</table>

				<h4>Command line examples/tutorial:</h4>
				<pre>
skysrv: budavari$ sqlcl.py -h
>> sqlcl << command line query tool by Tamas Budavari <budavari@pha.jhu.edu>
Usage: sqlcl [options] sqlfile(s)

Options:
        -s url     : URL with the ASP interface (default: pha)
        -f fmt     : set output format (html,xml,csv - default: csv)
        -q query   : specify query on the command line
        -l         : skip first line of output with column names
        -h         : show this message
        -v	   : display header information
        
skysrv: budavari$ sqlcl.py -q "select top 2 ra,dec from star"
ra,dec
238.60018,3.467897E-1
238.601051,-5.516095E-1

skysrv: budavari$ for i in 17 18; do \
echo "select top 2 ra,dec from star where r between "$i" and "$((i+1)) \
 > star$i.sql; done
skysrv: budavari$ sqlcl.py star??.sql
ra,dec
238.596559,-7.822902E-2
238.584209,-7.833417E-2
ra,dec
238.595337,2.787041E-1
238.594255,-1.397587E-1

skysrv: budavari$ sqlcl.py -l star??.sql
238.596559,-7.822902E-2
238.584209,-7.833417E-2
238.595337,2.787041E-1
238.594255,-1.397587E-1
</pre>
				<h4>Python examples/tutorial:</h4>
				<pre>
skysrv: budavari$ python2
Python 2.2 (#1, Apr 12 2002, 15:29:57) 
[GCC 2.96 20000731 (Red Hat Linux 7.2 2.96-109)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import sqlcl
>>> print sqlcl.query("select top 2 ra, dec from galaxy").read()
ra,dec
238.594193,-5.39169E-1
238.588016,2.669783E-1

>>> lines = sqlcl.query("select top 2 ra, dec from galaxy").readlines()
>>> data = []
>>> for line in lines[1:]: data.append(map(float,line[:-1].split(',')))
... 
>>> print data
[[238.59419299999999, -0.53916900000000001], [238.58801600000001, 0.2669783]]
>>> print data[0]
[238.59419299999999, -0.53916900000000001]
>>> print data[0][0]
238.594193
>>> print type(data[0][0])
<type 'float'>
>>> 
</pre>
				<p>This should be enough to get you started, let me know if you need more help!</p>
				<table border=2>
					<tr><td> </tr>
					<tr>	<td><A HREF="<%=pyRef%>">Download sqlcl </A>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sqlcl.py [2 kB] 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
					<tr>	<td><A HREF="<%=pyRef%>.htm">View Python source file</A>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sqlcl.py.htm 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
					<tr></tr>
				</table>
			</td>
		</tr>
	</table>
	</td></tr> </table>
</div>
</asp:Content>
