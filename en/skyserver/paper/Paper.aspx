<%@ Page Title="" Language="C#" MasterPageFile="../SkyServerMaster.master" AutoEventWireup="true" CodeBehind="Paper.aspx.cs" Inherits="SkyServer.SkyServer.Paper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SkyServerContent" runat="server">
<div id="title">The SDSS SkyServer</div>
<div id='transp'>
<a name='top'></a>
<table width=640>
<tr><td>
<h2>Public Access to a Terabyte of Astronomical Data </h2>

<p>
You can <a href="<%=url%>/skyserver/paper/SkyServer-ACM-SIGMOD-2002.pdf">download the PDF for a
paper </a> that appeared in the <a
href="http://portal.acm.org/citation.cfm?id=564758">ACM SIGMOD 2002
proceedings</a> describing the initial motivation and design of the 
SkyServer Website.  For convenience, the paper contents are also listed
below.   You may also see the <a
href="http://research.microsoft.com/pubs/64520/tr-2006-190.pdf">SkyServer
Traffic Report - The First Five Years</a>.

<h3>The SDSS SkyServer - Public Access to the Sloan Digital Sky Server Data</h3>
<h4>
Alex Szalay<sup>1</sup>, Jim Gray<sup>2</sup>, 
Ani Thakar<sup>1</sup>, Bill Boroski<sup>3</sup>,
Roy Gal<sup>1</sup>, Nolan Li<sup>1</sup>, 
Peter Kunszt<sup>4</sup>, Tanu Malik<sup>1</sup>,   Wil O'Mullane<sup>1</sup>,  
Maria Nieto-Santisteban<sup>1</sup>, Jordan Raddick<sup>1</sup>,
Chris Stoughton<sup>3</sup>, Jan vandenBerg<sup>1</sup>
</h4>
<p>
1. The Johns Hopkins University, 
2. Microsoft, 
3. Fermi National Accelerator Laboratory, Batavia, 
4. CERN
<p>
gray@microsoft.com, {szalay, thakar, rrg, raddick, womullan, nieto, tmalik, nli, 
vincent}@pha.jhu.edu, peter.kunszt@cern.ch, stoughto@fnal.gov 
<p>
</td></tr>
<tr><td>

<h3>Abstract: </h3>
<p>
<i>The SkyServer provides Internet access to the 
public Sloan Digital Sky Survey (SDSS) data for both 
astronomers and for science education.  This paper 
describes the SkyServer goals and architecture.  It also 
describes our experience operating the SkyServer on the 
Internet. The SDSS data is public and well-documented so 
it makes a good test platform for research on database 
algorithms and performance. 
</i>
<p>
</td></tr>
<tr><td>

