<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Color.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Teacher's Guide to Specific Sections</h1>

<a name="ch1"></a>
<h1>Chapter 1</h1>

<a name="intro"></a>
<p><b>Introduction: Color</b></p>

<p>Ask students what they see when they look at the stars. At least some of their answers 
should indicate that stars have different colors. Ask, "do you ever wonder <i>why</i> 
stars have different colors?" Tell them that in this project, they will learn why.</p>

<p><b>Colors of Stars in the SDSS</b></p>

<p>The key to doing Explore 1 is using the Navigation Tool. Students should choose 
a random stripe and mosaic, then click randomly at different points on the mosaic to 
look at different zoom views. They should search freely through the stars in the 
Zoom window to find stars of different colors. Remind them to make sure they choose 
stars and not galaxies. The top of the browser window will show the 
object type and its magnitudes in the five wavelengths (u,g,r,i,z). Students should 
make a note of the star's color on a sheet of paper, then click "Add to notes" to save 
the star in their notebook. A red check will appear next to "Add to notes" to show 
that the star's information has been saved.</p>

<p>Sometimes, a bright star will be mis-classified as a galaxy. This misclassification 
happens because the software SDSS uses to classify objects classifies pointlike light 
sources as stars and extended light sources as galaxies. When the CCD sees a very bright 
star, some of the star's light spills over into neighboring pixels, making the pointlike 
star look like an extended light source. You can recognize a bright star by diffraction 
spikes - bright crosses centered on the star - that occur as light bends inside the 
SDSS telescope.</p>

<p>In Explore 2, students should copy the information they saved in their online 
notebooks into a spreadsheet program. They should use their handwritten notes to 
enter each star's color. They should then use the sort feature (under the Data menu in 
Excel) to look for patterns in the data. They should sort first by magnitudes (u,g,r,i,z), 
then by differences in magnitudes. When they see the colors begin to line up in 
some order (when stars of similar colors are in similar places on the list), they 
should make a note of how they sorted the data.</p>

<p>Ideally, they should find that the colors are sorted (blue stars on one end and 
red on the other) when the data are sorted by differences in magnitudes. Remind 
students that they shouldn't expect every star to fit the pattern perfectly; they 
should expect to see only a general trend. If they are unable to see any trend at 
all, suggest that they return to the Navigation Tool and collect more data.</p>

<a name="ch2"></a>
<h1>Chapter 2</h1>

<a name="definition"></a>
<p><b>The Definition of Color in Astronomy</b></p>

<p>This section builds on the work students did in the last section, offering a 
concise mathematical definition for color. Astronomers use this definition 
when they discuss color in their research.</p>

<a name="mag"></a>
<p>Color is defined in terms of stellar magnitude. Students may be interested in learning 
the history of the magnitude system, which can seem arbitrary. The Did You Know? 
in the next section discusses the magnitude system's history.</p>

<p>Remind students that magnitude decreases with increasing stellar brightness. So if 
a star emits more red-wavelength light than green-wavelength light, its red 
magnitude r will be less than its green magnitude g; therefore, g-r will be positive.</p>

<p>This section includes a "Try This" activity designed to give students intuition 
about magnitudes. Students shine two flashlights toward a specified point: one flashlight 
at 1 meter and the other at 1.58 meters. When they look at the two flashlights, 
the nearer one will appear about one magnitude brighter. The distances were calculated 
using the inverse-square law of light along with the definition of magnitude. The 
activity may work better with light bulbs, which are omnidirectional light sources. If 
you use light bulbs, make sure students are supervised so they do not burn themselves.</p>

<p>Use students' intuitions about the word "filter" to express the concept of telescope 
filters. A filter is something that collects only what it is designed to collect. A 
telescope filter blocks all light except for light with the specific wavelength it was 
designed to see. Red telescope filters collect only red-wavelength light. Once 
astronomers have used a filter to collect light at a certain wavelength, they can 
calculate the star's magnitude in that wavelength. If your school has a theater, you 
may borrow some colored gels from the theatrical lights to demonstrate what filters do.</p>

<p>If students are confused about why color should be defined by the difference 
in magnitudes, appeal to their intuitions. If a star looks red, it must emit more 
red light than green; therefore, the difference between its radiant fluxes in red light and green light 
should be positive. If they ask why color depends on the difference and not the 
ratio, tell them that this question will be answered in the next section.</p>

<p><b>Color and Amounts of Light</b></p>

<p>This section relates a star's color to a physical quantity: the amount of light 
it emits in different colors. If your students are not comfortable working with 
logarithms, you may skip this section.</p>

<p>This section introduces a mathematical definition of magnitude in terms of 
radiant flux, the amount of light that reaches a given area in a given time. 
Radiant flux is also known as "radiant power." Radiant flux has units of power - 
Watts (Joules/second, or kg/m<sup>2</sup>/s). Students do not need to know 
these units to complete the project.</p>

