<%@ Page Title="" Language="C#" MasterPageFile="HubbleMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Hubble.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HubbleContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Teacher's Guide to Specific Sections</h1>

<a name="intro"></a>
<p><b>Introduction</b></p>

<p>Let students read through the Introduction on their own. Ask them why the discovery that 
the universe was expanding was so unexpected. Point out that its discovery required 
three separate threads to come together: Einstein's General Relativity, Slipher's 
measurements of redshifts, and the building of the new 100" telescope on Mount Wilson. 
Ask them how the three other lines of evidence support the big bang theory. Get them 
thinking about how different lines of evidence add up to support a scientific theory. 
Ask: what makes a good theory?</p>

<a name="simple"></a>
<p><b>The Simple Diagram</b></p>

<p>This section is designed to give students some exposure to how astronomers know that 
the universe is expanding. This section, up to an including Exercise 4, can stand alone 
as a shorter project.</p>

<p>Make sure students understand the difference between absolute and relative distance. 
Have them explain why the Hubble diagram requires only relative distance. Have them study 
the picture above Exercise 1. Some students may have difficulty understanding the 
logarithmic scale of magnitude. Explain that other scales are also logarithmic: in the 
Richter Scale, a magnitude 7 earthquake is 10 times stronger than a magnitude 6. In the 
decibel scale, a 100 decibel sound is 10 times louder than a 90 decibel sound. Likewise, 
a magnitude 6 star or galaxy is 2.51 times brighter than a magnitude 7 star/galaxy. Tell 
students that each wavelength of the SDSS survey (u,g,r,i,z) has its own magnitude. In 
Exercise 1, they may choose any wavelength, but they should be consistent with their 
choice.</p>

<p>The key to doing Exercise 1 is using the Navigation Tool. In the Navigation Mosaic 
window, students should click "Select by ObjID," then carefully type the appropriate ID 
into the window. Click on the red Zoom button to switch to the zoom window; the galaxy will be circled, and its five 
magnitudes will appear in the table at the top right. For more information about the 
galaxy, students should click the "More" link. To save the galaxy in their notebook, 
students should click the "Save" link.</p>

<p>Be sure students understand the concept of redshift before discussing spectra. Remind 
them that looking at spectra is a way to measure redshift: spectral lines serve as 
markers for how redshifted a galaxy is.</p>

<p>Students will need to use a graphing program.&nbsp; A tutorial for Excel can 
be found on the SkyServer web site.</p>

<p>A "model" is a theoretical explanation for the relationship seen in the data. In the 
case of the Hubble diagram, scientists use a linear model for redshift as a function of 
distance - they assume that the underlying astrophysics is such that redshift will be 
linearly dependent on distance. Note that the mathematical model, by itself, says nothing 
about the underlying astrophysics; it says only that the laws should be such that they will 
produce a linear relationship between distance and redshift.</p>

<p>To test whether a model is a true description of data, scientists test the "fit" of 
the model. They find a trendline - the line that comes closest to fitting through each 
data point. Then, they calculate the distance the line falls from each actual data point.
The value r<sup>2</sup> gives a quantitative measure of how close the line comes to 
actually describing the data. A value of r<sup>2</sup> = 0 means that a line can't 
describe the data at all; a value of r<sup>2</sup> = 1 means that a line fits perfectly. 
In Exercise 4, students use Excel to find the r<sup>2</sup> value of their simple 
Hubble diagrams. They do not need to know how to calculate r<sup>2</sup> themselves, but 
if they are interested, refer them to an introductory statistics book.</p>

<p>The goal of finding r<sup>2</sup> is to quantitatively determine how well the model 
describes the data. What value is considered a "good fit" varies among different sciences 
and research topics. In astronomy and other physical sciences, r<sup>2</sup> = 90% 
is considered a good fit.</p>

<p>Exercises 5 and 6 are designed as "teasers." Students repeat the analysis they did in 
Exercises 1-4 with six other galaxies, and discover that the Hubble diagram they get looks 
terrible. Do these exercises only if you intend to have students do Part II of the project.</p>

