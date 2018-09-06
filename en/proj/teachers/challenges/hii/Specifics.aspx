<%@ Page Title="" Language="C#" MasterPageFile="HiiMaster.master" AutoEventWireup="true" CodeBehind="Specifics.aspx.cs" Inherits="SkyServer.Proj.Teachers.Challenges.Hii.Specifics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HiiContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Teacher's Guide to Specific Sections</h1>
      
      <a name="catalog"></a>
      <p><font size="4">A Catalog of HII Regions</font></p>
      <p>This section introduces HII regions and how the SDSS finds them. 
      The SDSS does not intentionally search for HII regions, but sometimes they are 
      misidentified as galaxies, and therefore are sometimes selected for 
      spectral analysis. This misidentification happens mostly with HII regions 
      in large, extended spiral galaxies.</p>
      <p>You may wish to discuss emission lines before students begin their 
      search. HII regions have very strong hydrogen emission lines, but 
      sometimes lines from other elements, notably oxygen, are also present.</p>
      <p>The cores of active galactic nuclei (AGN) also have strong hydrogen emission lines, 
      and have similar colors to HII regions. This is why students (and other researchers) 
      must visually inspect possible HII regions.</p>
      <p>Suspected HII regions are often difficult to tell from active galactic nuclei 
      from colors or spectra. However, Photo seems to have the most difficulty with 
      HII regions of large, extended galaxies, so it is usually easy to tell the difference 
      visually.</p>
      
      <a name="characteristics"></a>
      <p><font size="4">Characteristics of HII Regions</font></p>
      <p>Because HII regions have many protons and electrons recombining to 
      form hydrogen atoms, they tend to give off a lot of ultraviolet light. 
      If your students are not comfortable with this concept, pause to explain it, 
      pointing to the animation of the electron falling into a lower energy level.</p>
      <p>Because of the light that HII regions emit, they frequently stand out by 
      their colors. Looking at the U-Z color can give you a lot of HII region 
      candidates. The U-Z color of an HII region will be very low due to the 
      large amount of ultraviolet light they emit. The U-G, U-R, and U-I colors 
      tend to be low as well. Generally, the difference is not as large in U-G. 
      For HII regions with particularly strong H<sub><font face="symbol">a</font></sub> lines, 
      the U-R values are not as low, which means that students could miss some HII regions.</p>
      
      <a name="query"></a>
      <p><font face="Arial" size="4">Writing a Query</font></p>
      <p>SkyServer's query tool returns a maximum of 1,000 
      entries, so it is important to write queries carefully. 
      There are probably about 250 - 300 HII regions in the database (no one has 
      inspected them all yet), so a well written query can retrieve them all in 
      one shot. Students will probably take a few tries to develop an effective query.</p>
      <p>Have students study the <a href="../../../../help/docs/browser.aspx">
      Object Browser</a> to familiarize themselves with how SkyServer data are organized. 
      To find candidate HII regions, students will need to retrieve data from more 
      than one data table. To be sure you are looking at the same object, you have to use a join. 
      Note the command phototag.objId = specObj.objID in the explanation. 
      This command is called a "join"; it makes sure that the object ID (objID) is 
      the same in each table. In other words, a join ensures that the query tool 
      is searching for information on the same object in the two tables. If students 
      use multiple tables, they will need to write a join between each table and every 
      other table. For example, plateID ensures that the same object is found 
      in the specObj table and the plate table.</p>
      <p>Students will not initially have a much insight into where to draw 
      their color cuts. Therefore, they 
      may wish to write a query that looks at a smaller part of the sky using 
      BETWEEN in the WHERE block (for example, ra BETWEEN 0 and 45). They can use 
      this smaller query to refine which colors they will use to look for HII regions.</p>
      <p>Once students figure out the colors of most HII regions, 
      they can write queries to search for galaxies with certain colors that are 
      likely to be HII regions. A sample query is shown below. It 
      searches for galaxies with u - z &lt; 2.</p>
      
      <table border="1" cellpadding="1" cellspacing="1" width="100%" bgcolor="#552255">
        <tr>
          <td>      
                 
          <p>select</p>
          <p>plate.plate, specObj.fiberID, photoObj.u, photoObj.g, photoObj.r, 
          photoObj.i, photoObj.z, photoObj.ra, photoObj.dec</p>
	      <p>from</p>
	      <p>photoObj, specObj, plate</p>
          <p>where</p>
          <p>photoObj.objId = specObj.objID AND specObj.plateID = plate.plateID AND 
          specObj.class = 2 and photoObj.u - photoObj.z < 2</p>

		   </td>
		 </tr>
	   </table>
		      
	  <p>SkyServer is very picky about syntax. Although it is not case 
      sensitive (caps and small letters are equivalent), any small mistake will return 
      an error. Even adding an extra space where there shouldn't be one will 
      cause an error message. Troubleshooting queries can sometimes be difficult. 
      Try comparing the syntax of your students' queries to the syntax of the 
      sample query above. If you have too much difficulty, 
      <a href="mailto:raddick@pha.jhu.edu?subject=HII query troubleshooting">E-mail us</a> both the query 
      and the error message, and we will try to help.</p>
      
      <a name="identifying"></a>
      <p><font size="4">Identifying HII Regions</font></p>
      
      <p>As students inspect HII regions to build up their catalogs, remind them 
      that accurate and clear record keeping is extremely important. Students need 
      to think about what information they should put in their catalogs to help other people 
      find and identify their objects. They should also include a few 
      paragraphs on how they selected their data (for instance, &quot;We searched for 
      galaxies with u - r &lt; 2&quot;). They also should keep notes of 
      objects that they had difficulty classifying, and the reasons for their 
      difficulty. Students should realize that this does not represent a failure on their 
      parts. Frequently the most difficult objects to study turn out to be the 
      most interesting objects from which new discoveries are made. Rather than a 
      failure, a student's difficulty could represent a success at finding something 
      particularly unusual or interesting!</p>
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
