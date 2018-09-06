<%@ Page Title="" Language="C#" MasterPageFile="../SkyServerMaster.master" AutoEventWireup="true" CodeBehind="CiSE.aspx.cs" Inherits="SkyServer.SkyServer.CiSE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkyServerContent" runat="server">
<div id="title">The SDSS Science Archive</div>

<div id='transp'>
<a name='top'></a>
<table width=640>
<tr>
<td colspan=2>
<h2>Special Issue of <i>Computing in Science and Engineering</i>
Dedicated to the SDSS Science Archive </h2>

<p>
The <a href="http://cise.aip.org/dbt/dbt.jsp?KEY=CSENFA&Volume=10&Issue=1">
January/February 2008 issue</a> of the journal 
<a href="http://cise.aip.org/">Computing in Science and Engineering (CiSE)</a>
- a joint publication of the <a href="http://www.aip.org/">American Institute of
Physics</a> and the <a href="http://computer.org/">IEEE Computer
Society</a> - was dedicated to the <a href="http://cise.aip.org/dbt/dbt.jsp?KEY=CSENFA&Volume=10&Issue=1#MAJOR2">SDSS Science Archive</a>.  The issue
featured several in-depth, peer-reviewed articles on various components
of the SDSS-II Science Archive.  For SDSS-III, the Data Archive Server (DAS)
has been replaced with the <a href="<%=globals.DasUrlBase%>">Science Archive Server
(SAS)</a>, whereas the Catalog Archive Server (CAS) continues (with
significant enhancements and schema changes) to provide access to the
catalog data via the <a href="<%=url%>">SkyServer Web interface</a> and
the <a href="<%=globals.CasJobs%>">CasJobs batch query service</a>. 
<p>
The <a href="http://cise.aip.org/dbt/dbt.jsp?KEY=CSENFA&Volume=10&Issue=6">
November/December 2008 issue of CiSE</a> also had a follow-up article on lessons
learned from the SDSS-II CAS deployment.  
<p>
These articles are described below with links to the PDF for each article.
</td></tr>

<tr><td colspan=2>&nbsp;</td></tr>

<tr><td>
<a name="overview"></a>
<h3><a href="http://dx.doi.org/10.1109/MCSE.2008.17">The Sloan Digital Sky Survey - Drinking From the Fire Hose</a><br>
<font size=-1>Ani Thakar</font></h3>
</td><td>
  <a href="http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=4418764" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" /></a>
</td></tr>
<tr><td colspan=2>
The Sloan Digital Sky Survey Science Archive represents a thousand-fold
increase in the total amount of data that astronomers have collected to
date. The pioneering instrumentation technology that made this possible
is matched by groundbreaking tools that let anyone in the world access
terabytes of SDSS data online.
</td></tr>

<tr><td colspan=2><hr></td></tr>

<tr><td>
<a name="das"></a>
<h3><a href="http://dx.doi.org/10.1109/MCSE.2008.16">The Sloan Digital Sky Survey Data Archive Server</a><br>
<font size=-1>Eric H. Neilsen Jr.</font></h3>
</td><td>
  <a href="http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=4418765" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" />
</td></tr>
<tr><td colspan=2>
The Sloan Digital Sky Survey's Data Archive Server (DAS) provides public
access to data files produced by the SDSS data reduction pipeline. This
article discusses challenges in public distribution of data of this
complexity and how the project addressed them. 
</td></tr>

<tr><td colspan=2><hr></td></tr>

<tr><td>
<a name="cas"></a>
<h3><a href="http://dx.doi.org/10.1109/MCSE.2008.15">The Catalog Archive Server Database Management System</a><br>
<font size=-1>Ani Thakar, Alex Szalay, George Fekete, and Jim Gray</font></h3>
</td><td>
 <a href="http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=4418767" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" /></a>
</td></tr>
<tr><td colspan=2>
The multiterabyte Sloan Digital Sky Survey's (SDSS's) catalog data is
stored in a commercial relational database management system with SQL
query access and a built-in query optimizer. The SDSS Catalog Archive
Server adds advanced data mining features to the DBMS to provide fast
online access to the data. 
</td></tr>

<tr><td colspan=2><hr></td></tr>

<tr><td>
<a name="loader"></a>
<h3><a href="http://dx.doi.org/10.1109/MCSE.2008.18">The sqlLoader Data-Loading Pipeline</a><br>
<font size=-1>Alex Szalay, Ani Thakar, and Jim Gray</font></h3>
</td><td>
<a href="http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=4418768" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" /></a>
</td></tr>
<tr><td colspan=2>
Using a database management system (DBMS) is essential to ensure the
data integrity and reliability of large, multidimensional data
sets. However, loading multiterabyte data into a DBMS is a
time-consuming and error-prone task that the authors have tried to
automate by developing the sqlLoader pipeline--a distributed workflow
system for data loading. 
</td></tr>

<tr><td colspan=2><hr></td></tr>

<tr><td>
<a name="casjobs"></a>
<h3><a href="http://dx.doi.org/10.1109/MCSE.2008.6">CasJobs and MyDB: A Batch Query Workbench</a><br>
<font size=-1>Nolan Li and Ani Thakar</font></h3>
</td><td>
  <a href="http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=4418766" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF
     document (opens in new window)" /></a>
<tr><td colspan=2>
Catalog Archive Server Jobs (CasJobs) is an asynchronous query workbench
service that lets users run unrestricted SQL queries against scientific
catalog archives. After running queries in batch mode, users can save
their results to a personal database called MyDB before downloading
them, letting users manage their query workloads, results, and histories
without causing network overloads.
</td></tr>

<tr><td colspan=2><hr></td></tr>

<tr><td>
<a name="lessons"></a>
<h3><a href="http://dx.doi.org/10.1109/MCSE.2008.151">Lessons Learned from the SDSS Catalog Archive</a><br>
<font size=-1>Ani Thakar</font></h3>
</td><td>
  <a href="http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=4653207" target="text" onmouseover="this.T_WIDTH=270;this.T_BGCOLOR='#FFFFFF';return escape('Get text as PDF document (opens in new window)')">
     <img src="../../../images/pdf_icon.gif" alt="Get text as PDF document (opens in new window)" /></a>
</td></tr>
<tr><td colspan=2>
The SDSS is one of the first very large archives in astronomy and other sciences, as we enter the era of data-intensive science. Here the authors summarize some of the important and generally applicable insights they have gained (often the hard way!) over the past decade of SDSS development.
</td></tr>

<tr><td colspan=2><hr></td></tr>

</table>
</div>
</asp:Content>
