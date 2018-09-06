<%@ Page Title="" Language="C#" MasterPageFile="../../ProjMaster.master" AutoEventWireup="true" CodeBehind="AsteroidsHome.aspx.cs" Inherits="SkyServer.Proj.AsteroidsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProjContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

<h1>Finding Asteroids</h1>
<h2>by Joe Heafner<br>
<i>Catawba Valley Community College, Hickory, NC</i></h2>

<img src="images/sample.jpg" align=right>

<p>Finding asteroids in SDSS images can be tedious when done by simple 
visual inspection of the images. If you've done the <a href="../../basic/asteroids">Asteroids</a> 
project, you've looked through lots of images to find asteroids like the one 
shown to the right, and you've seen how hard you have to look. A much more efficient way 
it to use computer software to help find asteroids.</p>

<p>Traditionally, this involves 
taking an image of the same part of the sky at no fewer than two 
different instants and then using computer software to "stack" the 
images, which simply means to overlay the two images so that 
corresponding stars are aligned. The computer software then rapidly 
displays the individual images in succession, a technique called 
"blinking". The stars, being fixed objects, do not wiggle but 
asteroids, being moving targets, will appear to wiggle from image to 
image.</p>

<p>SDSS images allow us to use a slight variation on this technique 
that relies on the fact that an image of a given part of the sky is 
taken with different filters at slightly different times. Unlike 
optical images, in which asteroids show up with the same color from 
image to image, SDSS images show asteroids in two different colors. An 
SDSS image is also a composite of three different colored images, and 
each separate component image is taken at a slightly different time 
from the other images. Think of an SDSS image as three different images 
that have been digitally "stacked" as described above. If we could 
somehow "unstack" an SDSS image and then "blink" the individual 
component images, we might just be able to detect asteroids! In 
practice, this technique works and here is how to do it.</p>

<p>The first step is to obtain a computer program that will manipulate the 
images for us. An excellent choice is <a href="http://rsb.info.nih.gov/ij/">ImageJ</a>, 
developed by the National Institutes of Health. ImageJ is a Java program 
that runs under Linux, Mac OS 9, and Mac OS X, and Windows. It is freely 
available for download at the <a href="http://rsb.info.nih.gov/ij/">ImageJ 
website</a>. Your computer must have the ability to run Java programs. Your 
instructor or teacher can give you more information about making sure your 
computer can run Java programs - some additional software may be necessary 
if not already present.</p>

<p>ImageJ has many advanced features needed for different kinds 
of image analysis, including astronomical work and medical work. If you 
have not done so, or if your instructor has not yet done so, you will 
need to <a href="http://rsb.info.nih.gov/ij/">download ImageJ</a> and install 
it on your computer. Instructions are provided in the download archive.</p>

<p>The first step, assuming ImageJ is now properly installed on your 
computer, is to get an SDSS image. You can use the <a href="../../../tools/getimg/fields.aspx">
Get Fields</a> tool to retrieve an image given its run, camcol, and field 
numbers. If you don't have a special run, camcol, and field that you want to work 
with, you can just choose these numbers at random. Be sure to get the 
largest image you can, 1984x1361 pixels. This will make seeing the 
asteroids visually easier.</p>

<p>Once you have an image, right-click on it to save the image to your 
desktop. We recommend that you rename the image according to its run, 
camcol, and field. The example image we are using has been named 
r752c1f373.jpg, indicating Run 752, Camcol 1, Field 373. Note that the 
image has been saved in JPG format, which is fine for our purposes.</p>

<p><a href="images/sampleimage.jpg" target="image">Sample image</a>: 
Run 752, Camcol 1, Field 373 (click to open in a new window)</p>

<br>
<img src="images/original.jpg" align=right>

<p>The second step is to load the image into ImageJ for analysis. Your 
instructor or teacher will give you instructions on how to start the 
ImageJ program. Once it has been started, select File -> Open from the 
program's menu and load your image into ImageJ. The image will then be 
displayed in a window on your screen. The screenshot to the right shows what 
a sample image looks like opened in ImageJ.</p>

<p>The third step is to separate the composite image into its three 
component images. The composite image is called an RGB image, meaning a 
combination of red, green, and blue images. Actually, these are just 
names given to the three component images and they might not 
necessarily correspond to actual red, green, or blue as we usually 
think of them. This is not important for our purposes however.</p>


<img src="images/split.jpg" align=left>

<p>To do this in ImageJ, select Image -> Color -> RGB Split. You will see the 
original image replaced by three separate images. Note that each one 
will be labeled with its component color. A screenshot of the split 
image is shown to the left.</p>

<br><br><br><br><br><br><br><br><br>

<img src="images/stack.jpg" align=right>

<p>The fourth step is to create an image "stack" with the three component 
images. To do this, select Image -> Stacks -> Convert Images to Stack. The 
screenshot of the stacked image is shown to the right.</p>

<p>We now have one single image again, or so it appears. In a way, we are 
just undoing the separation we just performed but that is not exactly 
what we are doing. We are instructing ImageJ to put the component 
images together in a way that allows us to animate them, blinking them 
in quick succession.</p>

<p>The fifth step is to animate the stack to see what wiggles. To do that, 
select Image -> Stacks -> Start Animation. By default, ImageJ will 
cycle through the three component images at one second intervals, but 
this interval can be adjusted if desired. Depending on your computer's 
speed and memory capacity, blinking may slow down your computer and it 
may be slow to respond to key and mouse movements. A better option 
might be to use the &gt; and &lt; keys to manually cycle through the 
component images so you can start and stop as you wish. Stars and 
galaxies in the images will remain stationary with respect to each 
other. Their brightnesses may change, but their positions will not 
change. If you see a dot that moves as ImageJ blinks the images, you 
have most likely found an asteroid! The screenshots below show 
two blinking images. The image below show the location of an asteroid 
(marked in yellow).</p>

<table border=0>
  <tr>
    <td>
      <img src="images/blink1.jpg">
    </td>
    <td>
      <img src="images/blink2.jpg">
    </td>
  </tr>
  <tr>
    <td colspan=2 align=center>
      <img src="images/asteroid.jpg">
    </td>
  </tr>
</table>

<p>You can get the location of your find in the image by moving the mouse 
cursor to the dot that moves. The coordinates of this dot, in pixels, 
will be displayed in the main ImageJ window, the one with the tool buttons. 
In our sample image, a moving object is seen at coordinates X=894, Y=225. 
You should always look at the same coordinates in the original image, 
which you can reload into ImageJ using File -> Open again, to confirm 
whether or not there is actually something there. An asteroid on the 
original image will show up as two close but separate dots, one usually 
green and the other usually blue.</p>

<p>In accordance with good scientific practice, your asteroid discoveries 
should always be followed up by visual inspection of the original 
image. When you record your findings, be sure to include the 
coordinates of each asteroid in your records so that other astronomers 
can verify your findings and use them for future work and for 
reference. Upon looking at the original image, we surely do see a pair 
of blue and green dots at very close to the location above. You can 
always zoom the image to get more precise coordinate readings.</p>


</td></tr>

<tr><td><p></p></td></tr>
<tr><td><p></p></td></tr>

<tr><td>&nbsp;<a href="../"><img align="left" src="../../images/previous.jpg"></a></td></tr>

</table>
<P>

</div>
</asp:Content>