<a name='intro'></a>
<h3>Introduction</h3>
<p>
The SkyServer provides Internet access to the public Sloan 
Digital Sky Survey (SDSS) data for both astronomers and 
for science education.  The SDSS is a 5-year survey of the 
Northern sky (10,000 square degrees) to about 1/2
arcsecond resolution using a modern ground-based 
telescope [<a href="../../sdss/">[SDSS]</a>.  It will 
characterize about 200M objects in 5 optical bands, and 
will measure the spectra of a million objects. The first 
year's data is now public. 
<p>
The raw data gathered by the SDSS telescope at Apache 
Point, New Mexico, is fed through data analysis software 
pipelines at Fermilab.  Imaging pipelines analyze data 
from the imaging camera to extract about 400 attributes for 
each celestial object along with a 5-color "cutout" image.  
The spectroscopic pipelines analyze data from the 
spectrographs, to extract calibrated spectra, redshifts, 
absorption and emission lines, and many other attributes.  
These pipelines embody much of mankind's knowledge of 
astronomy [SDSS-EDR].  The pipeline software is a major 
part of the SDSS project: approximately 25% of the 
project's cost and effort.   The result is a large high-quality 
catalog of the Northern sky, and of a small stripe of the 
Southern sky.   When complete, the survey data will 
occupy about 40 terabytes (TB) of image data, and about 3
TB of processed data.
<p>
After calibration, the pipeline output is available to the 
astronomers in the SDSS consortium.  After approximately 
a year, the SDSS publishes the data to the astronomy 
community and the public – so in 2007 all the SDSS data 
will be available to everyone everywhere.
<p>
The first two years of SDSS data are now public. The raw data is 
over 2.5 terabytes, and the catalog size is about 800GB containing 
over 80 million  objects and 180,000 spectra.  You can access 
the public catalogs via the <a href="<%=url%>">SkyServer on the Internet </a> 
or you may get a <a href="http://www.skyserver.org/">private copy</a>
of the data.   The web server supports both professional 
astronomers and educational access.   
<p>
Amendments to the public SDSS data will be released as 
the data analysis pipeline improves, and the data will be 
augmented as more becomes public (next scheduled release 
is January 2004, DR2).  In addition, the SkyServer will get 
better documentation and tools as we learn how it is used.  
There are Japanese and German versions of the website, 
and the server is being mirrored in many parts of the 
world.    
<p>
This paper sketches the SkyServer design.  It reports on the 
database and web site design, describes the data loading 
pipeline, and reports on early website usage.   
<p>
</td></tr>
<tr><td>

<p>
<a name='wsdesign'></a>
<h3>The Web Site Architecture</h3>
<p>
The SkyServer's architecture is fairly simple: a front-end 
IIS web server accepts HTTP requests processed by 
JavaScript Active Server Pages (ASP).  These scripts use 
Active Data Objects (ADO) to query the backend SQL 
database server.  SQL returns record sets that the 
JavaScript formats into pages. The website is about 40,000 
lines of JavaScript and was originally built by two people as a 
spare-time activity. Since then many more people contributed
code and content, especially for documentation and education.
<p>
This design derives from the TerraServer [Barclay] – both 
the structured data and the images are all stored in the SQL 
database.   A 5-level image pyramid of the frames
 is precomputed, allowing users to see an overview 
of the sky, and then zoom into specific areas for a close-up 
view of a particular object.   
<p>
The most challenging aspect of the web site design has 
been supporting a rich user interface for many different 
browsers.  Supporting Netscape Navigator™, Mozilla™, 
and Microsoft Internet Explorer™ is a challenge – especially 
when the many Windows™, Macintosh™, and 
UNIX™ variants are considered.   The SkyServer does not 
download applets to the clients (except for sdssQA), 
but it does use both cascading style sheets and dynamic 
HTML.   It is an ongoing struggle to support the browsers 
as they evolve.
<p>
Professional astronomers generally have a good command 
of English, but SkyServer supports an international user 
community that includes children and non-scientists.  So, 
the web page hierarchy branches three ways: there is an 
English branch, a German branch, and a Japanese branch.  
Other languages will be added by people fluent in those 
languages.   Each mirrored site will have all the data and 
supports all the languages.
<p>
</td></tr>

<tr><td>

<a name='ifdesign'></a>
<h3>The Web Interface Design</h3>
<p>
The graphic design is entirely based on stylesheets. A new "skin"
has been designed for the site by Microsoft's multimedia group.
Only 4 files in the top level directory were modified to achieve
the different visual impressions. 
<p>
The SkyServer is accessed via the Internet using standard 
browsers.  It accepts point-and-click requests for images of 
the sky, images of spectra, and for tabular outputs of the 
SDSS database.  It also has links to the online literature 
about objects (e.g. NED, VizieR and Simbad). The site has 
an SDSS project description, tutorials on how the data was 
collected and what it means, and also has projects suitable 
to teach or learn astronomy and computational science at 
various grade levels.   Figure 1 cartoons the main access 
screens. 
<p>
<table border=0 cellspacing=0 cellpadding=10  align=center>
<tr><td align='middle'><img src='../images/figure1.gif' width="632" 
height="680"></td></tr>
<tr><td class="midbodyText">
<b>Figure 1:</b> The SkyServer web interface provides many 
different ways to look at the SDSS data. The simplest is 
“famous places” which is just a gallery of beautiful images. 
More sophisticated users can navigate to find the images and 
the data for a particular celestial object. There are a variety 
of query interfaces and also links to the online literature about 
objects through other public databases.
</tfd></tr></table>

<p>
The simplest and most popular access is a coffee-table 
atlas of famous places that shows color images of interesting
(and often famous) celestial objects.  These images try 
to lead the viewer to articles about these objects, and let 
them drill down to view the objects within the SDSS data.    
There are also tools that let the user navigate by field or 
plate to get images and spectra of particular objects (see 
Figure 1).  To drill down further, there is a text and a GUI 
SQL interface that lets sophisticated users mine the SDSS 
database.   A point-and-click pan-zoom scheme lets users 
pan across a section of the sky and pick objects and their 
spectra (if present).  
<p>
<table border=0 cellspacing=0 cellpadding=10  align=center>
<tr><td align='middle'><img src='../images/figure2.gif' 
width="630" height="630"></td></tr>
<tr><td class="midbodyText">
<b>Figure 2:</b> The navigation interface allows you to enter
a point on the sky to view the “cutout” for that spot. 
Then you can zoom in to view objects close up, or out to look at 
the big picture. One can select various overlays to provide a 
convenient graphical representation of various spatial objects
(fields, plates, tiles, stripes, masks). By pointing to an object 
one can get a summary of its attributes from the database, and 
one can also explore all the information centered on a given 
photometric object.
</td></tr></table>
<p>
The sky color images were built specially for the website. 
The original 5-color 80-bit deep images were converted 
using a nonlinear intensity mapping to reduce the 
brightness dynamic range to screen quality. The augmented-color 
images are 24bit RGB, stored as JPEGs. An image pyramid was built 
at 5 different zoom levels. The spectra are also rendered on 8bit 
GIF images.
<p>
The SkyServer is just one of the ways to access the SDSS 
data.  In addition, the raw SDSS pixel-level files are 
available from <a href="<%=globals.DasUrl%>">Science Archive Server (SAS)</a>.
<p>
</td></tr>
<tr><td>
<a name='mining'></a>
<h3>SkyServer Data Mining </h3>
<p>
Data mining was our original motive in building the  
SkyServer.  We wanted a tool that would be able to 
quickly answer questions like:  "find gravitational lens 
candidates" or "find other objects like this one." Indeed, 
we [Szalay] defined 20 typical queries and designed the 
SkyServer database to answer those queries.   Another 
paper describes the queries and their performance [Gray], 
but we quickly summarize the results here.
<p>
The queries correspond to typical tasks astronomers would 
do with a C++ program, extracting data from the archive, 
and then analyzing it.   Being able to state queries simply 
and quickly could be a real productivity gain for the 
Astronomy community.  We were very pleased to discover 
that all 20 queries have fairly simple SQL equivalents.  
This was not obvious when we started.  Often the query 
can be expressed as a single SQL statement.  In some 
cases, the query is iterative, the results of one query feeds 
into the next.  
<p>
Many of the queries run in a few seconds.  Some involving 
a sequential scan of the database take about 3 minutes.  A 
few complex joins take nearly an hour.  Occasionally the 
SQL optimizer picks a suboptimal plan and a query can take 
several hours.  The spatial data queries are both simple to 
state and execute quickly using a spatial index.   We 
circumvented a limitation in SQL Server by precomputing 
the neighbors of each object.  Even without being forced to 
do it, we might have created this materialized view to 
speed queries.  In general, the queries benefited from 
indices and column subsets containing popular fields.   
<p>
Translating the queries into SQL requires a good understanding 
of astronomy, a good understanding of SQL, and a good 
understanding of the database.   "Normal" 
astronomers use very simple SQL queries.  They use SQL 
to extract a subset of the data and then analyze that data on 
their own system using their own tools.   SQL, especially 
complex SQL involving joins and spatial queries, is just 
not part of the current astronomy toolkit.  This stands as a 
barrier to wider use of the SkyServer by the astronomy 
community.  We hope that a good visual query tool that 
makes it easier to compose SQL will ameliorate this problem.  
<p>
</td></tr>
<tr><td>

<a name='sdssQA'></a>
<h3>sdssQA-The SDSS Query Tool </h3>
<p>
sdssQA is a GUI SQL query tool to help compose 
SQL queries.  It was inspired by the SQL Server Query 
Analyzer, but runs as a Java applet on UNIX, Macintosh, 
and Windows clients and is freely available from the 
<a href='<%=url%>/help/download/sdssQA'>sdssQA download page 
</a>. It connects via ODBC/JDBC (for local 
use) and via HTTP or SOAP for use over the Internet. 
<p>
<table border=0 width=380 cellspacing=10 cellpadding=10>
<tr><td align='middle'><img src='../images/sdssQA.jpg' 
	width="520" height="340"></td></tr>
<tr><td class="midbodyText">
Figure 3: The sdssQA is a public domain Java applet that runs
on Unix, Macintosh, and Windows clients. It can be used to query 
the SkyServer database. The Object Browser (top left pane) gets 
the database schema from the server dynamically.
</td></tr></table>

sdssQA provides both a text-based and a diagram-based 
query mode. In the text-based mode, the user composes and 
executes SQL queries, stored procedures, or functions. 
The text based query window is shown on the left of Figure 3. 

<p>
sdssQA builds a hierarchical object browser of the 
database, tables, views, functions and constants in the left pane from 
the database catalog (see Figure 3).  Clicking on the object 
name brings up a help window that tells the 
user the meaning of each object and field within. Metadata 
includes data types, lengths, and null indicators.
<p>
The sdssQA provides results in three formats
<ul>
  <li>	Grid Based, for quick viewing of the results, 
  <li>	CSV, in ASCII comma separated values, for use in spreadsheets etc., and
  <li>    XML, for use in any application that can read XML data.
</ul>
We plan to add FITS format as a fourth option [FITS] in the near 
future. The user can save these results to a file.  
<p>
Query execution statistics are vital for large result-sets. 
The status window shows the execution time of each 
query, rounded to the nearest second. It also shows the 
connection information of the user, catalog name and 
server name. The public SkyServer web server limits the queries to 
10,000 records or  5 minutes of computation.   For more 
demanding queries, the users must attach to a "private" 
SkyServer.
<p>
For more detailed help on using the sdssQA, users can refer to the
<a href='<%=url%>/help/docs/sdssQA.aspx'>sdssQA help page</a> and the
<a href='<%=url%>/help/docs/sql_help.aspx'>SQL help page</a>.

<p>
</td></tr>
<tr><td>

<a name='epo'></a>
<h3>SkyServer used for Education </h3>
<p>
The public access to real astronomical data and the 
SkyServer's web interfaces make it an enormous potential 
resource for science education and public outreach. Today, 
most students learn astronomy through textbook exercises 
that use artificial data or data that was taken centuries ago. 
With SkyServer, students can study data from galaxies 
never before seen by human eyes. We are designing 
several interactive educational projects that let students use 
SkyServer to learn concepts from astronomy and 
computational science.
<p>
<table border=0 width=330 cellspacing=10 cellpadding=10  align=left>
<tr><td align='middle'><img src='../images/figure4.gif' 
	width="316" height="322"></td></tr>
<tr><td class="midbodyText">
<b>Figure 4:</b> An example from the “Old Time Astronomy” project
compares the sketch of Galaxy M64 made by amateur astronomer 
Michael Geldorp (left) to the image of the same galaxy from the 
Digitized Sky Survey (right). A more advanced project has students 
plot a Hubble diagram at right (showing redshift and relative 
distance of nine galaxies) to “discover” the expansion of the 
universe.
</td></tr></table>

We target the projects at two audiences: first, bright students 
excited about astronomy who want to work with data 
independently, and second, students taking general astronomy 
or other science courses as part of a school 
curriculum. To accommodate both audiences, we offer 
several different project levels, from "For Kids" (projects 
for elementary school students) to "Challenges" (projects 
designed to stretch bright college undergraduates). All 
projects designed for use in schools include a password-
protected teachers' site with solutions, advice on how to 
lead classes through projects and correlations to national 
education standards [Project 2061].
<p>
For example, a kids' project, "Old Time Astronomy," 
(http://skyserver.sdss.org/en/proj/kids/oldtime/) asks 
students to imagine what astronomy was like before the 
camera was invented, when astronomers had to record data 
through sketches. The project shows SDSS images of stars 
and galaxies, and then asks students to sketch what they 
see. After a student has sketched the image, she trades with 
another student to see if the other student can guess which 
image was sketched (see Figure 4.) 
<p>
A project for advanced high school students and college 
undergraduates explores the expanding universe. The web 
site first gives students background reading about how 
scientists know the universe is expanding. Then, it lets 
students discover the expansion for themselves by making 
a Hubble Diagram – a plot of the velocities (or redshifts) 
of distant galaxies as a function of their distances from 
Earth. A sample student Hubble diagram is shown in 
Figure 4. Among other things, this teaches students how to 
work with real data.
<p>
Many more exercises and projects are being developed 
around the SkyServer.  One particularly successful one 
was done by a teacher and some students in Mexico – there 
is growing international interest in using the SDSS to teach 
science to students in their native language (Spanish in that 
case).
<p>
One of the most exciting aspects of using SkyServer in 
education is its potential for students to pose and answer 
groundbreaking astronomical research questions. Because 
students can examine exactly the same data as professional 
astronomers, they can ask the same questions. Each school 
project ends with a "final challenge" that invites students 
to do independent follow-up work on a question that 
interests them. We are also working on a mentorship 
program that will match students working on school 
science fair projects with professional astronomers that 
volunteer to act as mentors, helping students to refine their 
research questions and to obtain the data they need to find 
answers. 

</td></tr>
<tr><td>
<a name='traffic'></a>
<h3>Site Traffic</h3>
<table border=0 width=420 cellspacing=0 cellpadding=10  align=right>
<tr><td align='middle'><img src='../images/figure5.gif' width="400"></td></tr>
<tr><td class="midbodyText">
<b>Figure 5a:</b> In its first 4 months the SkyServer processed 
about 2 million page hits, about ½ a million pages and about thirty thousand 
sessions.
</td></tr></table>

<p>
The SkyServer has been operating since 5 June 2001.  In 
the first 4 months it served about two million hits, 700 
thousand page views via 50 thousand sessions. About 4% 
of these are to the Japanese sub-web and 3% to the German 
sub-web.   The educational projects got about 8% of 
the traffic:  about 250 page views a day.  There have been 11 reboots, 
8 to for software upgrades and 3 associated with failing 
power.   The patches cause outages of 5 minutes, the 
power and operations outages last several hours.  Not 
shown in the statistics, but clearly visible in Figure 5a are 
two network outages or overloads that plagued Fermilab 
on 22 June and 26 July, 2001.  Conversely, the peak traffic coincided 
with classes using the site, news articles mentioning 
it, or with demonstrations at Astronomy conferences.  The 
sustained usage is about 400 people accessing about 3,000 
pages per day.  The site is configured to handle a load 
100x larger than that.  About 30% of the traffic is 
from other sites "crawling" the SkyServer --extracting the 
data and images.  There are about 10 "hacker attacks" per 
day.

<table border=0 width=440 cellspacing=0 cellpadding=10  align=left>
<tr><td align='middle'><img src='../images/traffic.jpg' width="400"></td></tr>
<tr><td class="midbodyText">
<b>Figure 5b:</b> Monthly SkyServer traffic since its introduction in 6/2001.
The total number of hits by September 2003 exceeded 15M hits.
</td></tr></table>

<p>
Since its introduction in June 2001, the traffic on the SkyServer
site has been steadily increasing.  Figure 5b shows the monthly traffic
since June 2001.  The total number of hits over the 2 years and 3 
months that the SkyServer has been in service now exceeds 15 million hits.
Over that period, barring site-wide power outages it has enjoyed over 
99.9% uptime.  The latest up-to-the-minute traffic report can be viewed 
on <a href='http://skyserver.sdss.org/log/en/traffic/'> the Current 
Site Traffic page</a>.

<p>
The SkyServer is primarily administered from Johns Hopkins 
and San Francisco using the Windows™ remote windows 
system (Terminal Services Client) feature.   For the first two years, the 
Fermilab staff managed the physical hardware, the network, and site 
security, with a mirror server at Johns Hopkins for incremental 
development and testing.  As of August 2003 - the administration and 
primary site have now moved to Johns Hopkins University and a 
mirror site will be hosted at Fermilab.  Additional mirror sites are also 
being hosted in Germany (Max-Planck Institute, Garching), Japan and 
India (IUCAA).
<p>

</td></tr>
<tr><td>
<a name='data'></a>
<h3>The Sloan Digital Sky Survey Data and Databases</h3>
<p>
The SDSS processing pipeline at Fermilab examines the 5-color 
images from the telescope and identifies photo 
objects as either stars, galaxies, trail (cosmic ray, 
satellite,…), or  some defect.  The classification is 
probabilistic — i.e., it is sometimes difficult to distinguish 
a faint star from a faint distant small galaxy.   In addition 
to the basic classification, the pipeline extracts about 400 
attributes from an object, including a "cutout" of the 
object's pixels in the 5 color bands.  
<p>
<table border=0 width=250 cellspacing=10 cellpadding=10  align=left>
<tr><td align='middle'><img src='../images/figure6.gif' 
	width="250" height="208"></td></tr>
<tr><td class="midbodyText">
<b>Figure 6:</b> The survey merges two observations (two strips from 
two nights) into a stripe. The stripe is processed by the pipeline to
produce the images and photo objects.
</td></tr></table>

The actual observations are taken in stripes about 2.5&deg; wide 
and 120&deg; long (see Figure 6).   To further complicate 
things, these stripes are in fact the mosaic of two night's 
observations (two strips) with about 10% overlap.   The 
stripes themselves have some overlaps near the horizon.  
Consequently, about 11% of the objects appear more than 
once in the pipeline.   The pipeline picks one object instance 
as primary but all instances are recorded in the database.   
Even more challenging, one star or galaxy often 
overlaps another, or a star is part of a cluster.  In these 
cases child objects are deblended from the parent object, 
and each child also appears in the database (deblended 
parents are never primary.)   In the end about 80% of the 
photo objects are primary.
<p>
The photo objects have positional attributes - right 
ascension and declination in the J2000 coordinate system, 
also represented as the Cartesian components of a unit 
vector, and an index into a Hierarchical Triangular Mesh 
(HTM). They also have brightness stored in logarithmic 
units (magnitudes) with error bars in each of the five color 
bands.  These magnitudes are measured in six different 
ways (for a total of 60 attributes).  The image processing 
pipeline also measures each galaxy's extent in several 
ways in each of the 5 color bands with error estimates. The 
pipeline assigns about a hundred additional properties to 
each object – these attributes are variously called flags, 
status, and type and are encoded as bit flags.   
<p>
The pipeline correlates each object with objects in other 
catalogs: United States Naval Observatory [USNO], Röntgen 
Satellite [ROSAT], Faint Images of the Radio Sky at 
Twenty-centimeters [FIRST], and others.   Successful 
correlations are recorded in a set of relationship tables.   
Spectrograms are the second kind of main data product 
produced by the Sloan Digital Sky Survey.   About 600 
spectra are observed at once using a single plate with optical 
fibers going to different CCDs.   The pipeline 
processing typically extracts about 30 spectral lines from 
each spectrogram and carefully estimates the object's redshift.
<p>
For more information on the data processing, check the 
<a href="../../sdss/">SDSS</a> branch of this website.
<p>
</td></tr>
<tr><td>
<a name='datamodel'></a>
<h3>The Relational Database Design</h3>
<p>
Originally, the SDSS developed the entire database on 
ObjectivityDB™ [SDSS-Science Archive].  The designers 
used sub-classes extensively:  for example the PhotoObject 
has Star and Galaxy subclasses.  ObjectivityDB supports 
arrays so the 5-colors naturally mapped to vectors of 5 
values. Connections to parents, children, spectra, and to 
other surveys were represented as object references.   
Translating the object oriented design into a relational 
schema was not straightforward; but we wanted to 
preserve as much of the original design as possible in order 
to preserve the existing knowledge, skills, and documentation.
<p>
The SQL relational database language does not support 
pointers, arrays, or sub-classing – it is a much simpler data 
model.  This is both a strength and a liability.  We 
approached the SQL database design by using views for 
subclassing, and by using foreign keys for relationships.  
<p>
Since the data processing software underwent substantial changes
since the survey started, we are storing two different versions 
of our processed images. First, we store the version of the processed
data frozen at the moment when the targets for spectroscopic observations
were selected. This database is called TARGDR1, where DR1 designates
the version number: Data Release 1. 
<p>
Then the data has been processed with the best available version of
the software, and these objects are stored in the database BESTDR1.
The schema of the two databases is identical, and many of the objects
appear in both, but due to the better handling of the noise, the number
of objects in BESTDR1 is somewhat higher.
<p>
The SkyServer initially took a simple approach to database 
design – and since that worked, we stopped there.  The 
design counts on the SQL storage engine and query optimizer 
to make all the intelligent decisions about data layout 
and data access. The total amount of data in the two databases 
is 818 GB, and the total
number of rows exceeds 3.4 billion.
<p>
<p>
<table align="center" width="300">
<tr><td align="center">
<table border="1" width="300">
<tr><td>Filegroups 	</td><td>BESTDR1</td><td>TARGDR1</td></tr>  
<tr><td>data 		</td><td>1	</td><td>200  	</td></tr>  
<tr><td>PhotoOther 	</td><td>18.1	</td><td>&nbsp;	</td></tr>  
<tr><td>PhotoObjAll 	</td><td>165.4	</td><td>&nbsp;	</td></tr>  
<tr><td>PhotoTag 	</td><td>78.1	</td><td>73.7	</td></tr>  
<tr><td>PhotoTagIndex 	</td><td>53.6	</td><td>&nbsp;	</td></tr>  
<tr><td>PhotoObjIndex 	</td><td>66.3	</td><td>&nbsp;	</td></tr>  
<tr><td>PhotoObjProfile </td><td>80	</td><td>&nbsp;	</td></tr>  
<tr><td>PhotoObjMask 	</td><td>22	</td><td>17.2	</td></tr>  
<tr><td>SpecObj 	</td><td>6 	</td><td>&nbsp;	</td></tr>  
<tr><td>Neighbors 	</td><td>24.2	</td><td>&nbsp;	</td></tr>  
<tr><td>Frame 		</td><td>30	</td><td>30	</td></tr>  
<tr><td>Log 		</td><td>4.2	</td><td>2	</td></tr>  
<tr><td>Total 		</td><td>495.3	</td><td>322.9	</td></tr>  
</table>
</td></tr>
<tr><td class="midbodyText">
<b> Table 1.</b> Counts of records and bytes in major tables.
Indices approximately double the space.
</td></tr>
</table>
<p>
</td></tr>
<tr><td>
<p>
<h3>The Database Schema</h3>

There are three main areas of the schema, which are linked together.
The Photometric observations result in a set of tables that describe 
the approximately 80 million objects detected in our 5-color images.
These are used to select targets for spectroscopic follow-up. The details
of the target selection and the spetroscpic observations are shown
at the bottom, within the blue area.


<table border=0 width=550 cellspacing=0 cellpadding=10  align=center>
<tr><td align='middle'>
<a href='../images/db-diagram-full.gif' TARGET='POPUP'>
<img src='../images/figure7.gif' width="640" height="480" border="0"></a></td></tr>
<tr><td class="midbodyText">
<b>Figure 7a:</b> The database schema for the SDSS Data Release 1.
The photometric objects like stars and galaxies are shown on the
right hand side, within the orage boundaries. The spectroscopic 
snowflake schema is shown on the left, within the green boundary.
The relevant metadata, automated documentation, partition and index-maps
are shown on the bottom, within the blue boundary.
</td></tr></table>

<p>
<h3>Photographic Objects</h3>
<p>
Starting with the imaging data, the PhotoObj table has all 
the star and galaxy attributes. The 5 color attribute arrays 
and error arrays are represented by their names (u, g, r, i, 
z.)  For example, ModelMag_r is the name of the "red" 
magnitude as measured by the best model fit to the data.   
In cases where names were unnatural (for example in the 
profile array) the data is encapsulated by access functions 
that extract the array elements from a blob. Pointers and 
relationships are represented by "foreign keys". 
<p>
Views are used for sub-classing.   The primaryObjects, 
galaxies, and stars, subclasses of the PhotoObj class are 
defined as the PrimaryObjects, Stars, and 
Galaxies views of the PhotoObj base table (views are 
virtual tables that just translate into queries on the base 
table).
<p>
<table border=0 width=550 cellspacing=0 cellpadding=10  align=center>
<tr><td align='middle'><img src='../images/db-diagram-photo.gif' 
	width="440" height="560"></td></tr>
<tr><td class="midbodyText">
<b>Figure 7b:</b> The schema for photographic objects. Observations are 
processed in <i>fields.</i>  Each field in turn contains many 
<i>objects</i>. Objects have an <i>image</i> and a <i>profile</i> array, 
giving the brightness in concentric rings around the object. 
Correlations to other surveys (Rosat, First, USNO, …). For objects
observed multiple times a Match table is created. Closeby 
<i>neighbors</i> are precomputed.
are recorded.
</td></tr></table>

The result is a snow-flake schema with the PhotoObjAll
table in the center other tables clustered about it (Figure 7).   
The 80 million PhotoObj records each have about 470 
attributes describing the object – about 2KB per record.   
The Field table describes the processing that was used for 
all objects in that field, in all frames.   The other tables 
connect the photoObj to literals (e.g. flags &amp; 
fPhotoFlags('primary')), or connect the object to objects 
in other surveys.   One table, neighbors, is computed 
after the data is loaded.  For every object the neighbors 
table contains a list of all other objects within 1/2 arcminute 
of the object (typically 10 objects).  This speeds proximity 
searches.

<h3>Spectroscopic Objects</h3>
<p>
Spectra are the second kind of data object produced 
by the Sloan Digital Sky Survey.   A total of 640 spectra are 
observed at once using a single plate with optical fibers 
going to two different spectrographs.   The plate 
description is stored in the plate table, and the 
description of the spectrogram is stored in the specObj 
table (each spectrogram has a handsome GIF image 
associated with it.).  The pipeline processing typically 
extracts about 30 spectral lines from each spectrogram.  
The spectral lines are stored in the SpecLine table.  The 
SpecLineIndex table has quantities derived from 
analyzing line groups.  These quantities are used by 
astronomers to characterize the types and ages of 
astronomical objects.  Each line is cross-correlated with a 
model and corrected for redshift.  The resulting attributes 
are stored in the xcRedShift table. A separate redshift is 
derived using only emission lines.  Those quantities are 
stored in the elRedShift table.    Again, as is standard 
with relational database designs,  all these tables are 
integrated with foreign keys – each specObj object has an 
unique specObjID key, and that same key value is stored 
as part of the key of every related spectral line.  To find all 
the spectral lines of object 512 one writes the query
<pre>	select *
	from specLine
	where specObjID = 512
</pre>
<p>
The spectrographic tables also form a snowflake schema 
that gives names for the various flags and line types.   
Foreign keys connect PhotoObj and SpecObj tables if a 
photo object has a measured spectrogram.

<table border=0 width=550 cellspacing=0 cellpadding=10  align=center>
<tr><td align='middle'>
<img src='../images/db-diagram-spectro.gif' 
	width="640" height="480" border="0"></td></tr>
<tr><td class="midbodyText">
<b>Figure 7c:</b> The schema for spectroscopic objects.
Each <i>plate</i> produces about 640 <i>spectra</i> that 
in turn each have about 30 spectral <i>lines</i>. Lines 
are further analyzed (line-index) and linked to the spectro 
objects. Targets are selected automatically from the photometry,
then they are assigned to <i>tiles</i>, and <i>plates</i> are
designed. 
</td></tr></table>
<p>

<h3>Metadata Tables</h3>
<p>

There are also a set of "miscellaneous" tables used to document
the data, to capture the history of the data loading process and 
to support the web interface.
<p>
THe documentation is generated automatically from the database schema. 
For each table and row there is a one-line description. For each attirbute
we also specify a physical unit, and a Universal Content Descriptor (UCD).
For enumerated quantitites we provide a link to a list of the enumerations.
We also have optional links to items in a Glossary and the Algorithms tables,
all stored in the database.
<p>
<table border=0 width=550 cellspacing=0 cellpadding=10  align=center>
<tr><td align='middle'><img src='../images/db-diagram-meta.gif' 
	width="640" height="240"></td></tr>
<tr><td class="midbodyText">
<b>Figure 7d:</b> Schema for the Metadata tables.
</td></tr></table>
<p>


<h3>Database Access – Views, Indices, and Access Functions </h3>
<p>
The photoObj table contains many types of objects (primaries, 
secondaries, stars, galaxies,…).  In some cases, users 
want to see all the objects, but typically, users are just 
interested in primary objects (best instance of a deblended 
child), or they want to focus on just Stars, or just Galaxies.   
So, three views are defined on the PhotoObj table:
<ul>
  <li>    PhotoPrimary: photoObj with mode=1
  <li>    Stars: PhotoPrimary with type='star'
  <li>    Galaxies: PrimaryObjects with type='galaxy'
</ul>
<p>
Most users will work in terms of these tables rather than 
the base table.  In fact, most queries are cast in terms of 
these views. This is the equivalent of sub-classing.  The 
SQL query optimizer rewrites such queries so that they 
map down to the base photoObj table with the additional 
qualifiers.
<p>
To speed access, the photoObj table is heavily indexed 
(these indices also benefit the views).   We have also created a 
vertical data slice, called PhotoTag, which contains the most 
frequently accessed object attributes.  This tag table is about 
seven times smaller than the base table (a few hundred bytes 
rather than a few thousand bytes).  
<p>
Our concern with the tag table design is that users must 
know which attributes are in a tag table and must know if 
their query is covered by the fields in the tag table.  Indices 
are an attractive alternative to tag tables.  An index on 
fields A, B, and C gives an automatically managed tag 
table on those 3 attributes plus the primary key – and the 
SQL query optimizer automatically uses that index if the 
query is covered by (contains) only those 3 fields.  So, 
indices perform the role of tag tables and lower the 
intellectual load on the user.   In addition to giving a 
column subset, thereby speeding access by ten to one 
hundred fold, indices also cluster data so that searches are 
limited to just one part of the object space.   The clustering 
can be by type (star, galaxy), or space, or magnitude, or 
any other attribute.  One limitation is that Microsoft's SQL 
Server 2000 limits indices to 16 columns.  
<p>
Today, the SkyServer database has tens of indices, and 
more will be added as needed.  The nice thing about indices 
is that when they are added, they speed up any queries 
that can use them.  The downside is that they slow down 
the data insert process – but so far that has not been a problem.
About 30% of the SkyServer storage space is devoted to indices.
<p>
In addition to the indices, the database design includes a 
fairly complete set of foreign key declarations to insure 
that every profile has an object; every object is within a 
valid field, and so on. We also insist that all fields are non-null.
These integrity constraints are invaluable tools in 
detecting errors during loading and they aid tools that 
automatically navigate the database.  
<p>
SQL Server allows the use of table valued functions. These have been
used extensively in our design, partly to provide an easy access
to enumerated and bit-wise values, partly to help in rendering
and searching the automated documentation. Also, the spatial search 
methods are based on these functions.
<p>
</td></tr>
<tr><td>

<a name='htm'></a>
<h3>Spatial Data Access</h3>
<p>
The SDSS scientists are especially interested in the 
galactic clustering and large-scale structure of the 
universe.   In addition, the web interface routinely asks for 
all objects in a certain rectangular or circular area of the 
celestial sphere.  
<p>
The SkyServer uses three different coordinate systems.  
First right-ascension and declination (comparable to 
latitude-longitude in terrestrial coordinates) are ubiquitous 
in astronomy.  The (x,y,z) unit vector in J2000 coordinates 
is stored to make arc-angle computations fast.   The dot 
product and the Cartesian difference of two vectors are 
quick ways to determine the arc-angle or distance between 
them.   
<p>
To make spatial area queries run quickly, the Johns Hopkins 
hierarchical triangular mesh (HTM) code
<a href="http://www.sdss.jhu.edu/htm/">HTM</a>, 
[Kunszt1] was added to SQL Server.  Briefly, HTM inscribes 
the celestial sphere within an octahedron and projects 
each celestial point onto the surface of the 
octahedron.   This projection is approximately iso-area.  
<p>
<table border=0 width="615" cellspacing=0 cellpadding=0>
<tr><td>
<img src="../images/l0.gif" width="200" height="200">
<img src="../images/l1.gif" width="200" height="200">
<img src="../images/l2.gif" width="200" height="200">
</td></tr>
<tr><td>
<img src="../images/l3.gif" width="200" height="200">
<img src="../images/l4.gif" width="200" height="200">
<img src="../images/l5.gif" width="200" height="200">
</td></tr>
<tr><td class="midbodyText">
<b>Figure 8a:</b> A Hierarchical Triangular Mesh (HTM) is
a hierarchical subdivision of the sky, starting from an octahedron. 
Triangle sides are always great circle segments. On the
figure the triangles are rendered flat.
</td></tr></table>
<p>

HTM partitions the sphere into the 8 faces of an 
octahedron.  It then hierarchically decomposes each face 
with a recursive sequence of triangles – so each level of 
the recursion divides each triangle into 4 sub-triangles 
(Figure 8a and 8b).   SDSS uses a 20-deep HTM so that the 
individual triangles are less than 0.1 arcseconds on a side.   
So, the HTM ID for a point very near the north pole (in 
galactic coordinates) would be something like 3,0,….,0.  
There are basic routines to convert between (ra,dec) and 
HTM coordinates.

<p>
<table border=0 width=250 cellspacing=10 cellpadding=10  align=right>
<tr><td align='middle'><img src='../images/figure8.gif' 
width="240" height="127"></td></tr>
<tr><td class="midbodyText">
<b>Figure 8b:</b> A Hierarchical Triangular Mesh (HTM) recursively assigns 
a number to each point on the sphere. Most spatial queries use the 
HTM index to limit searches to a small set of triangles. An HTM 
index is built as an extension of SQL Server’s B-trees.
</td></tr></table>

<p>
These HTM IDs are encoded as 64-bit integers.   
Importantly, all the HTM IDs within the triangle 6,1,2,2 
have HTM IDs that are between 6,1,2,2 and 6,1,2,3.  So, 
when the HTM IDs are mapped into a B-tree index they 
provide quick index for all the objects within a given 
triangle. The HTM library is an SQL extended stored 
procedure wrapped in a table-valued function 
spHTM_Cover(&lt;area&gt;).   The &lt;area&gt; can be either a circle 
(ra, dec, radius), a half-space (the intersection of planes), 
or a polygon defined by a sequence of points.  The 
function returns a table, each row defining the start and 
end of an HTM triangle.  One can join this table with the 
PhotoObj table to get a spatial subset of photo objects. 
<p>
The spHTM_Cover() function is too primitive for most us-
ers, they actually want the objects nearby a certain object, 
or they want all the objects in a certain area.   So, simpler 
functions are also supported.  For example: 
fGetNearestObjEq(1,1,1) returns the nearest object 
within one arcminute of equatorial coordinate (1°, 1°).  
These procedures are frequently used in queries and in the 
website access pages.

<h3>Database Physical Design </h3>

<p>
The data tables are all created in several filegroups.  The database 
files are spread across a single RAID0 volume. Each filegroup 
contain several database files that are limited to about 50Gb each.
The log files and temporary database are also spread across these disks. 
SQL Server stripes the tables across all these files and hence 
across all these disks.  It detects the sequential access, 
creates the parallel prefetch threads, and uses multiple 
processors to analyze the data as quickly as the disks can 
produce it.  When reading or writing, this automatically 
gives the sum of the disk bandwidths (over 400 MBps peak, 
180MBps typical) without any special user programming. 
<p>
Beyond this file group striping, SkyServer uses all the 
SQL Server default values.  There is no special tuning.  
This is the hallmark of SQL Server – the system aims to 
have "no knobs" so that the out-of-the box performance is 
quite good.  The SkyServer is a testimonial to that goal.  
<p>
</td></tr>

<tr><td>
<a name='loader'></a>
<h3>Database Load Process</h3>
<p>
The SkyServer is a data warehouse:  new data is added in 
batches, but mostly the data is queried.  Of course these 
queries create intermediate results and may deposit their 
answers in temporary tables, but the vast bulk of the data is 
read-only. Occasionally, a new schema is loaded (we are on V4
right now).
<p>
<table border=0 width=630 cellspacing=10 cellpadding=10>
<tr><td align='middle'><img src='../images/loader.gif' 
	width="620" height="640"></td></tr>
<tr><td class="midbodyText">
<b>Figure 10:</b> A screen shot of the SkyServer Database 
loader interface. The SkyServer is operated via the Internet 
using Windows2000 Terminal Server, a remote desktop facility
built into the operating system and a set of ASP pages.
Both loading and software maintenance are done in this way. 
This screen shot shows some of the windows from the load control
web interface. </td></tr></table>
<p>
From the SkyServer administrator's perspective, the main 
task is data loading -- which includes data validation.   
When new photo objects or spectra come out of the 
pipeline, they have to be added to the database. 
Given the large amounts of data we wanted this loading process 
to be as automatic as possible. 
<p>
The whole loading process is well described by a simple workflow 
diagram. The workflow is represented as a Directed Acyclic Graph (DAG),
and stored in a relational database table. This table drives the
whole loading process. Given the large amount of data, most of our effort
has gone into designing and implementing various integrity checks.  
<p>
We have implemented a three-level messaging and logging system, 
the workflow is tracked at three different granularities: Tasks,
Steps and Phases. There is a SQL script for each load step.  
In addition to loading the data, these scripts write the log 
records in a table recording the load time, the number of records in the 
source file, and the number of inserted records. A simple web user 
interface displays the status of the loading process, and makes it 
easy to examine the log records.   
<p>
A particular load step may fail because  the data violates foreign 
key constraints, or because the data is invalid (violates integrity 
constraints.)  In the web interface helps the operator to (1) undo 
the load step, (2) diagnose and fix the data problem, and (3) 
re-execute the load on the corrected data. Loading runs at about 
15 GB per hour (data conversion is very cpu intensive), so the current 
SkyServer data loaded in a few days.
<p>
Our loading framework is designed to perform some most of the steps 
in parallel, on a cluster of SQL Server nodes, using distributed 
transactions. This adds substantial speed and scalability 
to the loading. We have used up to six machines in the loading of 
the DR1 data set. The loading is a two-phase load: first we load data 
into the so called Task databases, not exceeding 20-30GB each. There
the data is fully validated before they get published to their final 
destination in the Publish database.
<p>
The loading consists of the following main steps:
<ol>
  <li><b>Transform</b><br>
  The binary files the data pipelines produce are converted to 
  comma-separated ASCII (csv) files. The FITS images are converted 
  to JPEG at various zoom levels. 

  <li><b>Export</b><br>
  The location of a directory tree containing loadable data is 
  entered into the database through a web interface. A new task
  record is created in the log database.
  
  <li><b>Check</b><br>
  The files in the directory tree are compared to a simple log file 
  in each of the subdirectories. The list of files to be loaded 
  are inserted into the log database. The size of the task is 
  estimated and entered into the task record.
    
  <li><b>Build</b><br>
  A separate database is created for each task with the appropriate 
  size. The schema is loaded and the file for the log information is
  created.
  
  <li><b>Preload</b><br>
  Each file in the log database that belongs to the task is loaded.
  CSV files are loaded using bulk insert, and the JPG and GIF images
  are laoded using a small DTS package. A few values, like loadversion
  are set in the loaded columns.
  
  <li><b>Validate</b><br>
  A very exntensive "data scrubbing" is performed. First, each unique
  key is verified to be unique. Then, the validity of each foreign key 
  is verified. Finally, we perform various checksums, and counts in
  the database to verify that everything has been loaded correctly.

  <li><b>Backup</b><br>
  Each task database is backed up on a background storage server. Then
  the database is detached before it gets published.

  <li><b>Publish</b><br>
  The server containing the database to be published into attaches the
  task database, and merges it with the current content of the Publish
  database. The number of rows loaded are verified.
  
  <li><b>Cleanup</b><br>
  The task database is removed from the system, to free up space for 
  further load tasks.
  
  <li><b>Finish</b><br>
  The remaining foreign and primary keys are built, together with the 
  remaining indices. We precompute the Neighbors and Match tables, then 
  work out the physical boundaries corresponding ot the tasks, and their
  intersections.
</ol>
<p>
</td></tr>

<tr><td>
<a name='hardware'></a>
<h3>Hardware Design and Performance</h3>
<p>
The SDSS DR1 is about 900GB. While this can be run on a single 
processor system with low-end ATA disks, the SkyServer at JHU
runs on more capable hardware, supported by a grant from Microsoft
Research.
<p>
<table border=0 width=320 cellspacing=10 cellpadding=10  align=right>
<tr><td align='middle'><img src='../images/hardware.gif' 
height='200' width='400'></td></tr>
<tr><td class="midbodyText">
<b>Figure 11:</b> The SkyServer cluster hardware configuration, consisting 
of a load-balanced three-way web server, a triply redundant database
server cluster and a db server dedicated to logging. The database servers 
are on a private network.
</td></tr></table>
<p>
The web front-end consists of three dual processor Dell Poweredge 
1750 servers, running Windows Server 2003, IIS 6.0 and Microsoft 
Network Load Balancing. They have 2GB of memory, dual Gbit Ethernet ports
and two 36GB Ultra320 SCSI disks, running in a Windows SW RAID1 (mirrored) 
configuration.
<p>
Most data mining queries are IO-bound, so the database 
servers are configured to give fast sequential disk bandwidth, 
healthy CPU power, and high availability. The backend consists of 
three Dell 4600 database servers, running Windows Server 2003 and 
SQL Server 2000. Each of these servers have 1.2 terabytes of 10k rpm 
Ultra SCSI drives, split between controllers, 4 drives to a SCSI channel.
The servers have 4GB of memory each. This configuration can scan data 
at 400MBps for a simple query. In a typical multi-user case queries 
tend to run at 160-200 MBps.
<p> 
The database servers communicate via Gbit Ethernet, and form a private 
network, and connect to the back-end Ethernet ports of the web servers. 
One of the three DB servers is dedicated to short queries on the public 
website, the other two servers are dedicated to longer queries for 
registered users, but also serve as a backup for failovers.
<p>
Much of the development and data organization has been on an Itanium2
HP RX5670 server with 24GB of memory, and 3 TB of SCSI disks, donated 
by HP and Intel. We also have a separate database server, a Dell
4400, running the same software setup, which have 3 mirrored 18GB 
volumes used for various log databases, related to web logs and SQL logs.
<p>
</td></tr>


<tr><td>
<a name='mss'></a>
<h3>MySkyServer</h3>
<p>
<table border=0 cellspacing=0 cellpadding=0>
<tr>
<td>
A 1% subset of the SkyServer database (about 1.3 GB SQL 
Server database) can fit (cpompressed) on a CD or be 
<a href="http://www.skyserver.org/personalskyserver/">downloaded </a>
over the web.   This includes the web site and all the photo and 
spectrographic objects in a 6º square of the sky.   This 
personal SkyServer fits on laptops and desktops.  It is 
useful for experimenting with queries, for developing the 
web site, and for giving demos.   Essentially, any 
classroom can have a mini-SkyServer per student.    
</td>
<td><img src='../images/myskyserver.jpg' 
	width="120" height="120"></td>
</tr>
</table>
<p>
</td></tr>

<tr><td>
<h3>Summary and Next Steps</h3>
<p>
The SkyServer is a web site and 900GB SQL database containing 
the Sloan Digital Sky Survey Data Release 1 (about 80 
million celestial objects and 200,000  spectra.)   It is 
accessed over the Internet via a website that provides 
point-and-click access as well as several query interfaces 
including form-based reports, raw SQL queries, and a GUI 
query builder. 
<p>
We designed the SkyServer both as a website for easy 
public access and as a data mining site.  To test the data 
mining capabilities; we implemented 20 complex 
astronomy queries and evaluated their performance.   We 
are pleased with the performance. Others can clone the 
server for a few thousand dollars. The data and web server 
are also being replicate at various astronomy and computer 
science institutes to either explore the data or to 
experiment with better ways to analyze and visualize the 
data.
<p>
The tools described here are a modest step towards the 
goal of providing excellent data analysis and visualization 
tools.  We hope that the SkyServer will enable computer 
scientists to advance this field by building better tools.  
The SkyServer now has four main evolutionary branches:
<p>
<b>Public SkyServer:</b>  New versions of the SDSS data will 
be released once or twice a year as the data analysis 
pipeline improves, and the data will be augmented as more 
becomes public.  In addition, the SkyServer will get better 
documentation and tools as we get more experience with 
how it is used.  There are Japanese and German clones of 
the website, and there are plans to clone it at several other 
sites.  A basic server costs less than ten thousand dollars.  
<p>
<b>Virtual Observatory (VO):</b>  The SDSS is just one of 
many astronomy archives and resources on the Internet.   
The Internet will soon be the world's best telescope.   It 
will have much of the world's astronomy data online 
covering all the measured spectral bands.  The data will be 
cross-correlated with the literature.  It will be accessible to 
everyone everywhere.  And, if the VO is successful, there 
will be great tools to analyze all this data.  
<p>
<b>The Science Archive:</b>  A second group of SkyServers with 
preliminary (not yet released) data will form a virtual 
private network accessible to the SDSS consortium.  These 
servers will have more sophisticated users who are 
intimately familiar with the data.  So these servers will 
have unique needs.
<p>
<b>Outreach and Curriculum Development:</b> The SDSS 
data is a great vehicle for teaching both astronomy and 
computational science.  The data is real -- everything 
comes with error bars, everything has a strong science 
component.  The SDSS data also has strong graphical, 
spatial, and temporal components.  It is fairly well 
documented and is public.  And of course, it's big by 
today's standards.  We hope that educators will "discover" 
the SkyServer and its educational potential – both at K-12 
and at the university level.
<p>
</td></tr>


<tr><td>
<h3>Acknowledgements</h3>
<p>
We acknowledge our obvious debt to the people who built 
the SDSS telescope, those who operate it, those who built 
the SDSS processing pipelines, and those who operate the 
pipeline at Fermilab.   The SkyServer data depends on the 
efforts of all those people. Compaq and Microsoft generously 
donated hardware, software, and money to support 
the SkyServer.  Tom Barclay advised us on the web site 
design, construction, and operation.   Roy Gal, Steve Kent, 
Rich Kron, Robert Lupton, Steve Landy, Robert Sparks, 
Mark Subba Rao, Don Slutz, and Tamas Szalay 
contributed to the site's content and development.  
Sadanori Okamura, Naoki Yasuda, and Matthias 
Bartelmann built the Japanese and German versions of the 
site.  Rosa Gonzalez and Kausar Yasmin helped with 
testing and developed some class martial.
<p>
</td></tr>

<tr><td>

<h3>References</h3>
<p>
[Barclay] T. Barclay, D.R. Slutz, J. Gray, "TerraServer: A Spatial Data 
Warehouse," Proc. ACM SIGMOD 2000, pp: 307-318, June 2000
<p>
[FIRST] Faint Images of the Radio Sky at Twenty-centimeters (FIRST) 
http://sundog.stsci.edu
<p>
[FITS] FITS - Flexible Image Transport System, 
http://heasarc.gsfc.nasa.gov/docs/heasarc/fits.html
<p>[Gray] SDSS 20 queries Answered. 
http://skyServer.sdss.org/en/download/
<p>
[HTM] Hierarchical Triangular Mesh  http://www.sdss.jhu.edu/htm/  
[Kunszt] P. Z. Kunszt, A. S. Szalay, I. Csabai, A. R. Thakar "The Index-
ing of the SDSS Science Archive" in Proc ADASS IX, eds. N. 
Manset, C. Veillet, D. Crabtree, (ASP Conference series), 216, 141-
145   (2000)
<p>[Malik] SkyServer Query Analyzer, 
http://skyServer.sdss.org/en/download/
<p>[MAST] Multi Mission Archive at Space Telescope. 
http://archive.stsci.edu/index.html
<p>
[Memspeed] http://research.microsoft.com/BARC/ Sequential_IO 
/memspeed.zip
<p>[NED] NASA/IPAC Extragalactic Database, 
http://nedwww.ipac.caltech.edu/
<p>
[Project 2061] Principles and Standards, http://www.project2061.org/
<p>[ROSAT] Röntgen Satellite (ROSAT) 
http://heasarc.gsfc.nasa.gov/docs/rosat/rass.html
<p>
[SDSS] D.G. York et al., The Sloan Digital Sky Survey: Technical Summary,
The Astronomical Journal. 120 (2000) 1579-1587,  
<p>
[SDSS-EDR]  C. Stoughton et. al., "Sloan Digital Sky Survey Early Data 
Release", The Astronomical Journal, in press (2002)
<p>
[SDSS-Science Archive] 
http://www.sdss.jhu.edu/ScienceArchive/doc.html
<p>
[Simbad] SIMBAD Astronomical Database, http://simbad.u-strasbg.fr/
<p>
[Szalay] A.  Szalay, P. Z. Kunszt, A. Thakar, J. Gray, D. R. Slutz. 
"Designing and Mining Multi-Terabyte Astronomy Archives: The Sloan 
Digital Sky Survey," Proc. ACM SIGMOD 2000, pp.451-462, 2000 
<p>
[Thakar] A.R. Thakar, P.Z. Kunszt,  A.S. Szalayand G.P. Szokoly: 
"Multi-threaded Query Agent and Engine for a Very Large 
Astronomical Database,," in Proc ADASS IX, eds. N. Manset, C. 
Veillet, D. Crabtree, (ASP Conference series), 216, 231 (2000).
<p>
[USNO] US Naval Observatory 
http://www.usno.navy.mil/products.shtml,   
<p>
[Virtual Sky] Virtual Sky, http://VirtualSky.org/
<p>[VizieR] VizieR Service, 
http://vizier.u-strasbg.fr/viz-bin/VizieR 
<p>
</td></tr>
<tr><td>

This article has been submitted for 
publication. 
<p>
The Alfred P. Sloan Foundation, the Participating Institutions, the 
National Aeronautics and Space Administration, the National Science Foundation, 
the U.S. Department of Energy, the Japanese Monbukagakusho, and the Max Planck 
Society have provided funding for the creation and distribution of the SDSS 
Archive. The SDSS Web site is http://www.sdss.org/. The Participating 
Institutions are The University of Chicago, Fermilab, the Institute for Advanced 
Study, the Japan Participation Group, the Johns Hopkins University, the 
Max-Planck-Institute for Astronomy (MPIA), the Max-Planck-Institute for 
Astrophysics (MPA), New Mexico State University, Princeton University, the 
United States Naval Observatory, and the University of Washington. Compaq 
donated the hardware for the SkyServer and some other SDSS processing. Microsoft 
donated the basic software for the SkyServer.
</p>

</td></tr>
</table>

</div>
</asp:Content>