<p>The definition of magnitude required that each star's magnitude be compared to 
a reference standard. The standard star is arbitrary. Vega, a bright blue star in 
the summer sky, was chosen because its magnitude would have been close to zero in 
Hipparchus's ancient scale (see the Did You Know? section on the history 
of the magnitude scale for more information). Emphasize that even though Vega's 
radiant flux is set to zero for all wavelengths, Vega is an ordinary star, with a color 
like any other.</p>

<p>Practice 1 requires only the definition of magnitude and algebra with logarithms. 
You may wish to pause here to give a quick review of the properties of logarithms. The 
Did You Know? section on the history of magnitude is an optional section for 
students who are curious about how the magnitude system came to be, and why 
the system is so confusing.</p>

<a name="whatis"></a>
<p><b>What is Color?</b></p>

<p>Remind students that light is a wave, and that a wave can be described by the 
distance between successive peaks, or the <i>wavelength</i>. Have students play 
with the light wave animation, then study the visible light spectrum. Both 
give roughly accurate representations of the width of each color in the visible 
spectrum. Tell students that when light shines with a mix of different 
wavelengths, it appears white.</p>

<p>Next, have them study the diagram and table of the total electromagnetic spectrum. 
Show them that many of the phenomena they are familiar with, such as radio signals, 
microwaves, infrared waves (heat), and X-rays can be explained by the different 
wavelengths of the electromagnetic spectrum.</p>

<p><b>SDSS Filters</b></p>

<p>This section explains the physical reason for SDSS's five color filters: each 
filter lets in light at a specific wavelength.</p>

<p>Question 1 asks students to think about a graph of the amount of light given 
off by a star as a function of wavelength. Such a graph would be a simplistic spectrum, 
with only five points. Students are then asked to extend their picture by thinking of a 
graph with many more points.</p>

<p>This page includes an optional Did You Know? section about the SDSS's five filters. The 
graph shows the sensitivity to light as a function of wavelength for each filter. Point 
out that the filters overlap slightly, allowing them to check one another. Also point 
out that the graph shows two sensitivities - a higher sensitivity in a vacuum and a lower 
sensitivity looking through air. Remind students that all of the SDSS's observing will 
be done through air.</p>

<p><b>Light From Stars</b></p>

<p>This section builds on Question 1 to give a simplistic explanation for the 
colors of stars: stars have different colors because they emit radiation with 
different peak wavelengths. Let students study the two curves to answer Question 2. 
If they have difficulty with Question 2, ask: "what color light are these stars emitting?" 
Question 3 should get students thinking critically about the explanation of peak 
wavelength. They key to Question 3 is to recognize that a star also emits light at other 
wavelengths around its peak wavelength. If students have trouble with Question 3, tell 
them to study the two curves above.</p>

<p>Explore 3 and Question 4 bring together what students have learned so far. These 
are difficult exercises designed to stretch students' reasoning abilities. Stars that 
emit most of their light in the green wavelength are fairly rare in SDSS data; but, 
encourage students to look through the Navigation tool before clicking the Hint button. 
Encourage students to keep a record of the stars they look at, either on paper or with 
their online notebooks. The key to Question 4 is to recognize that the part of 
the spectrum corresponding to green is narrow, while the peak of the thermal 
radiation curve is broad. Even if the curve's peak wavelength is in the green 
part of the visible spectrum, the star still emits enough blue light to appear white 
or blue.</p>

<p>The last section, "The Big Question," is intended as a hook for Chapter 3, where 
students will learn why stars have different colors. If you intend to stop with
Chapter 2, do not tell students to read this section. If they ask, encourage them 
to do the rest of the project on their own.</p>

<p>The Did You Know? section teaches students that SDSS's images do not exactly 
represent what the eye would see looking at an object. This is an optional section; 
students do not need to know how SDSS images are constructed to finish the Color 
project. If they are interested, refer them to the <a href="../processing/">Image 
Processing</a> project.</p>

<a name="ch3"></a>
<h1>Chapter 3</h1>

<a name="temp"></a>
<p><b>Color and Temperature</b></p>

<p>This section explains the observations students made in the last section. Stars have 
different colors because they have different temperatures.</p>

<p>Have students play the hot plate animation to get an intuitive feel for how the 
visual color of an object changes with temperature. When the fire symbol beneath the 
hot plate disappears, the plate is removed from the heat and begins to cool. The 
color sequence reverses. Emphasize that this color sequence depends only on temperature: 
it does not just apply to hot plates, and the sequence will be the same for any object 
studied. Question 4 acts as a quick review of the electromagnetic spectrum: 
students should realize that ultraviolet light has shorter wavelengths than 
violet light.</p>

