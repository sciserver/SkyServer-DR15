<%@ Page Title="" Language="C#" MasterPageFile="ColorMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Basic.Color.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ColorContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Teacher's Guide to Specific Sections</h1>
      <a name="ch1"></a>
      <h1>Chapter 1</h1>
      <p><b>Introduction: Color</b></p>
      <p>Ask students what they see when they look at the stars. At least some 
      of their answers should indicate that stars have different colors. Ask, 
      &quot;do you ever wonder <i>why</i> stars have different colors?&quot; Tell them 
      that in this project, they will learn why.</p>
      <p><b>Colors of Stars in the SDSS</b></p>
      <p>The key to doing Explore 1 is using the Navigation Tool. Students 
      should choose a random stripe and mosaic, then click randomly at different 
      points on the mosaic to look at different zoom views. They should search 
      freely through the stars in the Zoom window to find stars of different 
      colors. Remind them to make sure they choose stars and not galaxies. The 
      top of the browser window will show the object type and its magnitudes in 
      the five wavelengths (u,g,r,i,z). Students should make a note of the 
      star's color on a sheet of paper, then click &quot;Add to notes&quot; to save the 
      star in their notebook. A red check will appear next to &quot;Add to notes&quot; to 
      show that the star's information has been saved.</p>
      <p>Sometimes, a bright star will be mis-classified as a galaxy. This 
      misclassification happens because the software SDSS uses to classify 
      objects classifies pointlike light sources as stars and extended light 
      sources as galaxies. When the CCD camera sees a very bright star, some of the 
      star's light spills over into neighboring pixels, making the pointlike 
      star look like an extended light source. You can recognize a bright star 
      by diffraction spikes - bright crosses centered on the star - that occur 
      as light bends inside the SDSS telescope.</p>
      <p>In Explore 2, students should copy the information they saved in their 
      online notebooks into a spreadsheet program. They should use their 
      handwritten notes to enter each star's color. They should then use the 
      sort feature (under the Data menu in Excel) to look for patterns in the 
      data. They should sort first by magnitudes (u,g,r,i,z), then by 
      differences in magnitudes. When they see the colors begin to line up in 
      some order (when stars of similar colors are in similar places on the 
      list), they should make a note of how they sorted the data.</p>
      <p>Ideally, they should find that the colors are sorted (blue stars on one 
      end and red on the other) when the data are sorted by differences in 
      magnitudes. Remind students that they shouldn't expect every star to fit 
      the pattern perfectly; they should expect to see only a general trend. If 
      they are unable to see any trend at all, suggest that they return to the 
      Navigation Tool and collect more data.</p>
      <a name="ch2"></a>
      <h1>Chapter 2</h1>
      <p><b>The Definition of Color</b></p>
      <p>This section builds on the work students did in the last section, 
      offering a concise mathematical definition for color. Astronomers use this 
      definition when they discuss color in their research.</p>
      <p>Color is defined in terms of stellar magnitudes. Students may be 
      interested in learning the history of the magnitude system, which can seem 
      arbitrary and confusing. The "Did You Know?" in this section discusses the 
      magnitude system's history.</p>
      <p>Remind students that magnitude decreases with increasing stellar 
      brightness. So if a star emits more red-wavelength light than 
      green-wavelength light, its red magnitude r will be less than its green 
      magnitude g; therefore, its g-r color will be positive.</p>
      <p>This section includes a &quot;Try This&quot; activity designed to give students 
      some intuition about magnitudes. Students shine two flashlights toward a 
      specified point: one flashlight at 1 meter and the other at 1.58 meters. 
      When they look at the two flashlights, the nearer one will appear about 
      one magnitude brighter. These distances were calculated using the 
      inverse-square law of light along with the definition of magnitude. The 
      activity may work better with light bulbs, which are omnidirectional light 
      sources. If you use light bulbs, make sure students are supervised so they 
      do not burn themselves.</p>
      <p>Use students' intuitions about the word &quot;filter&quot; to express the concept 
      of telescope filters. A filter is something that collects only what it is 
      designed to collect. A telescope filter blocks all light except for light 
      with the specific wavelength it was designed to see; for example, red 
      telescope filters 
      collect only red-wavelength light. Once astronomers have used a filter to 
      collect light at a certain wavelength, they can calculate the star's 
      magnitude in that wavelength; that is, the magnitude that star appears 
      when seen through that filter. If your school has a theater, you may borrow 
      some colored gels from the theatrical lights to demonstrate what filters 
      do.</p>
      <p>If students are confused about why color should be defined by the 
      difference in magnitudes, appeal to their intuitions. If a star looks red, 
      it must emit more red light than green; therefore, the difference between 
      the amount of red light it emits and the amount of green light it emits 
      should be positive. The reason color depends on the difference between 
      magnitudes and not the ratio is that magnitude is a logarithmic representation 
      of brightness, so differences in magnitude correspond to ratios in brightness.</p>
      
      <a name="ch3"></a>
      <h1>Chapter 3</h1>
      <p><b>Thermal Radiation, Temperature and Observed Spectra</b></p>
      <p>This section introduces the concept of thermal radiation. 
      Some students are probably familiar with night vision goggles, which 
      detect infrared thermal radiation given off by objects.</p>
      <p>Students will use the Java applet to explore the behavior of an object's thermal 
      radiation curve as the temperature of the object changes. Students should notice 
      that the peak wavelength decreases as the temperature increases. 
      This may seem counterintuitive to some students. Short wavelength 
      radiation has higher energy, so it may be useful to mention that as the 
      temperature increases, the energy of the peak wavelength increases.
      </p>
      <p>You should familiarize yourself with the applet before your students 
      do this section. The applet automatically resizes the y-axis when the temperature 
      changes. You may wish to point this out so that students realize 
      high-temperature objects give off more total radiation than low-temperature 
      objects, in addition to radiation with higher peak wavelengths.</p>
      <p>Color and Temperature relates the concept of thermal radiation to their 
      everyday experiences with hot plates. Students should realize they can 
      feel the thermal radiation as heat before the hot plate starts 
      glowing red hot. </p>
      <p>Students then look at the observed spectra of stars to see that stars are 
      not perfect thermal sources. Their thermal radiation curves have various 
      peaks and valleys due to the emission and absorption of radiation by 
      elements in the stars' atmospheres. Even with these peaks and valleys, 
      students will frequently be able to see the underlying shape of 
      thermal radiation curves in the spectra of stars.</p>
      
      <a name="ch4"></a>
      <h1>Chapter 4</h1>
      <p><b>Color-Color Diagrams and Thermal Sources</b></p>
      <p>This section teaches students how to make and interpret a 
      color-color diagram, a common tool of astronomers. 
      Color-color diagrams can be hard to explain in words, but students can 
      click on the image to see what the axes on a color-color diagram are. Have 
      students study the diagram, and remind them that magnitudes decrease for 
      brighter stars. When students are comfortable with what color-color diagrams 
      are, move on to Explore 5.</p>
      <p>Explore 5 lets students make a color-color diagram for themselves, and 
      then use it to learn which stars can best be thought of as thermal 
      sources. To find the given stars, students should click the links, or use 
      the &quot;Find by ObjID&quot; feature of the Object Explorer. A new 
      window will open for the Object Explorer, and students should 
      read the magnitudes u,g,r,i,z from the second row next to the object's image.</p>
      <p>The project includes a link to SkyServer's How-To tutorial on Microsoft Excel. 
      If your students are more familiar with another graphing program, use that program 
      instead. You may wish to pause here to give a quick tutorial of the 
      program. Question 3 asks students which end of the color-color 
      diagram corresponds to hotter stars. If students get stuck, ask them to 
      think about only one axis at a time.</p>
      <p>Students will see a straight line trend that will deviate for the 
      coolest stars. Cool stars have atmospheres that absorb a lot of gas, so 
      they show a lot of stellar absorption lines in their spectra. Because their 
      spectra do not look like thermal radiation curves, these stars do not 
      behave as thermal sources.</p>
      <a name="ch5"></a>
      <h1>Chapter 5</h1>
      <p><b>Conclusion/Research Challenge</b></p>
      <p>This section introduces the Color project's Research Challenge. 
      The research challenge should not be done in the classroom, because it 
      is a completely open-ended exercise. Students think of an astronomical 
      research question that can be answered by studying star colors. They 
      develop their question, choose objects from the SDSS database to examine, 
      and perform all analyses needed to answer the question. Encourage 
      students to complete this exercise on their own, for fun. You may wish 
      to offer extra credit to students who do it. If they are interested in 
      doing the exercise, you should discuss their research 
      questions and approaches with them outside of class.</p>
      <p>The question asked should be a fairly simple question that can be 
      answered by examining 20-40 objects using a straightforward analysis. Most 
      likely, students will either make color-color diagrams or analyze peak 
      wavelengths of spectra to answer their question. Be sure that they use 
      color somehow in finding their answer. The Research Challenge lists a few 
      suggested questions that students can answer.</p>
      <p>When students finish the Research Challenge, tell them to
      <a href="mailto:raddick@pha.jhu.edu">E-mail their diagrams to us</a>, and we 
      may put it on the web site. We can use .gif and .jpg images, which can be 
      created with Adobe Photoshop, or with shareware image converters like
      <a onclick="window.open('http://www.5star-shareware.com/Graphics/Image-Editors/image-converter.html','offsite');" href="#conclusion">
      Image Converter</a>. We can also use Microsoft Excel (.xls) spreadsheet 
      files.</p>
      <p>The research projects in the Research Challenge can easily be extended 
      into Science Fair projects if students are interested. We encourage 
      students to use SDSS data in Science Fair projects, and we are collecting 
      a database of science fair projects that use SkyServer. If your students 
      decide to do science fairs with SkyServer, please
      <a href="mailto:raddick@pha.jhu.edu?subject=science fair">E-mail us</a> to 
      let us know.</p>
      <p>&nbsp;</p>
      <p>To see how the Color project correlates with national science and math learning goals, 
      click Next.</p>
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
      <img align="left" src="../../../images/previous.jpg"></a>
      <a href="correlations.aspx">
      <img align="right" src="../../../images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
