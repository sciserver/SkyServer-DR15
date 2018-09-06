using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyServer;
using System.Data;
using SkyServer.Tools.Search;

namespace SkyServer.Tools.Explore
{
    public partial class DisplayResults : System.Web.UI.Page
    {
        protected string cmd = null;
        protected string name = null;
        protected string url = null;
        protected string objId = null;
        protected string specId = null;
        protected string apid = null;
        protected string fieldId = null;
        protected Globals globals;
        protected string Name = null;

        protected ObjectExplorer master;
        protected DataSet ds;
        protected string task = "";
        DataSet objectDataSet3;        

        protected void Page_Load(object sender, EventArgs e)
        {
            ds = new DataSet();
            objectDataSet3 = new DataSet();

            ResponseREST rs = new ResponseREST();
            master = (ObjectExplorer)Page.Master;
            globals = (Globals)Application[Globals.PROPERTY_NAME];
            foreach (string key in Request.QueryString.Keys)
            {
                if(key == "apid")
                    apid= HttpUtility.UrlEncode(Request.QueryString["apid"]);
                objId = Request.QueryString["id"];
                specId = Request.QueryString["spec"];
                
                fieldId = Request.QueryString["fieldId"];

                //cmd = Request.QueryString["cmd"];
                name = Request.QueryString["name"];
                url = Request.QueryString["url"];
            }

            string URIparams = "?id=" + objId + "&spec=" + specId + "&apid=" + apid + "&fieldId=" + fieldId + "&query=" + name + "&TaskName=Skyserver.Explore.DisplayResults." + name;
            ds = rs.GetObjectInfoFromWebService(globals.ExploreWS, URIparams);
            if (name.EndsWith("Query"))
                Name = name.Substring(0,name.Length - 5);
            else
                Name = name;

            //if(cmd == null || cmd.Equals(""))
            //    getQuery();

            //executeQuery();
        }


        private void SetTable()
        {
            switch (name)
            {
                case "PhotoObj":
                    ds.Merge(objectDataSet3.Tables["PhotoObjQuery"]); break;
                case "PhotoTag":
                    ds.Merge(objectDataSet3.Tables["PhotoTagQuery"]); break;
                case "photoZ":
                    ds.Merge(objectDataSet3.Tables["PhotoZ"]); break;
                //case "photozRF":
                //        cmd = ExplorerQueries.PhotozRF.Replace("@objId", objId); break;

                case "Field":
                    ds.Merge(objectDataSet3.Tables["FieldQuery"]); break;
                case "Frame":
                    ds.Merge(objectDataSet3.Tables["FrameQuery"]); break;
                case "SpecObj":
                    ds.Merge(objectDataSet3.Tables["SpecObjQuery"]); break;
                case "sppLines":
                    ds.Merge(objectDataSet3.Tables["sppLinesQuery"]); break;
                case "sppParams":
                    ds.Merge(objectDataSet3.Tables["sppParamsQuery"]); break;
                case "galSpecLine":
                    ds.Merge(objectDataSet3.Tables["galSpecLineQuery"]); break;
                case "galSpecIndx":
                    ds.Merge(objectDataSet3.Tables["galSpecIndexQuery"]); break;
                case "galSpecInfo":
                    ds.Merge(objectDataSet3.Tables["galSpecInfoQuery"]); break;
                case "stellarMassStarFormingPort":
                    ds.Merge(objectDataSet3.Tables["stellarMassStarformingPortQuery"]); break;
                case "stellarMassPassivePort":
                    ds.Merge(objectDataSet3.Tables["stellarMassPassivePortQuery"]); break;
                case "emissionlinesPort":
                    ds.Merge(objectDataSet3.Tables["emissionLinesPortQuery"]); break;
                case "stellarMassPCAWiscBC03":
                    ds.Merge(objectDataSet3.Tables["stellarMassPCAWiscBC03Query"]); break;
                case "stellarMassPCAWiscM11":
                    ds.Merge(objectDataSet3.Tables["stellarMassPCAWiscM11Query"]); break;
                case "stellarMassFSPSGranEarlyDust":
                    ds.Merge(objectDataSet3.Tables["stellarMassFSPSGranEarlyDust"]); break;
                case "stellarMassFSPSGranEarlyNoDust":
                    ds.Merge(objectDataSet3.Tables["stellarMassFSPSGranEarlyNoDust"]); break;
                case "stellarMassFSPSGranWideDust":
                    ds.Merge(objectDataSet3.Tables["stellarMassFSPSGranWideDust"]); break;
                case "stellarMassFSPSGranWideNoDust":
                    ds.Merge(objectDataSet3.Tables["stellarMassFSPSGranWideNoDust"]); break;
                case "apogeeStar":
                    ds.Merge(objectDataSet3.Tables["apogeeStar"]); break;
                case "aspcapStar":
                    ds.Merge(objectDataSet3.Tables["aspcapStar"]); break;

                default: cmd = ""; break;
            }
        }