<p><b>Thermal Radiation Curves</b></p>

<p>Thermal radiation curves are often called <i>blackbody curves</i>. This term was chosen 
because the curve represents only the thermal radiation of "black bodies" - objects that 
do not reflect any light at any wavelength (remember that an object that does not reflect 
light will appear black). Stars are nearly perfect black bodies: their color comes almost 
completely from their own glow and not from other light that they reflect. The term 
"blackbody curve" is not used in this project because many students find the name 
confusing. "Thermal radiation curve" expresses the idea that any object that emits 
thermal radiation (that is, light emitted as a function of temperature) will show radiation 
whose intensity matches such a curve. The diagram shows thermal radiation curves for 
stars at three different temperatures.</p>

<p>Explore 4 lets students experiment with changing the temperature of an imaginary 
object and watching its thermal radiation curve change. Alternatively, they can 
drag the curve to change its peak wavelength, then see what temperature would be 
required to generate that curve. You should familiarize yourself with the Java 
applet before assigning this exercise to students. You may assign them to figure 
out the mathematical relationship between temperature and peak wavelength, or you 
may just have them develop an intuitive feel for how the curves change with temperature.</p>

<p><b>Temperature and Peak Wavelength</b></p>

<p>The equation <FONT face=symbol>l</FONT><SUB>peak</SUB>T = 2.897 x 10<SUP> -3</SUP> m K 
can be used to predict the peak wavelength (in Angstroms) from the temperature (in Kelvin) 
of the thermal radiation curve, or vice versa. Practice 2 and 3 give students practice 
in using this equation, called "Wien's Law" (pronounced <i>VEEN</i>) to solve problems.</p>

<p>If students ask, tell them that the Kelvin scale, named for British physicist Lord 
Kelvin, has the same degree size as the Celsius scale, which is larger than the 
Fahrenheit degree by a factor of 1.8. The Kelvin scale is set so that 0 K is equal 
to "absolute zero" - the temperature at which atoms stop moving. Kelvin temperatures 
are written without the degree symbol.</p>

<p><b>Observed Spectra</b></p>

<p>This section introduces students to spectra - graphs of the intensity (amount) of 
light coming from a star as the function of the light's wavelength. Be sure 
students understand what they are looking at. Actually, the thermal radiation curves 
in the last section are spectra of perfect thermal sources. However, on SkyServer, the term 
"spectrum" is reserved for an observation of a star. Point out to students how 
large the peaks and valleys of non-thermal radiation can be. Practice 4 and 
Explore 5 ask students to find stars' peak wavelength from their spectra. To find 
the peak wavelengths, students may look at the blue curve superimposed on the 
spectra. However, tell students that this curve is not a thermal radiation 
curve, but only an approximated polynomial curve that matches with the broad trend 
of the observed spectrum.</p>

<p>Explore 5 asks students to use the Get Plates tool to look at observed SDSS 
spectra. Students calculate the temperatures of stars from their peak 
wavelengths, find an average temperature for SDSS stars, and compare this 
temperature to the Sun's to see if the Sun is an average star. The Sun is 
about average for the stars in the SDSS database, but is hotter than average 
for the stars in our local part of the galaxy. The reason for this discrepancy is 
that a dim, distant star viewed from Earth will appear too faint to be detectable, 
even with the SDSS's powerful telescope.</p>

<p>Emphasize the point made in "A Word of Warning": the starlight that we see from Earth 
is all the light the star emits, from both thermal and non-thermal sources. Non-thermal 
sources are emission and absorption lines that arise from electrons changing energy 
levels in the star's atoms. Students should have a sense for what electron energy 
levels are, but do not need to understand the process of energy level jumping.</p>

<p>Remind students that they can't sort out the two effects,
thermal and non-thermal, by looking at the star's color alone. Tell them that 
the spectrum lets them sort out the two effects. Question 7 asks students whether the 
spectrum shown is a thermal source. Either yes or no is an acceptable answer, as long 
as students give reasonable justification for their response.</p>

<p>If you do not intend to have the class do the Color-Color diagram page, stop 
after Question 7. The last section of this page, "The Other 59,058,000 Stars" is a 
hook for the Color-Color diagrams section, asking what, if anything, astronomers can 
learn from looking at color alone.</p>

<a name="ch4"></a>
<h1>Chapter 4</h1>

<a name="colorcolor"></a>
<p><b>Color-Color Diagrams</b></p>

<p>This section teaches students how astronomers can learn the temperature of 
a star even if they do not have a spectrum for it.</p>

<p>Remind students what a telescope filter does, and remind them of the thinking 
they went through in Question 1. Have them study the diagram, and 
be sure they can explain how SDSS's five filters give a snapshot of five points on 
the thermal radiation curve.</p>