<p>The fit of the new diagram is less than 10% in all wavelengths. Why does the 
new diagram, which was made in exactly the same way as the old diagram, look so different? 
The answer is that the six galaxies in Exercises 5-6 have vastly different properties, so 
students cannot simply assume that any observed differences are due to different distances 
from Earth. Ask: what could some of those differences be? Have students study the six 
galaxies with the Navigation Tool to generate some ideas.</p>

<p></p>

<a name="distances"></a>
<p><b>Distances</b></p>

<p></p>

<p>Exercise 7 should give students practice in finding relative distances to galaxies from 
their magnitudes. Exercise 8 is important, because students must be able to calculate 
actual relative distances to make their Hubble diagrams. Be sure all students can solve 
Exercise 8 before moving on. The paragraph below the question tells students why finding 
relative distances to galaxies is not enough, and gives them a solution: look at galaxy 
clusters.</p>

<p>Teach your students the idea of "populations." When astronomers find the distance to 
a galaxy, they need to control for galaxy variations by comparing "average" galaxies. This 
is like taking a survey to find the average family income in a town. If you ask only one 
family, you have no idea if their income is anywhere near the town's average. If you ask 
several families, the average of their incomes will be closer to the true average income 
for the town (which is what you are trying to find). The more families you ask, the more 
confident you can be that you are finding the true average. Similarly, the more galaxies 
astronomers look at, the more confident they can be that the average properties of 
galaxies in their sample are to the average properties of galaxies in general. They 
know that galaxies in a cluster are at roughly the same distance, so they can be sure that 
the ratios between observed properties of galaxies in the same cluster is the same 
as the ratios between the true properties of those galaxies.</p>

<p>Exercise 9 is a difficult question. If your students have not learned trigonometry, tell 
them to skip it. The key to the question is recognizing that the largest possible distance 
between two galaxies in a cluster is equal to the diameter of the cluster, which is 
equal to the cluster's distance times the tangent of the cluster's angular size (see the 
<a href=# onclick="window.open('answers.pdf');">answer key</a> for an explanation 
and a diagram).</p>

<p>The analogy to cities and towns should get students thinking about how to recognize 
similarities and differences based only on what they can see. Ask: what kinds of buildings 
do towns and cities have? How big are the buildings? Where do the buildings sit in relation 
to one another? Once they have explored the analogy, ask what is similar between 
buildings and galaxies? What is different? How might you apply the analogy to understanding 
galaxies? Once students have generated a list of ideas for how to recognize galaxies in 
clusters, let them practice by doing Exercise 10.</p>

<p>The paragraph after Exercise 10 tells students that to compare galaxies in different 
clusters, they must be sure to compare similar galaxies. To know whether two galaxy clusters are truly at different 
distances, you must look at two galaxies of the same type, size, and intrinsic brightness.</p>

<p>In Exercise 11, students should pull together all that they learned from this section 
to examine galaxies in three clusters in the same area of the sky. In Exercises 12 and 13, 
they look at these galaxies with the Navigation Tool. Encourage them to come up 
with creative ways to determine the galaxies' relative distances. These exercises will 
give them the distance data they will need to make a Hubble diagram.</p>

<p></p>

<a name="redshifts"></a>
<p><b>Redshifts</b></p>

<p></p>

<p>Make introductory physics and astronomy textbooks available so that students can look 
up terms and concepts as they work through this section. Tell students that spectra are 
one of the most important tools that astronomers use. In addition to redshift, 
spectra can tell astronomers the temperatures and compositions of stars and 
galaxies. </p>

<p>If you have a hydrogen discharge tube, have students measure the wavelengths of the 
Balmer lines for themselves. If not, tell them to use the table provided on the site. In 
Exercise 14, point out that the lines are marked on the spectrum. Ask: why are the 
H<sub><font face=symbol>g</font></sub> and H<sub><font face=symbol>d</font></sub> lines 
valleys instead of peaks? Have them use the formula provided to calculate redshift from 
the spectral lines.</p>

<p>The fact that redshift can be interpreted in two ways is a subtle but important point. 
When objects are close to Earth, their redshifts should be interpreted as coming from Doppler 
shifts due to relative motion. When objects are far from Earth, their redshifts should 
be interpreted as coming from the cosmological stretching of space. Be sure that students 
understand the concept of the stretching of space, because they will need it to understand 
the big bang in the next section.</p>

