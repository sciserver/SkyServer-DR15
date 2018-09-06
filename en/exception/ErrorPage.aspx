<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="../HomeMaster.master" CodeBehind ="ErrorPage.aspx.cs" Inherits="SkyServer.ErrorPage" %>
<%@ Import Namespace="SkyServer.Exceptions" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="content">
     <h2>An error has occurred in Skyserver</h2>
    <%if(!string.IsNullOrEmpty(ErrorMessage)){ %>
    <div style="color: yellow; font-weight: bold">
        <%=ErrorMessage%>
    </div>
     <%} %>

<br>
<br> 
         <form method ="POST" target="_blank" name="bugreportform" action="<%=ConfigurationManager.AppSettings["BugReportURL"]%>" >
         
         <%=HiddenInputList %>

         <input id="submit" type="submit" value="Click to Report Error">

         </form>

    <p>
      or inform <%=ConfigurationManager.AppSettings["helpdesk"].ToString()%><br />
    </p>

 </div>    
</asp:Content>
