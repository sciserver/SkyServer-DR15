using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkyServer.Tools.Explore
{
    public partial class ExploreError : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the last error from the server
            Exception ex = Server.GetLastError();

            // Create a safe message
            string safeMsg = "A problem has occurred in the Explore tool. Please inform " + ConfigurationManager.AppSettings["helpdesk"].ToString() + ".";

            if (ex != null)
            {
                // Show Inner Exception fields for local access
                if (ex.InnerException != null)
                {
                    innerTrace.Text = ex.InnerException.StackTrace;
                    InnerErrorPanel.Visible = Request.IsLocal;
                    innerMessage.Text = ex.InnerException.Message;
                }
            }
            else
            {
                ex = new Exception(safeMsg);
            }
            // Show Trace for local access
            if (Request.IsLocal)
                exTrace.Visible = true;
            else
                ex = new Exception(safeMsg, ex);

            // Fill the page fields
            exMessage.Text = ex.Message;
            exTrace.Text = ex.StackTrace;

            // Log the exception and notify system operators
            ExceptionUtility.LogException(ex, "Generic Error Page");
            ExceptionUtility.NotifySystemOps(ex);

            // Clear the error from the server
            Server.ClearError();
        }
    }
}