<p>In Exercise 15, explain the idea of a template - an expected, baseline curve to which 
experimental curves should be compared. Explain that not all galaxy spectra will match 
one of the SDSS's nine templates, but most will. All the galaxies in Exercise 15 will match 
one template or another.</p>

<p>Show students how to use the redshift application, then let them find the galaxy 
redshifts on their own. Remind students that they do not need to get the curves to match 
perfectly, but they should find the template and redshift that gets the best match to the 
major emission and absorption lines.</p>

<p>In Exercise 16, students will pull together what they have learned in this section to 
find the redshifts of ten galaxies in the three overlapping clusters from the last section 
(SDSS does not take spectra for every object, so these are the only ten galaxies in 
this region with redshifts available). Students should find the redshifts using the Get 
Spectra tool; however, if they are especially interested in the definition of redshift, 
they can calculate redshift as they did in Exercise 14 using the 
<a href=# onclick="window.open('http://astro.uchicago.edu/~subbarao/newWeb/line.html');">same 
table the SDSS software uses</a>.</p>

<p>Exercise 17 asks students to find the average redshift to galaxies in the SDSS database 
using the Get Plates tool. They should examine at least 20 spectra to find the average. 
Quasars are distant, bright objects that shine when matter falls into a black hole, heating 
up and glowing as it falls. Quasars are the brightest objects in the universe, and 
astronomers can see them at much greater distances than other objects. The most distant 
object ever seen, a quasar at z = 6.28, was found in 2000 by astronomers using SDSS data.</p>

<p></p>

<a name="conclusion"></a>
<p><b>Conclusion</b></p>

<p>The text describes the two observations Hubble made to establish that the universe 
is expanding. Ask students why his observation that our location in the cosmos is not 
special is so important. How can astronomers assume that all other galaxies would see 
the same thing?</p>

<p>Have students think about the differences between the explosion model and the big bang 
model. How could you tell, based only on what you can see and measure from Earth, which 
model correctly describes our universe? Remind students that the process of deciding 
between models based on observable evidence is at the heart of the scientific method.</p>

<p>Remind students of the difference between relative and absolute distance. Astronomers 
do know absolute distances to some galaxies, based mainly on looking at apparent 
magnitudes for known standard candles (such as Cephid variables or Type Ia 
Supernova).. From these absolute distances, they can use the 
equation to find a numeric value for H<sub>0</sub>. Finding the value of H<sub>0</sub> 
has been an important project in the past decade.</p>

<p>In Exercise 19, students pull together everything they have learned to make an 
improved Hubble diagram. They made this diagram following almost exactly the same steps 
that Edwin Hubble followed in 1929. Exercise 20 asks them to throw out one data point to 
improve the fit of the line. Teach them the concept of an "outlier" - a data point 
significantly different from other points. Get them thinking about when it is appropriate 
to throw out outliers, and when they should keep all their data (this is not 
always an easy decision!)</p>

<p>In the last question, you may wish to have students make a written outline, or even 
a formal proof, of the logic behind the big bang. Have them think about deductive logic: 
what does it mean to argue that something is true? How do you get from one logical point 
to another? Lastly, comment on how Hubble and Humason returned to collect more data. 
How much data would you need to collect to prove something is true? What is required to 
convince someone of an argument?</p>

<p><b>Exercise 21</b> is the final challenge. This exercise should not be done in the 
classroom. It is a completely open-ended exercise: students choose their own galaxies, all 
over the sky, and find relative distances and redshifts to each. Encourage students to 
complete this exercise on their own, for fun. You may wish to give extra credit to 
students who do it. When they finish, tell them to <a href=mailto:raddick@pha.jhu.edu>E-mail 
the diagram to us</a>, and we will review their work. We will post the best work 
on the webs site.&nbsp; We can use .gif and .jpg 
images, which can be created with Adobe Photoshop, or with shareware image converters 
like <a href=# 
onclick="window.open('http://www.5star-shareware.com/Graphics/Image-Editors/image-converter.html');">
Image Converter.</a> We can also use Microsoft Excel (.xls) spreadsheet files.</p>

</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td align=center><A href="default.aspx" ><IMG align=left src="../../../images/previous.jpg" ></A>
<A href="correlations.aspx" ><IMG align=right src="../../../images/next.jpg" ></A></td></tr>
</table>

<P></P>

</div>
</asp:Content>