<p>Remind students that the thermal radiation 
curve will describe any object in the universe as long as it's a thermal source. 
Since the object doesn't matter, every object in the universe with a single temperature, 
say 6000 K, will produce an identical thermal radiation curve.</p>

<p><b>Making a Color-Color Diagram</b></p>

<p>This section teaches students how to make a color-color diagram. Color-color 
diagrams can be hard to explain in words, so students can click on the image to see 
what the axes on a color-color diagram are.</p>

<p>Have students study the diagram, and remind them that magnitudes decrease for 
brighter stars. Question 8 asks them to visualize what a u-g/g-r color-color diagram would 
look like for the thermal radiation curves shown. The key is to look 
at the u-g and g-r colors (represented by lines along the left and right axes) as 
x and y values, respectively, of the color-color diagram. The paragraph below 
Question 8 tells students how to extend the two points into a line, making a u-g/g-r 
for many stars. Question 8 asks what g-r/r-i and r-i/i-z diagrams would look like.</p>

<p><b>A Color-Color Diagram for SDSS Stars</b></p>

<p>Explore 6, 7, and 8 let students make a color-color diagram for themselves, 
and then use them to learn which stars can best be thought of as thermal sources. 
To find the given stars, students should click the links, or use the "Find by ObjID" 
feature of the Object Explorer. A new window will open for the Object Explorer, and 
students should read the magnitudes u,g,r,i,z from the Object Explorer.</p>

<p>Explore 8 asks students to use a spreadsheet program to make a color-color diagram. 
The instructions tell how to use Microsoft Excel to make this diagram. If your students 
are more familiar with another graphing program, use that program instead. You may 
wish to pause here to give a quick tutorial of the graphing program. Question 10 asks 
students which end of the color-color diagram corresponds to hotter stars. If 
students get stuck, ask them to think about only one axis at a time.</p>

<p>In Explore 9, students make another color-color diagram, this time graphing u-g against 
g-r. Question 11 asks students to use this new diagram to find the limitations of 
using a color-color diagram to find stellar temperature. The trend in the u-g/g-r 
diagram turns quickly away from a straight line, meaning that only the very 
hottest stars can be thought of as thermal sources. Question 12 asks what might 
be responsible for the flat line at the top of the diagram. The answer is 
that these stars are red giants, which emit more red-wavelength light than 
other stars, no matter what their temperature. If your students have not 
learned about stellar evolution, you may skip this question.</p>

<a name="ch5"></a>
<h1>Chapter 5</h1>

<a name="others"></a>
<p><b>Colors of Other Objects</b></p>

<p>This section briefly introduces other astronomical objects - Population I stars, 
planets, interstellar dust, galaxies, quasars, and the universe - and describes their 
colors. If your students are interested in learning more about these objects, refer 
them to some of the other Projects on SkyServer. Links to these projects are given 
on this page.</p>

<p><b>Colors in Astronomy Research</b></p>

<p>This section introduces the Research Challenge. The research challenge should not 
be done in the classroom. It is a completely open-ended exercise. Students think 
of an astronomical research question that can be answered using colors. They develop 
their question, choose objects from the SDSS database to examine, and perform all 
analyses needed to answer the question. Encourage students to complete this 
exercise on their own, for fun. You may wish to offer extra credit to students who do it. 
If they are interested in doing the exercise, you should discuss their research 
questions and approaches with them outside of class.</p>

<p>The question asked should be a fairly simple question that can be answered by 
examining 20-40 objects using a straightforward analysis. Most likely, students will 
either make color-color diagrams or analyze peak wavelengths of spectra to answer their 
question. Be sure that they use color somehow in finding their answer. The Research 
Challenge lists a few suggested questions that students can answer.</p>

<p>When students finish the Research Challenge, tell them to <a href=mailto:raddick@pha.jhu.edu>E-mail 
the diagram to us</a>, and we may put it on the web site. We can use .gif and .jpg 
images, which can be created with Adobe Photoshop, or with shareware image converters 
like <a href=# 
onclick="window.open('http://www.5star-shareware.com/Graphics/Image-Editors/image-converter.html');">
Image Converter</a>. We can also use Microsoft Excel (.xls) spreadsheet files.</p>

<p>The research projects in the Research Challenge can easily be extended into Science Fair 
projects if students are interested. We encourage students to use SDSS data in 
Science Fair projects, and we are collecting a database of science fair projects that 
use SkyServer. If your students decide to do science fairs with SkyServer, please 
<a href="mailto:raddick@pha.jhu.edu?subject=science fair">E-mail us</a> to let us know.</p>

</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td align=center><A href="default.aspx" ><IMG align=left src="images/previous.jpg" ></A>
<A href="correlations.aspx" ><IMG align=right src="images/next.jpg" ></A></td></tr>

<tr><td>

</table>

<P></P>

</div>
</asp:Content>
