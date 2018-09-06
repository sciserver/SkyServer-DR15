using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;

namespace SkyServer.Tools.QuickLook
{
    // these queries are the same as those in Explore.ExplorerQueries. We could inherit those in here.
    //public class QuickLookQueries: Explore.ExplorerQueries
    public class QuickLookQueries
    {


        public static string QueryHeader = @" select cast(p.objId as binary(8)) as objId,cast(s.specObjId as binary(8)) as specObjId
                            ,p.ra,p.dec,
                            s.mjd,s.plate,cast(s.plateId as binary(8)) as plateId,s.fiberid,cast(p.fieldId as binary(8)) as fieldId,p.run,p.rerun,p.camcol,p.field,
                            str(p.modelMag_u,7,2) as u, str(p.modelMag_g,7,2) as g, str(p.modelMag_r,7,2) as r, str(p.modelMag_i,7,2) as i, str(p.modelMag_z,7,2) as z, 
                            str(modelMagErr_u,7,2) as err_u, str(modelMagErr_g,7,2) as err_g, str(modelMagErr_r,7,2) as err_r, str(modelMagErr_i,7,2) as err_i, str(modelMagErr_z,7,2) as err_z,
                            dbo.fPhotoFlagsN(flags) as flags, class as spectralClass, dbo.fPhotoTypeN(p.type) as otype, s.z as redshift "; 


        public static string getParamsFromPlateFiberMjd = QueryHeader + " from PhotoTag p JOIN SpecObjAll s ON s.bestobjid=p.objid where s.mjd = @mjd and s.fiberId = @fiberId  and s.plate = @plate";


        public static string getParamsFromObjID =  QueryHeader + " from PhotoTag p LEFT JOIN SpecObjAll s ON (s.bestobjid=p.objid AND s.scienceprimary=1) where p.objId=dbo.fObjId(@objid)";

        //public static string getpmtsFrom5PartSDSS = @"declare @skyversion int;select top 1 @skyversion=skyversion from run;" + QueryHeader + " from PhotoTag p LEFT JOIN SpecObjAll s ON (s.bestobjid=p.objid AND s.scienceprimary=1) where p.objId=dbo.fObjidFromSDSS(@skyversion,@run,@rerun,@camcol,@field,@obj);";
        public static string getpmtsFrom5PartSDSS = QueryHeader + " from PhotoTag p LEFT JOIN SpecObjAll s ON (s.bestobjid=p.objid AND s.scienceprimary=1) where p.objId=dbo.fObjidFromSDSS(@skyversion,@run,@rerun,@camcol,@field,@obj)";

        public static string getSkyversion = "select top 1 skyversion from run";



        public static string getParamsFromSpecObjID = QueryHeader + " from PhotoTag p JOIN SpecObjAll s ON (s.bestobjid=p.objid AND s.scienceprimary=1) where s.specobjid=@sid";

        public static string getObjIDFromEq = @" select top 1 p.objId from PhotoTag p join dbo.fGetNearbyObjAllEq(@qra , @qdec , @searchRadius) n on (p.objId=n.objId) order by n.mode asc, n.distance asc";

        public static string getParamsFromEq = QueryHeader + " from PhotoTag p JOIN SpecObjAll s ON s.bestobjid=p.objid, dbo.fGetNearbyObjAllEq(@qra , @qdec , @searchRadius) n where p.objId=n.objId order by n.mode asc, n.distance asc";



        ///This is for QuickLook. This query gets the magnitudes (and some other misc) of an object, given the objID. Query returns only strings.
        public static String getMagnitudesFromObjID = @" select
                                                         from PhotoObjAll p LEFT OUTER JOIN SpecObjAll s ON (s.bestobjid=p.objid AND s.scienceprimary=1) where p.ObjID=@objId";



        public static string getApogee = @" select apstar_id, ra, dec, apogee_id, glon, glat,location_id,commiss
                                            from apogeeStar
                                            where apstar_id='@apogeeId'";

        public static string getApogee2 = @" select apstar_id, ra, dec, apogee_id, glon, glat,location_id,commiss
                                            from apogeeStar
                                            where apogee_id='@apogeeId'";

    }
}

