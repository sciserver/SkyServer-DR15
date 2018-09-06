using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using SkyServer;
using SkyServer.Tools.Search;

namespace SkyServer.Tools.Explore
{
    public partial class Parameters : System.Web.UI.Page
    {
        protected Globals globals;
        protected long? id = null;
        protected decimal? specId = null;

        //protected string link;
        protected string idstring;

        protected ObjectExplorer master;

        protected RunQuery runQuery;
        protected DataSet ds;

        protected string fitsParametersSppParams, fitsParametersStellarMassStarformingPort, fitsParameterSstellarMassPassivePort, fitsParametersEmissionLinesPort,
                         fitsParametersStellarMassPCAWiscBC03, fitsParametersstellarMassPCAWiscM11, fitsParametersStellarmassFSPSGranEarlyDust,
                         fitsParametersStellarmassFSPSGranEarlyNoDust, fitsParametersStellarmassFSPSGranWideDust, fitsParametersStellarmassFSPSGranWideNoDust;

        public DataSet SpecFitParameters = new DataSet();
        ResponseREST rs = new ResponseREST();


        protected void Page_Load(object sender, EventArgs e)
        {
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            master = (ObjectExplorer)Page.Master;
            runQuery = new RunQuery();

            string qSpecId = Request.QueryString["spec"];

            try
            {
                if (qSpecId != null && !"".Equals(qSpecId))
                {
                    // code changed by Jordan on 2013-3-28 to allow either decimal or hex input
                    specId = Utilities.ParseSpecObjId(qSpecId);
                    //if (qSpecId.StartsWith("0x")) specId = Int64.Parse(qSpecId.Substring(2), NumberStyles.AllowHexSpecifier);
                    //else specId = Int64.Parse(qSpecId);

                    if (Session["SpecFitParameters"] != null)
                        SpecFitParameters = (DataSet)Session["SpecFitParameters"];
                    else
                    {
                        string URIparams = "?spec=" + specId + "&query=SpecFitParameters&TaskName=Skyserver.Explore.Parameters";
                        SpecFitParameters = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);
                        Session["SpecFitParameters"] = SpecFitParameters;
                    }
                }
            }
            catch (Exception ex)
            {
                // Could not parse, so leave null
            }




            getQueries();

        }

        private void getQueries() {

            fitsParametersSppParams = ExplorerQueries.fitsParametersSppParams.Replace("@specId", specId.ToString());

            fitsParametersStellarMassStarformingPort = ExplorerQueries.fitsParametersStellarMassStarformingPort.Replace("@specId", specId.ToString());

            fitsParameterSstellarMassPassivePort = ExplorerQueries.fitsParameterSstellarMassPassivePort.Replace("@specId", specId.ToString());

            fitsParametersEmissionLinesPort = ExplorerQueries.fitsParametersEmissionLinesPort.Replace("@specId", specId.ToString());

            fitsParametersStellarMassPCAWiscBC03 = ExplorerQueries.fitsParametersStellarMassPCAWiscBC03.Replace("@specId", specId.ToString());

            fitsParametersstellarMassPCAWiscM11 = ExplorerQueries.fitsParametersstellarMassPCAWiscM11.Replace("@specId", specId.ToString());

            fitsParametersStellarmassFSPSGranEarlyDust = ExplorerQueries.fitsParametersStellarmassFSPSGranEarlyDust.Replace("@specId", specId.ToString());

            fitsParametersStellarmassFSPSGranEarlyNoDust = ExplorerQueries.fitsParametersStellarmassFSPSGranEarlyNoDust.Replace("@specId", specId.ToString());

            fitsParametersStellarmassFSPSGranWideDust = ExplorerQueries.fitsParametersStellarmassFSPSGranWideDust.Replace("@specId", specId.ToString());

            fitsParametersStellarmassFSPSGranWideNoDust = ExplorerQueries.fitsParametersStellarmassFSPSGranWideNoDust.Replace("@specId", specId.ToString());
           
        }
    }
}