using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace SkyServer.Tools.QuickLook
{
    public class ObjectInfo
    {
        public long? id = null;
        public string apid;
        public decimal? specId = null;

        public string objId = null;
        public string specObjId = null;

        public double? ra = null;
        public double? dec = null;
        
        public int? mjd = null;
        public short? plate = null;
        public string plateId = null;       
        public short? fiberId = null;
        public string fieldId = null;

        public int? run = null;
        public short? rerun = null;
        public short? camcol = null;
        public short? field = null;

        // Added model-magnitudes and their errors and some other misc:

        public string u = null;
        public string g = null;
        public string r = null;
        public string i = null;
        public string z = null;
        public string err_u = null;
        public string err_g = null;
        public string err_r = null;
        public string err_i = null;
        public string err_z = null;

        public string otype = null;
        public string spectralClass = null;
        public string flags = null;
        public float? redshift = null;
        public string run2d = null;
        public DataSet LoadExplore = new DataSet();// contains the main info concerning the resolved object. Filled up the first time the explore page loads.

    }
}