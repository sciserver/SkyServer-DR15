<%@ Page Title="" Language="C#" MasterPageFile="QuickLook.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="SkyServer.Tools.QuickLook.Summary" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        table.content td  { font-size:9pt; font-family: arial,helvetica,sans-serif; }
        a.content { color: blue; text-decoration: underline; }
        a.content:hover	{ color: blue; }
        .h		{ background-color: #b0c4de;}
        .b		{ background-color: #eeeeee;}
        .t		{ background-color: #e0e0e0;}	
    </style>
    <script type="text/javascript">

        function showNavi(ra, dec) {
            var url = "../chart/navi.aspx?ra=" + ra + "&dec=" + dec;
            var w = window.open(url, "NAVIGATE");
            w.focus();
        }
    </script>

</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%@ Register TagPrefix="login" TagName="loginParam" Src="../../Loginfloat.ascx"  %>
    <login:loginParam ID="loginParams" runat="server"/>

    <%--<%--This is for Metadata --%>
    <%@ Register TagPrefix="metadata" TagName="MetadataParameters" Src="./QuickLookControls/MetaDataControl.ascx"  %>

   <div class="content">
   <metadata:MetadataParameters ID="MetadataParameters1" runat="server"/>
   </div>  

</asp:Content>

