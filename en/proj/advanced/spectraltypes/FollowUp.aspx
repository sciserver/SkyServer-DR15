<%@ Page Title="" Language="C#" MasterPageFile="SpectralTypesMaster.master" AutoEventWireup="true" CodeBehind="FollowUp.aspx.cs" Inherits="SkyServer.Proj.Advanced.SpectralTypes.FollowUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SpectralTypesContent" runat="server">
<STYLE>
	#hint	{position:absolute;left:760px;top:240px;}
</STYLE>
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Follow Up Projects</h1>
      <p>Another interesting phenomenon sometimes seen in SDSS data is 
      that of a multiple star system. Sometimes the "star" spectrum you see 
      actually comes from two or more stars orbiting each other. You may notice 
      some spectra with two or more peak wavelengths, indicating two or more temperatures. These 
      peaks could be due to the fact that you are actually looking at a multiple
      star system, and the stars have different temperatures. You may find 
      a white dwarf orbiting a type G or K star, for example. You always need 
      to keep in mind that any star you see may actually be a multiple star 
      system.</p>
     
     

      <p>The image below shows the spectrum of a double star system - notice the two 
      peaks in the thermal radiation curve. Astronomers estimate that about half the stars in the sky are part of 
      multiple star systems; however, if the smaller "companion star" is very faint and 
      close to the larger star, you may not detect its spectrum.</p>
     
            <table border="0" align=center cellpadding="0" cellspacing="0"><tr>
          <td>
         <A href="#graph" 
         onclick="window.open('images/full_588848901000331359.gif','','width=850,height=680,resizable,scrollbars');">
         <IMG src="images/588848901000331359.jpg">
         </A></td></tr><tr><td><p align="center"><span class=caption>
         Click on the image to see it full size (opens in a new window)</span></p></td></tr></table>

      <p>To learn more about this star, see its entry in the <a href="../../../tools/explore/obj.aspx?id=588848901000331359" alt="Object explorer entry 
      for the star with the spectrum displayed above" target="tools">Explore</a> tool. Can you see both stars in the image?</p>

      <p>The <a href="../../../tools/getimg/spectra.aspx" target="tools">Get Spectra</a> and 
      <a href="../../../tools/getimg/plate.aspx" target="tools">Plate Browser</a> tools offer you access to the spectra of 
      literally thousands of stars. Some stars in the SkyServer database do not 
      fit easily into any spectral type.</p>
      
      <p>Now, you are ready to use spectral types to conduct actual research projects in 
      astronomy. Here are a few of possible follow up projects. Try one of these projects, 
      or think of another question you would like to answer by classifying stars into 
      spectral types.</p>
      
      <table class=rchallenge width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Research Challenge 1</b>. Find a star cluster in the database. 
          Classify the stars in the cluster. Do you notice any distinct patterns of spectral 
          types?</p></td>
        </tr>
      </table>
      
      <p></p>
      
      <table class=rchallenge width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Research Challenge 2</b>. The SDSS primarily looks away from the plane of 
	  the Milky Way. 
          However, there are parts of the sky we are analyzing that are 
          substantially closer to the galactic plane. Do you notice any 
          differences in the types of stars you see in these different parts of 
          the sky?</p></td>
        </tr>
      </table>
      
      <p></p>    
      
      <table class=rchallenge width=600 cellpadding=5 cellspacing=0>
        <tr>
          <td><p><b>Research Challenge 3</b>. Look through the database for double stars. 
          How frequently do you find them? What are some of the common combinations you 
          find? How easy is it to separate their spectra?</p></td>
        </tr>
      </table>
      <p></p>
      <p><a href="mailto:raddick@pha.jhu.edu?subject=Stellar Spectra Project">
      E-mail</a> us your findings. We'll review all the results we get, 
      and we will post the best of them on these pages!</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="otherspectraltypes.aspx"><img align="left" src="../../images/previous.jpg"></a>
      <a href="results.aspx"><img align="right" src="../../images/next.jpg"></a>
      </td>
    </tr>
    
    <tr><td><p><FONT size=-3>Project designed by Robert Sparks</FONT></p></td></tr>
    <tr><td><p><FONT size=-3>Questions? Comments? Suggestions? E-mail 
    the <A href="mailto:raddick@pha.jhu.edu?subject=Feedback on Spectral Types Project">web designer</A>.</FONT></p></td></tr>
    
  </table>
</div>
</asp:Content>
