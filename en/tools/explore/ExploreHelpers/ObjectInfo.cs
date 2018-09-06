using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace SkyServer.Tools.Explore
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

        public DataSet LoadExplore = new DataSet();
        //public DataSet dataSet1 = new DataSet();// contains the main info concerning the resolved object. Filled up the first time the explore page loads.
        //public DataSet dataSet2 = new DataSet();// contain secondary info concerning the resolved object. Filled up the first time the user clicks on particular links of the left hand side menu. 
    }

        

}