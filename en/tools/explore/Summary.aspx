<%@ Page Title="" Language="C#" MasterPageFile="ObjectExplorer.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="SkyServer.Tools.Explore.Summary" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="Head1" ContentPlaceHolderID="OEHead" runat="server">
    <script type="text/javascript" src="./javascript/explore.js"></script>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="OEContent" runat="server">

    <%--<asp:ContentPlaceHolder ID="ContentPlaceHolder1"  runat="server">--%>
                    <%@ Register TagPrefix="login" TagName="loginParam" Src="../../Loginfloat.ascx"  %>
                    <login:loginParam ID="loginParams" runat="server"/>
                <%--</asp:ContentPlaceHolder> --%>

    <%--<%--This is for Metadata --%>
    <%@ Register TagPrefix="metadata" TagName="MetadataParameters" Src="./ExploreControls/MetaDataControl.ascx"  %>

    <%--This section for Imaging Parameters--%>
    <%@ Register TagPrefix="imaging" TagName="ImagingParameters" Src="./ExploreControls/ImagingControl.ascx" %>

    <%--This section for CrossId table Results--%>
    <%@ Register TagPrefix="crossid" TagName="CrossId" Src="./ExploreControls/CrossIdControls.ascx" %>

    <%--This section for Spectral Parameters--%>
    <%@ Register TagPrefix="spectral" TagName="SpectralControl" Src="./ExploreControls/SpectralControl.ascx" %>

    <%--This Section for APOGEE parameters--%>
    <%@ Register TagPrefix="apogee" TagName="ApogeeControl" Src="./ExploreControls/ApogeeControl.ascx" %>

    <%--This Section for MANGA parameters--%>
    <%@ Register TagPrefix="manga" TagName="MangaControl" Src="./ExploreControls/MangaControl.ascx" %>


   <div class="content">
   <metadata:MetadataParameters ID="MetadataParameters1" runat="server"/>
   <imaging:ImagingParameters ID="ImagingParameters1" runat="server" /> 
   <crossid:CrossId ID="CrossId1" runat="server" />  

    <!--div id="crossid22"> dd </!--div-->   

   <spectral:SpectralControl ID="SpectralControl1" runat="server" /> 
   <apogee:ApogeeControl ID="ApogeeControl1" runat="server" />
   <manga:MangaControl ID="MangaControl1" runat="server" />
   </div>  


</asp:Content>

