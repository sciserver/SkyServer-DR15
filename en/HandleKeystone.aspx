<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HandleKeystone.aspx.cs" Inherits="SkyServer.en.handleKeystone" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>--%>
<%@ Import Namespace="System.Web" %>
<%
	try{string userid = Session["userid"].ToString().Trim();
    FormsAuthentication.SignOut();

    //for (int x = 0; x < Global.users.Count; x++)
    //{
    //    if (Global.users[x].ToString().Trim().CompareTo(userid) == 0)
    //        Global.users.Remove(Global.users[x]);
    //}
	Session.Clear();}catch{}
    Session.Abandon();

    if (Request.Cookies["Keystone"] != null)
    {
      HttpCookie fake = new HttpCookie("Keystone");
      fake.Expires = DateTime.Now.AddDays(-1);
      Response.Cookies.Add(fake);

      //Response.Redirect(ConfigurationManager.AppSettings["Keystone.Portal"] + "?logout=true");
      %>
        <script>
            window.location.href = "<%=ConfigurationManager.AppSettings["Keystone.Logout"] %>";
        </script>
      <%
    }
    else
    {
      %>
        <script>
            window.location.href = "<%=ConfigurationManager.AppSettings["Keystone.Logout"] %>";
        </script>
      <%
      //Response.Redirect("default.aspx");
    }
    
%>