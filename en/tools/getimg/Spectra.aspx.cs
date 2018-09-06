using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SkyServer.Tools.GetImg
{
    public partial class Spectra : System.Web.UI.Page
    {
        protected string url;
        protected string getimgurl;
        protected Globals globals;
        ToolsMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ToolsMaster)Page.Master;
            master.gselect = 4.3;

            url = ResolveClientUrl("~/en");
            getimgurl = url + "/get/SpecByPF.ashx";
        }

        protected void writeOptions(SqlConnection oConn)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                string cmd = "SELECT CAST(plateID as VARCHAR(64)), plate, mjd ";
                cmd += " from PlateX order by plateID";
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    string v = "";

                        while (reader.Read())
                        {
                            v = "<OPTION VALUE='" + reader.GetSqlValue(0).ToString() + "'>";
                            v += reader.GetSqlValue(1).ToString() + "/" + reader.GetSqlValue(2).ToString() + "</OPTION>\n";
                            Response.Write(v);
                           
                        }
                } // using SqlDataReader
            } // using SqlCommand
        }
    } 
}