using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SkyServer.Tools.Explore
{
    public class ApogeeVisit
    {
        /* TABLE apogeeVisit */
        public string visit_id;
        public string plate;
        public long mjd;
        public long fiberid;
        public string dateobs;
        public float vrel;

        /* Queries */
        public const string BASE_QUERY = @"select 
  visit_id, 
  plate, 
  mjd, 
  fiberid, 
  dateobs,
  vrel
from apogeeVisit
where apogee_id = @id
order by dateobs";
    }
}