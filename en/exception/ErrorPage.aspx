<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="../HomeMaster.master" CodeBehind ="ErrorPage.aspx.cs" Inherits="SkyServer.ErrorPage" %>
<%@ Import Namespace="SkyServer.Exceptions" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="content">
     <h2>Sorry, something went wrong.</h2>
     <p>SkyServer could not complete your request. Please check the values you submitted and try again later.</p>

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
