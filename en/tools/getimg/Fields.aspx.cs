using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SkyServer.Tools.GetImg
{
    public partial class Fields : System.Web.UI.Page
    {
        protected string getimgurl;
        protected string url;

        protected string field0;
        protected Globals globals;
        ToolsMaster master;
        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ToolsMaster)Page.Master;
            master.gselect = 4.1;

            url = ResolveClientUrl("~/en");
            getimgurl = url + "/get/FrameByRCFZ.ashx";
        }

        protected void writeFields(SqlConnection oConn)
        {
            using (SqlCommand oCmd = oConn.CreateCommand()) {
            	string cmd = "SELECT run,startField,endField ";
	            cmd += " FROM Run ORDER BY run";
	            oCmd.CommandText = cmd;
	            using (SqlDataReader reader = oCmd.ExecuteReader()) {
                     
	                string v="";
	                int lastRun = -1, run;
	                int i;	
   	                while(reader.Read()) {
	                       run = reader.GetInt16(0);
	                       if( lastRun > -1 ) {
	                          if( run != lastRun ) {
                                  ResponseAux.writeRow(lastRun, v, Response);
		                     v = "";
		                  } else {
                              v += ";";
		                  }
	                       }
	                       for( i=1; i < reader.FieldCount; i++ ) { 
	                           v += reader.GetSqlValue(i).ToString();
		                   if( i != reader.FieldCount-1 )
		                     v += ",";
	                       }
                           lastRun = run;
                        }
                        ResponseAux.writeRow(lastRun,v,Response);
                }
            }
        }

        protected void writeOptions(SqlConnection oConn)
        {
            using (SqlCommand oCmd = oConn.CreateCommand())
            {
                string cmd = "SELECT run,stripe,startfield FROM Run ORDER BY run";
                oCmd.CommandText = cmd;
                using (SqlDataReader reader = oCmd.ExecuteReader())
                {
                    
                    int i = 0;
                    while (reader.Read())
                    {
                        if (i > 0)
                            Response.Write("<option VALUE=\"" + reader.GetSqlValue(0).ToString() + "\">" + reader.GetSqlValue(0).ToString() + "</option>");
                        else
                        {
                            field0 = reader.GetSqlValue(2).ToString();
                            Response.Write("<option VALUE=\"" + reader.GetSqlValue(0).ToString() + "\" selected>" + reader.GetSqlValue(0).ToString() + "</option>");
                        }
                        i++;
                    }
                } // using SqlDataReader
            } // using SqlCommand
        }
    }
}