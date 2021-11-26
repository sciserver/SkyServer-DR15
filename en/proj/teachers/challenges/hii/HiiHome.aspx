<%@ Page Title="" Language="C#" MasterPageFile="HiiMaster.master" AutoEventWireup="true" CodeBehind="HiiHome.aspx.cs" Inherits="SkyServer.Proj.Teachers.Challenges.Hii.HiiHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HiiContent" runat="server">
<div id="transp">
  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
      <p></p>
      <h1>Challenge 1: A Catalog of HII regions</h1>
      <p>This challenge asks students to create a catalog of HII regions, 
      the star forming regions of galaxies. SDSS astronomers could use such a 
      catalog to study star formation and to test future updates of SDSS software.</p>
      <p>Students write a query - a short computer program - to search through SDSS 
      for objects classified as galaxies that might be HII regions. Students will 
      have to visually examine every object to verify that it 
      is a HII region. This challenge is best undertaken by a group of 
      students, so they can divide up their list of potential candidates as they 
      verify them.</p>
      
      <a name="goals"></a>
      <h1>Project Goals</h1>
      <p>By the end of the project, students should be able to:</p>
      <ul>
        <li><font face="Arial" color="#FFFAFA">Define an HII region and 
        explain its importance to astronomers
        <li><font face="Arial" color="#FFFAFA">Describe the color 
        characteristics of an HII region and how its colors differ from the colors 
        of a typical galaxy</font></li>
        <li><font face="Arial" color="#FFFAFA">Create SQL queries to search and 
        retrieve information on likely HII regions</font></li>
        <li><font face="Arial" color="#FFFAFA">Sort data to find the objects 
        most likely to be HII regions</font></li>
        <li><font face="Arial" color="#FFFAFA">Identify prominent 
        spectral lines in HII regions</font></li>
        <li><font face="Arial" color="#FFFAFA">Create a useful catalog of 
        astronomical objects</font></li>
        <li><font face="Arial" color="#FFFAFA">Effectively communicate how their 
        data were collected so that others may use and refer to their catalog</font></li>
        <li><font face="Arial" color="#FFFAFA">Create and carry out a complex
        independent research project</font></li>
      </ul>
      
      <a name="background"></a>
      <h1>Background Knowledge</h1>
      <p>Students should be familiar with the types of galaxies and with some of 
      their characteristics. They also should be comfortable working with 
      the SDSS color system and know about the magnitude scale. Students 
      will need to use this knowledge to make educated guesses about the colors of HII 
      regions. The <a href="../../advanced/colors">Colors</a> and <a href="../../advanced/galaxies">
      Galaxies</a> projects give good introductions to these concepts.</p>
      <p>In this challenge, students will look at the spectra of candidate HII regions. They 
      should know how to retrieve spectra from SkyServer using the <a href="../../../../tools/getimg/plate.aspx">Get Plates</a> 
      tool. Students should be familiar with spectral emission lines, since these 
      lines are the dominant feature in the spectrum of an HII region.</p>
      <p>Computer skills are very important for this challenge. Students will need 
      to create SQL queries that return data that are likely to include HII 
      regions. Students will need to know how to filter data in the "where" 
      block of the query, and how to retrieve data from multiple tables in the 
      same database. You may wish to work through one of the SQL tutorials so that you 
      may answer student questions.</p>
      <p>Students will need to know how to use SkyServer's Navigation tool and 
      Object Explorer to look up images and Spectra of various objects. For some objects, they may 
      wish to download the images and look at them using an image processing 
      program such as <a target="_blank" href="http://www.astrosurf.com/buil/us/iris/iris.htm">IRIS</a> 
      to get a better view. See the <a href="../../advanced/processing">Image Processing</a> 
      project for more information on how to use IRIS.</p>
      
      <a name="structure"></a>
      <h1>Project Structure</h1>
      <p>The first page of the student project teaches students what HII regions are. 
      The second page describes some of the 
      characteristics of HII regions so students can form some ideas on the best 
      way to search the data. The third page teaches students how to query SDSS data 
      with SkyServer's Query tool. The fourth page tells students how to tell if a candidate 
      object is actually an HII region.</p>
      <p>The goal of this challenge is to create a catalog of HII regions that 
      could be used for research. SDSS astronomers just published a similar 
      catalog of quasars from SDSS's early data release. You can see the research paper 
      where they explain their results <a target="_blank" href="https://arxiv.org/PS_cache/astro-ph/pdf/0012/0012449.pdf">
      here</a>. (The paper is a .pdf file, and you will need Adobe Acrobat Reader to view it. 
      If you do not already have the reader, you can download it free from 
      <a target="_blank" href="http://www.adobe.com/products/acrobat/readstep2.html">Adobe's 
      web site</a>.) You may wish to show this paper to students to give them an idea 
      of what their catalogs could be used for.</p>
      </p>
      <p></p>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td><a href="specifics.aspx">
      <img align="right" src="images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
