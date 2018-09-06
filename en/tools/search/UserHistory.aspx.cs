using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer.Tools.Search;
using System.Data;
using System.Globalization;
using System.Configuration;



namespace SkyServer.en.tools.UserHistory
{

    public partial class GetHistory : System.Web.UI.Page
    {
        protected Globals globals;

        public bool IsValidUser = false;

        public ResponseREST rs = null;

        string SortExpr = "Time DESC";
        public DateTime DateLow;
        public DateTime DateHigh;
        public string searchtool = null;
        public int RowsPerPage;
        private string requestURI = "";
        public Boolean HasSubmittedForm;
        public int RowsPerPageDefault = Int32.Parse(ConfigurationManager.AppSettings["RowsPerPageDefault"]);// default value of number of user history rows per displayed page.
        public int TopRowsDefault = Int32.Parse(ConfigurationManager.AppSettings["TopRowsDefault"]);// default value of number of user history rows per displayed page.
        public int MaxRowsDisplayedDefault = Int32.Parse(ConfigurationManager.AppSettings["MaxRowsDisplayedDefault"]);// places a limit in the number of rows of the results table.
        public string UTC = ConfigurationManager.AppSettings["UTC"];// time zone of the server where the logging takes place
        
        public int NumRows;
        public int[] RowIndex;
        public bool PageHasError = false;
        public Exception Exception;
        bool DoShowAllHistory = bool.Parse(ConfigurationManager.AppSettings["DoShowAllHistory"]);//default value. takes values true or false, depending if all user history wanted to be shown.
        //private DataView DV;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                IsValidUser = CheckKeystoneLogin();// we have to authenticate the token or read the cookie in here, since the LoginFloat loads only after this page.
                
