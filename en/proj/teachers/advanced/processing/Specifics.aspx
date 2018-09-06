<%@ Page Title="" Language="C#" MasterPageFile="ProcessingMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Advanced.Processing.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProcessingContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Teacher's Guide to Specific Sections</h1>
      
      <a name="ccd"></a>
      <p><b>CCD Images</b></p>
      <p>This section describes how a CCD camera creates an image. 
      Emphasize that a CCD chip only measures the number of photons that strike 
      a given location. No color information is recorded. Therefore, 
      three images must be combined to create a color image.</p>
      <p>Image processing programs display images by assigning each pixel a color based 
      on the number of counts it received during the exposure. The example 
      shows each brightness assigned a different color. Some students may 
      think this means the picture contains information about the color. 
      Remind them that the color comes only from the choice of display method, not 
      from any data contained in the image file.</p>
      <p>You may print out the table and have the students apply their own color 
      palette with crayons or colored markers. You might limit the number 
      of colors they can use. Each student can create his or her own image. 
      This is similar to an exercise used in the Hands On Universe curriculum.</p>
      
      <a name="iris"></a>
      <p><b>Iris</b></p>
      <p>This section tells the students how to set up the program. They 
      will need to be able to use WinZip or another unzipping utility. 
      You may download and install the program in advance to save time, 
      especially if you have a slow Internet connection.</p>
      <p>The students will need to point Iris to the directory where they will 
      store their images. Iris will look in this directory when making tricolor 
      images. Students also need to specify the file type: this 
      lesson uses .fts files.</p>
      
      <a name="retrieving"></a>
      <p><b>Retrieving Data</b></p>
      <p>This page introduces students to the interface for retrieving SDSS raw 
      imaging data. SkyServer stores only tricolor images of objects; to get 
      single-filter grayscale images, students will need to use this interface. 
      They can retrieve a wide variety of data products as well.</p>
      <p>They need to be 
      sure to enter the numbers in the table for run, rerun, etc., separated by 
      only a space. They should carefully check the boxes for the data 
      they want returned. The data are easiest to handle if they are returned 
      as a .zip file.</p>
      <p>Students will need to unzip the data and place each file into the directory they 
      specified earlier. Students should change the 
      filenames to something easy to remember. Be sure they keep the .fts 
      extension when they change the filename.</p>
      
      <a name="analyzing"></a>
      <p><b>Analyzing a Single Picture</b></p>
      <p>Students will open a single image such as the green image. If the 
      brightness is inappropriately set, they 
      may see simply black. If they click on Auto on the Threshold 
      box, they should see the image. </p>
      <p>In this section, students will learn about the max and min features. 
      The max value is sets the brightness value for brightest pixel that will be displayed. 
      For instance, if you set the maximum value to 2000, all pixels 2000 and 
      above will have the same color. The minimum value is the lowest 
      brightness that will be displayed. All pixels with brightnesses lower then 
      the minimum value will be the same color.</p>
      <p>Decreasing the maximum value tends to bring out more detail in 
      fainter regions of the image, but the brightest regions become washed 
      out and lose detail. Increasing the minimum value brings out more detail 
      in the brightest regions, but dim regions fade from view.</p>
      <p>The SDSS images have their background brightnesses set to 1000 counts. Setting 
      the minimum value to 1000 gives a nice dark background. If it is set 
      much lower, the background will be visibly colored. You can set it 
      higher of course. The students should find the background value is 
      very close to 1000, because there may be some small averaging uncertainties from 
      noise.</p>
      
      <a name="tricolor"></a>
      <p><b>Tricolor Images</b></p>
      <p>Making a tricolor image is fairly straightforward using Iris. 
      Make sure all three files are in the correct directory. The students do 
      not have to enter the .fts extension in the dialog box. They still 
      may need to adjust the max and min value to get a good image. They 
      also may adjust the color balance. </p>
      <p>If students wish to save their color images, they should save 
      them as a bitmap in the file menu. Files with extension "fts," or other 
      extensions that imply FITS files, will be saved in black 
      and white only.</p>
      <p>Give the students a few minutes to play with the color balance 
      and max/min values. They should be able to get a fairly good image 
      from these controls.</p>
      
      <a name="other"></a>
      <p><b>Other Images</b></p>
      <p>Students will make another tricolor image using the u, g, and r 
      filters. This image will bring out different features in the galaxy than 
      the rgi image they made in the last section. 
      The core will be very pronounced, because it emits so much ultraviolet light. The 
      spiral arms will be less pronounced. Students will get a very 
      different view of the galaxy. They may need to adjust the max and 
      min and color balance to see the image clearly.</p>
      <p>For the last section, students make an image of their own. They 
      may choose a ugz image, a riz image, or anything else they haven't tried.</p>
      
      <a name="asteroids"></a>
      <p><b>Finding Asteroids</b></p>
      <p>The images students use to find asteroids are entire fields. Hence, they 
      are larger images; you may wish to download them before class for your 
      students if you have a slow connection.</p>
      <p>The corrected frames are slightly offset because the Earth 
      rotated slightly during the time that passed 
      between the two exposures. Students will need to find a star common to 
      both frames and shift one of them to make them line up properly. It 
      is not a difficult process. Subpixel corrections are allowed, 
      so make sure they don't round the numbers!</p>
      <p>If students are unable to align the images after several tries, they 
      may have been unlucky enough to choose the asteroid as their object! If this 
      happens, the asteroid will appear stationary and every other object in 
      the image will move. Tell them to choose another object. You may use this 
      as an impromptu lesson on relative motion!</p>
      <p>Some of the objects will change brightness when they blink. They 
      may even change size. These changes happen because objects emit different 
      amounts of light at different wavelengths; see the <a href="../../advanced/colors">
      Colors</a> project for more detail. The asteroid will visibly move back and forth 
      many pixels. Another field with a good asteroid in it is 
      125/7/6/140/38.</p>
      
      <a name="othercontrols"></a>
      <p><b>Other Controls</b></p>
      <p>Computers can display many more colors than shades of gray. 
      Therefore, using a color palette can frequently allow you to see details that 
      are not visible in a grayscale image.</p>
      <p>Iris includes two other color palettes, in addition to grayscale: 
      a blue-yellow palette and a red-green-blue palette. They will all show 
      different levels of detail depending on the max and min values.</p>
      <p>Log scaling is useful if the image has a very large dynamic range; that is, 
      if the brightest pixel in the image is many times brighter than the dimmest pixel. 
      Log scaling will bring out more detail in the range between the max and min.</p>
      
      <a name="alternate"></a>
      <p><b>Alternate Views</b></p>
      <p>Isophotes, lines of constant brightness, provide a view much like a contour 
      map. Where they are close together, the 
      brightness is changing very quickly. Where they are relatively 
      sparse, the brightness is changing relatively slowly. </p>
      <p>If the high, low, and step size are not set well, the isophotes will be either too 
      close together or too far apart to be meaningful. Set the high and 
      low values to the max and min values of the image. Try to select a 
      step size that gives around 20 intervals between the max and min. 
      This will give you a reasonable number of isophotes. You may want 
      more or fewer for specific images.</p>
      <p>A 3-D view lets you see intensity represented as height. 
      The highest peaks represent the brightest parts of the image. This 
      view is particularly useful when you are looking at spiral galaxies. 
      HII regions tend to stand out as very tall peaks.</p>
      <p>Be sure to set the max and min values for the 3-D view equal to those of the picture. 
      Students can experiment with the viewing angle to find one that they like 
      best.</p>
      
      <a name="conclusion"></a>
      <p><b>Conclusion</b></p>
      <p>This exercise includes three final challenges. Students may do as many as 
      they like, but they should not feel obligated to do all three. You may wish 
      to offer extra credit for completing one or more.</p>
      <p>One challenge is to make images from 2MASS 
      data. Students will see that they can make color images from data 
      that lies totally outside the visible spectrum! You might wish to 
      have them make images of the same object using SDSS data and 2MASS data so 
      they can compare the infrared view of an object to the visible image of an 
      object.</p>
      <p>The second challenge is to search for i dropout candidates using the blink 
      feature. Distant quasars have very high redshifts - so bright that the 
      bright Lyman alpha spectroscopic lines move all the way from the ultraviolet 
      to the infrared. When the Lyman 
      alpha line moves into the z filter, the quasar is much brighter in the z 
      band than in the i band. If you blink the two images, it will 
      disappear, or &quot;drop out&quot;, when the i image is displayed. The 
      object could also be a very small, cool dwarf star as well as a quasar; 
      further study is needed. SDSS astronomers make lists of i dropout candidates 
      to return to for further study.</p>
      <p>If you have access to a CCD camera, students can use IRIS to process 
      images acquired by that camera. You can also search the Internet for 
      amateur astronomers who post their pictures and have students analyze 
      them.</p>
      <p>All the images students use here have had the sky background 
      subtracted. The background value is set to 1000 in SDSS images (if 
      we had set it to zero, you would probably have a few pixels with negative 
      values and that would cause problems when using log scaling). SDSS images 
      also have flat field corrections applied. Students 
      may need to learn about these corrections if they use images from a CCD 
      camera.</p>
      <p>Iris can also be used to obtain images from a webcam. Mount a webcam 
      to the eyepiece of any telescope and use the Video capture from the 
      Webcam menu. Webcams will only work for bright objects, but 
      many amateur astronomers take interesting photos of the moon and planets 
      using webcams.</p>
      <p></p>
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="default.aspx">
      <img align="left" src="images/previous.jpg"></a>
      <a href="correlations.aspx">
      <img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
