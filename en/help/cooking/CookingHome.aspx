<%@ Page Title="" Language="C#" MasterPageFile="../HelpMaster.master" AutoEventWireup="true" CodeBehind="CookingHome.aspx.cs" Inherits="SkyServer.Help.Cooking.CookingHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HelpContent" runat="server">
<div id="title">Cooking with Sloan</div>

<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="5">

<tr><td>

<p>These guides are a series of "recipes" for using Sloan Digital Sky Survey data to accomplish common 
tasks in astronomy. 
<%
if( globals.Access == "public" ) 
        Response.Write("You will learn how to accomplish these tasks using the same tools that professional astronomers use.");  
	
%>
</p>

<p>Each guide is organized around questions of "How do I...", such as "How do I get an image and spectrum of my 
favorite object? The guide for each task will take you step-by-step through how to accomplish that task, using 
different <a href="../../../tools">tools</a> of the SkyServer web site.</p>

<p>We encourage you to open the tools from the 
links provided in the guides and follow along as you read. Each guide also has a printable version - click on 
the Flash or PDF icon on the first page of the guide.</p>

<p>Click on one of the categories below to see the guides. Bon appetit!</p>

<table width="100%" border="0" cellpadding="2" cellspacing="2">
  <tr>
    <th width="33%" class="menuheadlink"><a href="general/">General tasks</a></span></th>
    <th width="33%" class="menuheadlink"><a href="solarsystem">Solar System</a></th>
    <th width="33%" class="menuheadlink"><a href="stars">Stars</a></th>
  </tr>
  <tr>
    <th width="34%" class="menuheadlink"><a href="galaxies">Galaxies</a></th>
    <th width="34%" class="menuheadlink"><a href="quasars">Quasars/Cosmology</a></th>
    <th width="34%" class="menuheadlink"><a href="labs">Teaching/Labs</a></th>
  </tr>
</table>

<p>&nbsp;</p>

<table border="1" cellpadding="2" cellspacing="2">
  <tr>
    <th>Category</th>
    <th>Description</th>
    <th>Guides: How do I...</th>
  </tr>
  <tr>
    <td valign="top"><span class="menuheadlink"><a href="general/">General tasks</a></span></td>
    <td valign="top">Tasks that are important in all areas of astronomy</td>
    <td valign="top">
      <ul>
        <li>Get an image and spectrum of my favorite object?</li>
        <li>Find out if SDSS's imaging data for an object are reliable?</li>
        <li>Find data for all objects in a given RA/Dec/Magnitude/Absolute Magnitude range?</li>
        <li>Find images and spectra for all objects in a given RA/Dec/Magnitude/Absolute Magnitude range?</li>
        <li>Upload my own data to see what the SDSS knows about those objects?</li>
        <li>Get a random subset of the data?</li>
        <li>Find closely paired objects?</li>
        <li>Create a finding chart for my telescope?</li>
      </ul>
    </td>  
  </tr>
  <tr>
    <td valign="top"><span class="menuheadlink"><a href="solarsystem/">Solar System</a></span></td>
    <td valign="top">Tasks that are useful to Solar System research</td>
    <td valign="top">
      <ul>
        <li>Find moving objects consistent with asteroids?</li>
      </ul>
    </td>  
  </tr>  
  <tr>
    <td valign="top"><span class="menuheadlink"><a href="stars/">Stars</a></span></td>
    <td valign="top">Tasks that are useful to stellar research</td>
    <td valign="top">
      <ul>
        <li>Find stars that have been seen more than once?</li>
        <li>Find star spectra from the SDSS’s SEGUE survey?</li>
        <li>Find cataclysmic variables?</li>
      </ul>
    </td>  
  </tr>    
  <tr>
    <td valign="top"><span class="menuheadlink"><a href="galaxies/">Galaxies</a></span></td>
    <td valign="top">Tasks that are useful to galactic research</td>
    <td valign="top">
      <ul>
        <li>Find optical data for 2MASS galaxies?</li>
      </ul>
    </td>  
  </tr>  
  <tr>
    <td valign="top"><span class="menuheadlink"><a href="quasars/">Quasars/<br />Cosmology</a></span></td>
    <td valign="top">Tasks that are useful to research into quasars and cosmology</td>
    <td valign="top">
      <ul>
        <li>Find data for quasars?</li>
      </ul>
    </td>  
  </tr> 
  <tr>
    <td valign="top"><span class="menuheadlink"><a href="labs/">Teaching/<br />Labs</a></span></td>
    <td valign="top">Tasks that are useful for teaching and developing lab activities</td>
    <td valign="top">
      <ul>
        <li>Create a Hubble Diagram to show the expanding universe?</li>
      </ul>
    </td>  
  </tr>   
</table>


</td></tr>
</table>
</div>
</asp:Content>
