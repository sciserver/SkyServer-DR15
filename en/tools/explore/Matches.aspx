<%@ Page Title="" Language="C#" MasterPageFile="ObjectExplorer.Master" AutoEventWireup="true" CodeBehind="Matches.aspx.cs" Inherits="SkyServer.Tools.Explore.Matches" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="Content2" ContentPlaceHolderID="OEContent" runat="server">

    <div id="neighbors" class="content">
    
    <table class="content">
    <tr><td>
    <h2>Other photometric observations (detections)</h2>
    <p class="content">Due to overlaps in imaging stripes, the SDSS sometimes observes the same 
    object more than once. In such cases, we select one observation as PRIMARY (mode=1). Each 
    astronomical object is assigned a thingID, and each time that "thing" is observed (detected 
    in SDSS imaging), it assigned a separate objID.</p>
    <p class="content">Information about each astronomical "thing" is stored in the 
    <a href="../../help/browser/browser.aspx?cmd=description+thingIndex+U" class='content'>thingIndex</a> 
    table; thingIndex is a thin coupling table designed only to connect repeat observations. 
    Information about each individual observation (detection) is in the 
    <a href="../../help/browser/browser.aspx?cmd=description+photoObjAll+U" class='content'>photoObjAll</a> table. (Note that 
    <a href="../../help/browser/browser.aspx?cmd=description+photoObj+U" class='content'>photoObj</a> contains only the primary [mode=1] and secondary [mode=2] observations of each "thing.") 
    The <a href="../../help/browser/browser.aspx?cmd=description+detectionIndex+U" class='content'>detectionIndex</a> table connects each objID to the thingID it corresponds with.</p>

    <h3>This detected object and its associated "Thing" (Primary observation)</h3>
    </td></tr>
    <tr><td>
    <%  
       
        master.showHTable(ds_match1, 400, "PhotoObj");
    %>
    <h3>Other Observations of this "Thing"</h3>
    <%        
        master.showHTable(ds_match2, 400, "PhotoObj");        
     %>
    </td></tr></table>
    </div>
</asp:Content>
