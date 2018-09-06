<%@ Page Title="" Language="C#" MasterPageFile="~/en/tools/QuickLook/QuickLook.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="SkyServer.Tools.QuickLook.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        div.content       
            { background-color: #ffffff; }
        table.content td  
            { font-size:9pt; font-family: arial,helvetica,sans-serif; }
        .h		            
            { background-color: #b0c4de; }
        .b		            
            { background-color: #eeeeee; }
        .t		            
            { background-color: #e0e0e0; }
        a.content		    
            { color: blue; text-decoration: underline; }
        a.content:hover	
            { color: blue; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <h2>Search options</h2>
        <p>

        By clicking on the different tabs at the gutter, you can search for individual objects based on<br>
        different criteria.
        <ul>
        <dl>
        <dt> <b>objId</b> <dd> is a 64 bit long hex number, composed of the rerun, run, camcol, field, obj
        <dt> <b>Ra,dec</b> <dd>is a position on the sky, expressed in decimal degrees. A search radius of <%=globals.EqSearchRadius%> arcmins<br>
		        is used. The nearest primary object in the SDSS is returned.
        <dt> <b>SpecObjId</b> <dd> is a 64 bit long number, composed of a plate, its mjd, and the fiber number.
        <dt> <b>5-part SDSS</b> <dd> is a long string, composed of run-rerun-camcol-field-obj, separated by a hyphen as shown.
        </dl>
        </ul>
    </div>
</asp:Content>