                if (IsValidUser)
                {
                    rs = new ResponseREST();
                    globals = (Globals)Application[Globals.PROPERTY_NAME];
                    requestURI = globals.UserHistoryWS;

                    DateTime DateLowDefault = (DateTime.Now.Date - new TimeSpan(7, 0, 0, 0, 0));//one week ago at 00:00
                    DateTime DateHighDefault = DateTime.Now.Date + new TimeSpan(0, 23, 59, 59, 999);// today right before midnight

                    try
                    {
                        HasSubmittedForm = bool.Parse(Session["HasSubmittedUserHistoryForm"].ToString());
                    }
                    catch
                    {
                        HasSubmittedForm = false;
                    }

                    try
                    {
                        //NumRows = ((DataSet)(Session["UserHistoryDataSet"])).Tables[0].Rows.Count;
                        NumRows = Int32.Parse(Session["NumRows"].ToString());
                    }
                    catch
                    {
                        NumRows = 0;
                    }

                    try
                    {
                        RowsPerPage = Int32.Parse(Session["RowsPerPage"].ToString()) > 0 ? Int32.Parse(Session["RowsPerPage"].ToString()) : RowsPerPageDefault; //RowsPerPageButton.Text = RowsPerPage.ToString();
                        //RowsPerPage = Int32.Parse(RowsPerPageButton.Text);
                    }
                    catch
                    {
                        RowsPerPage = RowsPerPageDefault;
                        RowsPerPageButton.Text = RowsPerPage.ToString();
                    }
                    Session["RowsPerPage"] = RowsPerPage;

                    try
                    {
                        DateLow = DateTime.Parse(Session["DateLow"].ToString());
                    }
                    catch
                    {
                        DateLow = DateLowDefault;
                    }

                    try
                    {
                        DateHigh = DateTime.Parse(Session["DateHigh"].ToString());
                    }
                    catch
                    {
                        DateHigh = DateHighDefault;
                    }

                    
                    if (!HasSubmittedForm & !Request.Form.HasKeys())//executes this block only when the page loads for the first time.
                    {
                        string Parameters = "TaskName=Skyserver.UserHistory&format=dataset&DoShowAllHistory=" + DoShowAllHistory.ToString() + "&limit=" + TopRowsDefault.ToString();
                        CreateTable(Parameters);
                        PopulateDropDownList();
                        RowsPerPageButton.Text = RowsPerPage.ToString();

                        if (NumRows > 0)
                        {
                            //string 
                            DateLow = DateTime.ParseExact(((DataSet)(Session["UserHistoryDataSet"])).Tables[0].Rows[NumRows - 1]["Time"].ToString(), "yyyy-MM-dd HH:mm:ss UTCzzz", CultureInfo.InvariantCulture);
                        }
                        else
                            DateLow = DateLowDefault;
                        DateHigh = DateHighDefault;
                        Session["DateLow"] = DateLow;
                        Session["DateHigh"] = DateHigh;
                    }
                    else if (!String.IsNullOrEmpty(Request.Form["NewDateSubmmitingSection"]))//executes this block only only after the user clicks on the submit button with a time range.
                    {
                        Session["HasSubmittedUserHistoryForm"] = "true";
                        HasSubmittedForm = true;

                        try
                        {
                            //old RowsPerPage = Int32.Parse(Request.Form["RowsPerPage"]) > 0 ? Int32.Parse(Request.Form["RowsPerPage"]) : RowsPerPageDefault;
                            //   RowsPerPage = Int32.Parse(RowsPerPageButton.Text) > 0 ? Int32.Parse(RowsPerPageButton.Text) : RowsPerPageDefault;
                        }
                        catch
                        {
                            // RowsPerPage = RowsPerPageDefault; 
                        }

                        try
                        {
                            DateLow = DateTime.Parse(Request.Form["date_low"]);
                        }
                        catch
                        {
                            DateLow = DateLowDefault;
                        }

                        try
                        {
                            DateHigh = DateTime.Parse(Request.Form["date_high"]);
                        }
                        catch
                        {
                            DateHigh = DateHighDefault;
                        }

                        Session["DateLow"] = DateLow;
                        Session["DateHigh"] = DateHigh;

                        //getting the table
                        string Parameters = "TaskName=Skyserver.UserHistory&format=dataset&DoShowAllHistory=" + DoShowAllHistory.ToString() + "&date_low=" + DateLow.ToString() + "&date_high=" + DateHigh.ToString() + "&limit=" + MaxRowsDisplayedDefault.ToString();
                        CreateTable(Parameters);
                        PopulateDropDownList();
                        RowsPerPageButton.Text = RowsPerPage.ToString();

                    }
                    
                    //Session["RowsPerPage"] = RowsPerPage;
                }//end if(HasToken)
            }
            catch (Exception ex)
            {
                Exception = ex; PageHasError = true;
                throw (ex);// will be send and catched in ErrorPage.aspx. If commented out, a custom error message will appear in UserHistory.aspx
            }

        }


        private bool CheckKeystoneLogin()
        {
            bool isValidUser = false;

            string token = null;
            token = Request["token"];
            if(!String.IsNullOrEmpty(token))
            {
                    try
                    {
                        var userAccess = Keystone.Authenticate(token);
                        string userid = userAccess.User.Name;
                        HttpCookie Cookie = new HttpCookie("Keystone");
                        Cookie["token"] = token;
                        Session["USERID"] = userid;
                        Response.Cookies.Add(Cookie);
                        isValidUser = true;
                    }
                    catch { }
            }
            else
            {
                try
                {
                    HttpCookie Cookie = Request.Cookies["Keystone"];
                    if (Cookie != null)
                    {
                        if (Cookie["token"] != null || !Cookie["token"].Equals(""))
                        {
                            // this checks the token is not expired
                            token = Cookie["token"];
                            var userAccess = Keystone.Authenticate(token);
                            string userid = userAccess.User.Name;
                            isValidUser = true;
                        }
                    }
                }
                catch { isValidUser = false; }
            }
            return isValidUser;
        }


        protected void Page_Unload(object sender, EventArgs e)
        {
            //Session.Remove("HasSubmittedUserHistoryForm");
            Session["HasSubmittedUserHistoryForm"] = false;
        }



        private void CreateTable(string Parameters)
        {
            try
            {
                Session["UserHistoryDataSet"] = rs.GetObjectInfoFromWebService(requestURI, Parameters);//initialize dataset
                DataView DV = ((DataSet)(Session["UserHistoryDataSet"])).Tables[0].DefaultView;//initialize dataview
                DV.Sort = SortExpr;
                ViewState["SortExpr"] = SortExpr;
                Session["UserHistoryDataView"] = DV;

                NumRows = ((DataSet)(Session["UserHistoryDataSet"])).Tables[0].Rows.Count;
                Session["NumRows"] = NumRows;
                //QueryGridView.DataSource = GetView();
                QueryGridView.DataSource = DV;
                QueryGridView.PageSize = RowsPerPage;
                QueryGridView.DataBind();
                /*
                for (int i = 0; i < QueryGridView.Columns.Count - 1; i++)
                {
                    TableCell tableCell = QueryGridView.HeaderRow.Cells[i];
                    Image img = new Image();
                    img.ImageUrl = "./img/asc.gif";
                    tableCell.Controls.Add(img);
                }
                */
            }
            catch (Exception ex)
            {
                //throw new Exception(ex.Message);
                Exception = ex; PageHasError = true;
            }
        }

        private DataView GetView()
        {
            //DataView dvEmp = ResultSet.Tables[0].DefaultView;
            //DV = ((DataSet)(Session["UserHistoryDataSet"])).Tables[0].DefaultView;
            DataView DV = (DataView)Session["UserHistoryDataView"];
            DV.Sort = ViewState["SortExpr"].ToString();
            Session["UserHistoryDataView"] = DV;
            return DV;
        }

        protected void Search(object sender, EventArgs e)
        {
            try
            {
                string SelectWithinRows = "";
                if (!String.IsNullOrEmpty(SearchParameters.Text))
                {
                    SelectWithinRows = "Parameters like '%" + SearchParameters.Text + "%' ";
                }
                if (ToolsListBox.SelectedIndex >= 0)
                {
                    if (String.IsNullOrEmpty(SearchParameters.Text))    
                        SelectWithinRows += "Application in (";
                    else
                        SelectWithinRows += " and Application in (";

                    for (int i = 0; i < ToolsListBox.Items.Count; i++)
                    {
                        if (ToolsListBox.Items[i].Selected)
                            SelectWithinRows += "'" + ToolsListBox.Items[i].Text + "',";
                    }
                    SelectWithinRows = SelectWithinRows.Substring(0, SelectWithinRows.Length - 1);
                    SelectWithinRows += ")";
                }
                DataView DV = ((DataSet)(Session["UserHistoryDataSet"])).Tables[0].DefaultView;
                DV.RowFilter = SelectWithinRows;
                DV.Sort = ViewState["SortExpr"].ToString();

                Session["UserHistoryDataView"] = DV;// save back the view adjusted now to the new filtering scheme.
                QueryGridView.DataSource = DV;
                QueryGridView.PageSize = RowsPerPage;
                QueryGridView.DataBind();
                NumRows = DV.Count;
                Session["NumRows"] = NumRows;
            }
            catch (Exception ex)
            {
                Exception = ex; PageHasError = true;
            }
        }

        protected void ResetSearch(object sender, EventArgs e)
        {
            try
            {
                DataView DV = ((DataSet)(Session["UserHistoryDataSet"])).Tables[0].DefaultView;
                DV.RowFilter = null;
                DV.Sort = ViewState["SortExpr"].ToString();
                Session["UserHistoryDataView"] = DV;// save back the view to be the default view of the dataset, although keeping the last column ordering scheme.
                QueryGridView.DataSource = DV;
                QueryGridView.PageIndex = 0;
                QueryGridView.PageSize = RowsPerPage;
                QueryGridView.DataBind();
                NumRows = DV.Count;
                Session["NumRows"] = NumRows;
                SearchParameters.Text = "";
                ToolsListBox.ClearSelection();
            }
            catch (Exception ex)
            {
                Exception = ex; PageHasError = true;
            }
        }

        protected void ChangeRowsPerPage(object sender, EventArgs e)
        {
            try 
            {
                RowsPerPage = Int32.Parse(RowsPerPageButton.Text) > 0 ? Int32.Parse(RowsPerPageButton.Text) : RowsPerPageDefault; 
            }
            catch
            {
                RowsPerPage = RowsPerPageDefault;
            }
            RowsPerPageButton.Text = RowsPerPage.ToString();


            Session["RowsPerPage"] = RowsPerPage;
            //DV = ((DataSet)(Session["UserHistoryDataSet"])).Tables[0].DefaultView;
            //DV.RowFilter = "";
            //DV.RowStateFilter = DataViewRowState.ModifiedCurrent;
            DataView DV = (DataView)Session["UserHistoryDataView"];
            QueryGridView.DataSource = DV;
            QueryGridView.PageIndex = 0;
            QueryGridView.PageSize = RowsPerPage;
            QueryGridView.DataBind();
        }

        protected void ChangeGridPageIndex(object sender, GridViewPageEventArgs e)
        {
            try
            {
                DataView DV = (DataView)Session["UserHistoryDataView"];
                QueryGridView.PageIndex = e.NewPageIndex;
                QueryGridView.DataSource = DV;
                QueryGridView.DataBind();
            }
            catch (Exception ex)
            {
                Exception = ex; PageHasError = true;
            }

        }


        protected void GoToTablePage(object sender, EventArgs e)
        {
            try
            {
                int index = Int32.Parse(GoToPageButton.Text);
                if (index >= 1 && index <= NumRows)
                {
                    DataView DV = (DataView)Session["UserHistoryDataView"];
                    QueryGridView.PageIndex = index - 1;
                    QueryGridView.DataSource = DV;
                    QueryGridView.DataBind();
                }
                GoToPageButton.Text = "";
            }
            catch
            {
                GoToPageButton.Text = "";
            }
        }


        protected void ColumnSorting(object sender, GridViewSortEventArgs e)
        {
            try
            {
                QueryGridView.PageIndex = 0;
                string[] SortOrder = ViewState["SortExpr"].ToString().Split(' ');
                if (SortOrder[0] == e.SortExpression)
                {
                    if (SortOrder[1] == "ASC")
                    {
                        ViewState["SortExpr"] = e.SortExpression + " " + "DESC";
                    }
                    else
                    {
                        ViewState["SortExpr"] = e.SortExpression + " " + "ASC";
                    }
                }
                else
                {
                    ViewState["SortExpr"] = e.SortExpression + " " + "ASC";
                }
                DataView DV = (DataView)Session["UserHistoryDataView"];
                DV.Sort = ViewState["SortExpr"].ToString();
                Session["UserHistoryDataView"] = DV;// save back the view adjusted now with the new sorting scheme.
                
                QueryGridView.DataSource = DV;
                QueryGridView.DataBind();

                /*
                for (int i = 0; i < QueryGridView.Columns.Count - 1; i++)
                {
                    string ht = ((LinkButton)QueryGridView.HeaderRow.Cells[i].Controls[0]).Text;
                    if (ht == e.SortExpression)
                    {
                        TableCell tableCell = QueryGridView.HeaderRow.Cells[i];
                        Image img = new Image();
                        img.ImageUrl = (SortOrder[1] == "ASC") ? "./img/asc.gif" : "./img/desc.gif";
                        tableCell.Controls.Add(img);
                    }
                }
                */


            }
            catch (Exception ex)
            {
                Exception = ex; PageHasError = true;
            }
        }

        protected void PopulateDropDownList()
        {
            DataView DropDownView = ((DataSet)(Session["UserHistoryDataSet"])).Tables[0].DefaultView.ToTable(true, "Application").DefaultView;
            DropDownView.Sort = "Application asc";
            ToolsListBox.DataSource = DropDownView;
            ToolsListBox.DataValueField = "Application";
            ToolsListBox.DataBind();
        }




    }
}