        private void getQuery() {

            switch (name) {
                case "PhotoObj": 
                        cmd = ExplorerQueries.PhotoObjQuery.Replace("@objId", objId); task = "PhotoObjQuery"; break;
                case "PhotoTag":
                        cmd = ExplorerQueries.PhotoTagQuery.Replace("@objId", objId); task = "PhotoTagQuery"; break;
                case "photoZ":
                        cmd = ExplorerQueries.PhotoZ.Replace("@objId", objId); task = "PhotoZ"; break;
                //case "photozRF":
                //        cmd = ExplorerQueries.PhotozRF.Replace("@objId", objId); break;

                case "Field":
                        cmd = ExplorerQueries.FieldQuery.Replace("@fieldId", fieldId); task = "FieldQuery"; break;
                case "Frame":
                        cmd = ExplorerQueries.FrameQuery.Replace("@fieldId", fieldId); task = "FrameQuery"; break;
                
                case "SpecObj":
                        cmd = ExplorerQueries.SpecObjQuery.Replace("@specId", specId); task = "SpecObjQuery"; break;
                case "sppLines":
                        cmd = ExplorerQueries.sppLinesQuery.Replace("@specId", specId); task = "sppLinesQuery"; break;
                case "sppParams":
                        cmd = ExplorerQueries.sppParamsQuery.Replace("@specId", specId); task = "sppParamsQuery"; break;
                case "galSpecLine":
                        cmd = ExplorerQueries.galSpecLineQuery.Replace("@specId", specId); task = "galSpecLineQuery"; break;
                case "galSpecIndx":
                        cmd = ExplorerQueries.galSpecIndexQuery.Replace("@specId", specId); task = "galSpecIndexQuery"; break;
                case "galSpecInfo":
                        cmd = ExplorerQueries.galSpecInfoQuery.Replace("@specId", specId); task = "galSpecInfoQuery"; break;
                case "stellarMassStarFormingPort":
                        cmd = ExplorerQueries.stellarMassStarformingPortQuery.Replace("@specId", specId); task = "stellarMassStarformingPortQuery"; break;  
                case "stellarMassPassivePort":
                        cmd = ExplorerQueries.stellarMassPassivePortQuery.Replace("@specId", specId); task = "stellarMassPassivePortQuery"; break;
                case "emissionlinesPort":
                        cmd = ExplorerQueries.emissionLinesPortQuery.Replace("@specId", specId); task = "emissionLinesPortQuery"; break;
                case "stellarMassPCAWiscBC03":
                        cmd = ExplorerQueries.stellarMassPCAWiscBC03Query.Replace("@specId",specId); task = "stellarMassPCAWiscBC03Query"; break;
                case "stellarMassPCAWiscM11":
                        cmd = ExplorerQueries.stellarMassPCAWiscM11Query.Replace("@specId", specId); task = "stellarMassPCAWiscM11Query"; break;
                case "stellarMassFSPSGranEarlyDust":
                        cmd = ExplorerQueries.stellarMassFSPSGranEarlyDust.Replace("@specId", specId); task = "stellarMassFSPSGranEarlyDust"; break;
                case "stellarMassFSPSGranEarlyNoDust":
                        cmd = ExplorerQueries.stellarMassFSPSGranEarlyNoDust.Replace("@specId", specId); task = "stellarMassFSPSGranEarlyNoDust"; break;
                case "stellarMassFSPSGranWideDust":
                        cmd = ExplorerQueries.stellarMassFSPSGranWideDust.Replace("@specId", specId); task = "stellarMassFSPSGranWideDust"; break;
                case "stellarMassFSPSGranWideNoDust":
                        cmd = ExplorerQueries.stellarMassFSPSGranWideNoDust.Replace("@specId", specId); task = "stellarMassFSPSGranWideNoDust"; break;
                
                case "apogeeStar":
                        cmd= ExplorerQueries.apogeeStar.Replace("@apid", apid); task = "apogeeStar"; break;
                case "aspcapStar":
                        cmd= ExplorerQueries.aspcapStar.Replace("@apid", apid); task = "aspcapStar"; break;

                default: cmd = ""; break;


            }
        }
    }
}
