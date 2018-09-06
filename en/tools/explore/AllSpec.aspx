<%@ Page Title="" Language="C#" MasterPageFile="ObjectExplorer.Master" AutoEventWireup="true" CodeBehind="AllSpec.aspx.cs" Inherits="SkyServer.Tools.Explore.AllSpec" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="SkyServer.Tools.Explore"%>
<asp:Content ID="Content2" ContentPlaceHolderID="OEContent" runat="server">

<div id="neighbors" class="content">
<table class="content">
    <table class="content">
    <tr><td>
    <h2>Other spectra</h2>
    <p class="content">The SDSS often takes repeat spectra of the same object. Each time that 
    astronomical object is spectroscopically 
    observed with any of the spectrographs connected to the SDSS telescope, it is assigned a 
    separate specObjID. We then select the best spectrum and assign it as <em>sciencePrimary</em>.</p>

    <p class="content">Information about each spectroscopic observation is stored in the 
    <a href="../../help/browser/browser.aspx?cmd=description+SpecObjAll+U" class='content'>specObjAll</a> table. 
    The <a href="../../help/browser/browser.aspx?cmd=description+SpecObj+U" class='content'>specObj</a> view 
    contains only data for spectra assigned as sciencePrimary.</p>

    <p class="content">The table below shows all spectra that were measured for this object.</p>        
       <h3>All Spectra of this Object</h3>

<%     
   
    master.showHTable(ds_spec1, 720,"AllSpectra");
%>

    <h3>Flux-Matched Spectra of this Object</h3>

<%     
    
    master.showHTable(ds_spec2, 720, "AllSpectra");    
%>
</td></tr>
</table>
</div>
</asp:Content>
