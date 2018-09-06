﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace SkyServer
{
    public class QueryFuncs
    {
        static string reSplit = @"(\,|\s+)";
        static string reSplitList = @"(\s*(\,|\s)\s*)";
        public static bool readImgFields(List<string> imgFields, string[] names)
        {
            bool ignoreImg = true;
            
            //	var names = val.split(reSplit);
            foreach (string j in names)
            {
                /*
                if( dbg == 1 )
                    showLine( "imgparam name "+j+"="+names[j] );
                */
                if (j != "none" && j != "blankImg")
                    ignoreImg = false;
                else
                    continue;
                switch (j)
                {
                    case "minimal":
                        addField(imgFields, "run");
                        addField(imgFields, "rerun");
                        addField(imgFields, "camCol");
                        addField(imgFields, "field");
                        addField(imgFields, "obj");
                        break;
                    case "typical":
                        addField(imgFields, "run");
                        addField(imgFields, "rerun");
                        addField(imgFields, "camCol");
                        addField(imgFields, "field");
                        addField(imgFields, "obj");
                        addField(imgFields, "ra");
                        addField(imgFields, "[dec]");
                        addField(imgFields, "camCol");
                        addField(imgFields, "r");
                        break;
                    case "radec":
                        addField(imgFields, "ra");
                        addField(imgFields, "[dec]");
                        break;
                    case "model_mags":
                        addField(imgFields, "u");
                        addField(imgFields, "g");
                        addField(imgFields, "r");
                        addField(imgFields, "i");
                        addField(imgFields, "z");
                        break;
                    case "model_magerrs":
                        addField(imgFields, "modelMagErr_u");
                        addField(imgFields, "modelMagErr_g");
                        addField(imgFields, "modelMagErr_r");
                        addField(imgFields, "modelMagErr_i");
                        addField(imgFields, "modelMagErr_z");
                        break;
                    case "psf_mags":
                        addField(imgFields, "psfMag_u");
                        addField(imgFields, "psfMag_g");
                        addField(imgFields, "psfMag_r");
                        addField(imgFields, "psfMag_i");
                        addField(imgFields, "psfMag_z");
                        break;
                    case "psf_magerrs":
                        addField(imgFields, "psfMagErr_u");
                        addField(imgFields, "psfMagErr_g");
                        addField(imgFields, "psfMagErr_r");
                        addField(imgFields, "psfMagErr_i");
                        addField(imgFields, "psfMagErr_z");
                        break;
                    case "petro_mags":
                        addField(imgFields, "petroMag_u");
                        addField(imgFields, "petroMag_g");
                        addField(imgFields, "petroMag_r");
                        addField(imgFields, "petroMag_i");
                        addField(imgFields, "petroMag_z");
                        break;
                    case "petro_magerrs":
                        addField(imgFields, "petroMagErr_u");
                        addField(imgFields, "petroMagErr_g");
                        addField(imgFields, "petroMagErr_r");
                        addField(imgFields, "petroMagErr_i");
                        addField(imgFields, "petroMagErr_z");
                        break;
                    case "SDSSname":
                        addField(imgFields, "SDSSname");
                        break;
                    default:
                        addField(imgFields, j);
                        break;
                }
            }
            return ignoreImg;
        }

        // Read in the spectro (SpecObj) fields specified by the user and store them in an array
        // for stuffing into the SELECT later.
        public static bool readSpecFields(List<string> specFields, string[] names)
        {
            var ignoreSpec = true;
            //	var names = val.split(",");
            foreach (string j in names)
            {
                /*
                if( dbg == 1 )
                    showLine( "specparam name="+names[j] );
                */
                if (j == "none" && names.Length == 1)
                    ignoreSpec = true;
                else
                {
                    ignoreSpec = false;
                    if ((j != "none"))
                    {
                        if (j == "minimal")
                        {
                            addField(specFields, "plate");
                            addField(specFields, "mjd");
                            addField(specFields, "fiberid");
                        }
                        else if (j == "typical")
                        {
                            addField(specFields, "plate");
                            addField(specFields, "mjd");
                            addField(specFields, "fiberid");
                            addField(specFields, "z");
                            addField(specFields, "zErr");
                            addField(specFields, "zWarning");
                            addField(specFields, "class");
                        }
                        else if (j == "radec")
                        {
                            addField(specFields, "ra");
                            addField(specFields, "[dec]");
                        }
                        else
                        {
                            if (j != "bestdb" && j != "blankSpec")
                                addField(specFields, j);
                        }
                    }
                }
            }
            return ignoreSpec;
        }

        // Read in the infrared spectra (apogeeStar) fields specified by the user and store them in an array
        // for stuffing into the SELECT later.
        public static bool readIRspecFields(List<string> IRspecFields, string[] names)
        {
            var ignoreIRspec = true;
            //	var names = val.split(",");
            foreach (string j in names)
            {
                /*
                if( dbg == 1 )
                    showLine( "specparam name="+names[j] );
                */
                if (j == "none" && names.Length == 1)
                    ignoreIRspec = true;
                else
                {
                    ignoreIRspec = false;
                    if ((j != "none"))
                    {
                        if (j == "minimal")
                        {
                            addField(IRspecFields, "apogee_id");
                        }
                        else if (j == "typical")
                        {
                            addField(IRspecFields, "apogee_id");
                            addField(IRspecFields, "glon");
                            addField(IRspecFields, "glat");
                            addField(IRspecFields, "snr");
                            addField(IRspecFields, "vhelio_avg");
                            addField(IRspecFields, "vscatter");
                            addField(IRspecFields, "teff");
                            addField(IRspecFields, "logg");
                            addField(IRspecFields, "param_m_h");
                            addField(IRspecFields, "param_alpha_m");
                        }
                        else if (j == "twomassj") { addField(IRspecFields, "j"); }
                        else if (j == "twomassh") { addField(IRspecFields, "h"); }
                        else if (j == "twomassk") { addField(IRspecFields, "k"); }
                        else
                        {
                            addField(IRspecFields, j);
                        }
                    }
                }
            }
            return ignoreIRspec;
        }

        public static bool addField(List<string> list, string field)
        {
            if (list.Contains(field))
            {
                return false;
            }
            else
            {
                list.Add(field);
                return true;
            }
        }

        public static bool checkRect(double raMin, double raMax, double decMin, double decMax)
        {
            // Check for valid parameters

            bool error = false;

            error = error || Utilities.valueCheck("min_ra", raMin, 0, 360);
            error = error || Utilities.valueCheck("raMax", raMax, 0, 360);
            error = error || Utilities.rangeCheck("dec", decMin, decMax, -90, 90);

            double delta_ra = raMax - raMin;
            double delta_dec = decMax - decMin;

            error = error || Utilities.valueCheck("raMax-raMin", delta_ra, 0, 5.0);
            error = error || Utilities.valueCheck("decMax-decMin", delta_dec, 0, 5.0);

            if (error == false)
                return true;
            else
                return false;
        }

        public static string magLimits(string name, string val, string prefix, string magType)
        {
            string constraint = "";
            if (magType.Length > 0 && magType != "model")
                prefix += "." + magType + "Mag_";
            else
                prefix += ".";

            switch (name)
            {
                // Now process the individual constraints.
                case "uMin":
                    constraint = " " + prefix + "u > " + val;
                    break;
                case "gMin":
                    constraint = " " + prefix + "g > " + val;
                    break;
                case "rMin":
                    constraint = " " + prefix + "r > " + val;
                    break;
                case "iMin":
                    constraint = " " + prefix + "i > " + val;
                    break;
                case "zMin":
                    constraint = " " + prefix + "z > " + val;
                    break;
                case "jMin":
                    constraint = " " + prefix + "j > " + val;
                    break;
                case "hMin":
                    constraint = " " + prefix + "h > " + val;
                    break;
                case "kMin":
                    constraint = " " + prefix + "k > " + val;
                    break;
                case "uMax":
                    constraint = " " + prefix + "u < " + val;
                    break;
                case "gMax":
                    constraint = " " + prefix + "g < " + val;
                    break;
                case "rMax":
                    constraint = " " + prefix + "r < " + val;
                    break;
                case "iMax":
                    constraint = " " + prefix + "i < " + val;
                    break;
                case "zMax":
                    constraint = " " + prefix + "z < " + val;
                    break;
                case "jMax":
                    constraint = " " + prefix + "j < " + val;
                    break;
                case "hMax":
                    constraint = " " + prefix + "h < " + val;
                    break;
                case "kMax":
                    constraint = " " + prefix + "k < " + val;
                    break;
                case "ugMin":
                    constraint = " (" + prefix + "u - " + prefix + "g) > " + val;
                    break;
                case "grMin":
                    constraint = " (" + prefix + "g - " + prefix + "r) > " + val;
                    break;
                case "riMin":
                    constraint = " (" + prefix + "r - " + prefix + "i) > " + val;
                    break;
                case "izMin":
                    constraint = " (" + prefix + "i - " + prefix + "z) > " + val;
                    break;
                case "ugMax":
                    constraint = " (" + prefix + "u - " + prefix + "g) < " + val;
                    break;
                case "grMax":
                    constraint = " (" + prefix + "g - " + prefix + "r) < " + val;
                    break;
                case "riMax":
                    constraint = " (" + prefix + "r - " + prefix + "i) < " + val;
                    break;
                case "izMax":
                    constraint = " (" + prefix + "i - " + prefix + "z) < " + val;
                    break;
                case "jhMin":
                    constraint = " (" + prefix + "j - " + prefix + "h) > " + val;
                    break;
                case "hkMin":
                    constraint = " (" + prefix + "h - " + prefix + "k) > " + val;
                    break;
                case "jhMax":
                    constraint = " (" + prefix + "j - " + prefix + "h) < " + val;
                    break;
                case "hkMax":
                    constraint = " (" + prefix + "h - " + prefix + "k) < " + val;
                    break;
                default:
                    break;
            }
            return constraint;
        }


        public static string IRspecParamLimits(string name, string val, string prefix)
        {
            string constraint = "";

            switch (name)
            {
                // Now process the individual constraints.
                case "snrMin":
                    constraint = " " + prefix + ".snr > " + val;
                    break;
                case "snrMax":
                    constraint = " " + prefix + ".snr > " + val;
                    break;
                case "vhelioMin":
                    constraint = " " + prefix + ".vhelio_avg > " + val;
                    break;
                case "vhelioMax":
                    constraint = " " + prefix + ".vhelio_avg < " + val;
                    break;
                case "scatterMin":
                    constraint = " " + prefix + ".vscatter > " + val;
                    break;
                case "scatterMax":
                    constraint = " " + prefix + ".vscatter < " + val;
                    break;
                case "tempMin":
                    constraint = " " + prefix + ".teff > " + val;
                    break;
                case "tempMax":
                    constraint = " " + prefix + ".teff < " + val;
                    break;
                case "loggMin":
                    constraint = " " + prefix + ".logg > " + val;
                    break;
                case "loggMax":
                    constraint = " " + prefix + ".logg < " + val;
                    break;
                case "fehMin":
                    constraint = " " + prefix + ".param_m_h > " + val;
                    break;
                case "fehMax":
                    constraint = " " + prefix + ".param_m_h < " + val;
                    break;
                case "afeMin":
                    constraint = " " + prefix + ".param_alpha_m > " + val;
                    break;
                case "afeMax":
                    constraint = " " + prefix + ".param_alpha_m < " + val;
                    break;
                default:
                    break;
            }
            return constraint;
        }

        public static string[] getOptions(string val)
        {
            return val.Split(',');
        }

        public static string buildQuery(SqlConnection oConn, string type, Globals globals, HttpRequest request)
        {
            string orderClause = "";
            string cmd = "";
            string specAlias = "s";
            string bestAlias = "p";
            string targAlias = "t";
            string apogeeAlias = "a";
            string apogeeObjectAlias = "o";
            string aspcapAlias = "q";
            List<string> objType = new List<string>();
            List<string> imgFields = new List<string>();
            List<string> specFields = new List<string>();
            List<string> IRspecFields = new List<string>();
            List<string> proxList = new List<string>();
            string proxMode = " ";
            bool addQA = false;
            string nearBy = "";
            string[] options;
            string selectClause = "SELECT ";
            string fromClause = "FROM ";
            if ("spec".Equals(type)) fromClause += globals.Database+"..SpecObj as "+specAlias;
            if ("irspec".Equals(type)) fromClause += "apogeeStar as " + apogeeAlias;
            string whereClause = "WHERE ";
            string filters = "";
            bool bestdb = true, targdb = false;
            string posType = " ";
            bool imgConst = false;

            string tableAlias = bestAlias;
            string specTypes = "", magType = "model";
            string joinClause = "";
            string photoTable = "PhotoObj";
            string apogeeTable = "apogeeStar";
            string apogeeObjectTable = "apogeeObject";
            string aspcapTable = "aspcapStar";
            double raMin=0, raMax=0, decMin=0, decMax=0;
            double proxRad = 0.0;
            //int t = 0;
            string flagsOn = "", flagsOff = "", priFlagsOn = "", priFlagsOff = "", secFlagsOn = "", secFlagsOff = "";
            string irTargetFlagsOn = "", irTargetFlagsOff = "";
            string irTargetFlags2On = "", irTargetFlags2Off = "";
            bool doStar = false, doGalaxy = false, doSky = false, doUnknown = false;
            bool ignoreImg = false, ignoreSpec = false, ignoreIRspec = false;
            string specJoin = "";

            // these variables are used to convert from (L,B) to (RA,dec)
            double Lval = 0;
            double Bval = 0;
            double calculatedRA = 0;
            double calculatedDec = 0;



            foreach (string s in request.Params.Keys)
            {
                string name = s;
                string val = request[s];

                if (val == null || "".Equals(val)) continue;

                switch (name)
                {
                    case "limit":
                        if (int.Parse(val) > 0)
                            selectClause += "TOP " + val + " ";
                        break;
                    case "imgparams":
                        options = getOptions(val);
                        ignoreImg = readImgFields(imgFields, options);
                        break;
                    case "irspecparams":
                        options = getOptions(val);
                        ignoreIRspec = readIRspecFields(IRspecFields, options);
                        break;
                    case "dataset":
                        if (val == "targdb")
                        {
                            targdb = true;
                            bestdb = false;
                        }
                        break;
                    case "specparams":
                        options = getOptions(val);
                        ignoreSpec = readSpecFields(specFields, options);
                        break;
                    case "uFilter":
                        filters += "u";
                        break;
                    case "gFilter":
                        filters += "g";
                        break;
                    case "rFilter":
                        filters += "r";
                        break;
                    case "iFilter":
                        filters += "i";
                        break;
                    case "zFilter":
                        filters += "z";
                        break;
                    case "positionType":
                        posType = val;
                        break;
                    case "imagingConstraint":
                        imgConst = true;
                        if (val == "target")
                            tableAlias = targAlias;
                        else
                            tableAlias = bestAlias;
                        break;
                    case "magType":
                        magType = val;
                        break;


                    case "raMin":
                        if (posType == "rectangular")
                        {
                            //				val = val.replace(/\s+/g,":");
                            //				if( val.indexOf(":") >= 0 ) val = hms2deg(val);
                            //				raMin = val;
                            raMin = Utilities.parseRA(val);
                        }
                        break;
                    case "raMax":
                        if (posType == "rectangular")
                        {
                            //				val = val.replace(/\s+/g,":");
                            //				if( val.indexOf(":") >= 0 ) val = hms2deg(val);
                            //				raMax = val;
                            raMax = Utilities.parseRA(val);
                        }
                        break;
                    case "decMin":
                        if (posType == "rectangular")
                        {
                            //				val = val.replace(/\s+/g,":");
                            //				if( val.indexOf(":") >= 0 ) val = dms2deg(val);
                            //				decMin = val;
                            decMin = Utilities.parseDec(val);
                        }
                        break;
                    case "decMax":
                        if (posType == "rectangular")
                        {
                            //				val = val.replace(/\s+/g,":");
                            //				if( val.indexOf(":") >= 0 ) val = dms2deg(val);
                            //				decMax = val;
                            decMax = Utilities.parseDec(val);
                        }
                        break;
                    case "raCenter":
                        // if user has entered galactic coordinates, convert them to ra/dec
                        if (posType == "cone")
                        {
                            joinClause += "\n\tJOIN ";
                            if (targdb)
                                joinClause += " TARG" + globals.Release + ".";
                            //				val = val.replace(/\s+/g,":");
                            //				if( val.indexOf(":") >= 0 ) val = hms2deg(val);
                            double ra = Utilities.parseRA(val);
                            if (type == "irspec")
                            {
                                joinClause += "dbo.fGetNearbyApogeeStarEq(" + ra + ",";
                            }
                            else if (type == "spec")
                            {
                                joinClause += "dbo.fGetNearbySpecObjEq(" + ra + ",";
                            }
                            else
                            {
                                joinClause += "dbo.fGetNearbyObjEq(" + ra + ",";
                            }
                        }
                        break;
                    case "decCenter":
                        if (posType == "cone")
                        {
                            //				val = val.replace(/\s+/g,":");
                            //				if( val.indexOf(":") >= 0 ) val = dms2deg(val);
                            double dec = Utilities.parseDec(val);
                            joinClause += dec + ",";
                        }
                        break;
                    case "radius":
                        if (posType == "cone")
                        {
                            if (type == "irspec")
                            {
                                joinClause += val + ") AS b ON b.apstar_id = " + apogeeAlias + ".apstar_id";
                            }
                            else if (type == "spec")
                            {
                                joinClause += val + ") AS b ON b.SpecobjID = S.SpecobjID";
                            }
                            else
                            {
                                joinClause += val + ") AS b ON b.objID = P.objID";
                            }

                        }
                        break;

                    case "Lcenter":
                        Lval = Utilities.parseRA(val);
                        break;
                    case "Bcenter":
                        Bval = Utilities.parseDec(val);
                        break;
                    case "lbRadius":
                        double convertedRA = Utilities.glon2ra(Lval, Bval);
                        double convertedDec = Utilities.glat2dec(Lval, Bval);
                        if (type == "irspec" && posType == "conelb")
                        {
                            joinClause += "\n\tJOIN dbo.fgetNearbyApogeeStarEq(" + convertedRA;
                            joinClause += "," + convertedDec + ",";
                            joinClause += val + ") AS b ON b.apstar_id = " + apogeeAlias + ".apstar_id";
                        }
                        break;

                        
                    case "radecTextarea":
                        if (posType == "proximity")
                        {
                            string[] paste;
                            paste = Regex.Split(val, reSplit);
                            if (paste.Length > 0)
                            {
                                proxList.AddRange(val.Split(new string[] { "\n", "\r\n" }, StringSplitOptions.None));
                                proxMode = "text";
                            }
                        }
                        break;
                    /*
                    case "radecFilename":
                        if (posType == "proximity")
                        {
                            if (f[i].body.length > 0)
                            {
                                
                                                    //if (f[i].type != "text/plain") {
                                                    //    cmd = "ERROR: Proximity upload file not a text file but "+ f[i].type;
                                                    //    return cmd;
                                                    //}
                                
                                // it is a text file, we process it.
                                proxList = f[i].body;
                                proxMode = "file";
                            }
                        }
                        break;
                    */
                    case "radiusDefault":
                        if (posType == "proximity")
                        {
                            proxRad = double.Parse(val);
                        }
                        break;

                    case "uMin":
                    case "gMin":
                    case "rMin":
                    case "iMin":
                    case "zMin":
                    case "uMax":
                    case "gMax":
                    case "rMax":
                    case "iMax":
                    case "zMax":
                    case "ugMin":
                    case "grMin":
                    case "riMin":
                    case "izMin":
                    case "ugMax":
                    case "grMax":
                    case "riMax":
                    case "izMax":
                        //case "raMin":
                        //case "raMax":
                        //case "decMin":
                        //case "decMax":
                        // For all the constraints, first check if this is first constraint in WHERE;
                        // if not, prepend an AND.
                        if (val.Length == 0)
                            break;
                        if (name != "raMin" && name != "raMax" &&
                            name != "decMin" && name != "decMax")
                            // all non-pos constraints constitute imaging constraints
                            imgConst = true;	       // so set flag to true
                        if (whereClause.Length > 6)
                            whereClause += " AND";
                        whereClause += magLimits(name, val, tableAlias, magType);
                        break;

                     // APOGEE mag values from apogeeObject table - added by Jordan Raddick, 7/17/2013

                    case "jMin":
                    case "hMin":
                    case "kMin":
                    case "jMax":
                    case "hMax":
                    case "kMax":
                        tableAlias = apogeeObjectAlias;   // check the APOGEE table
                        magType = "";
                        // For all the constraints, first check if this is first constraint in WHERE;
                        // if not, prepend an AND.
                        if (val.Length == 0)
                            break;
                        imgConst = true;
                        if (whereClause.Length > 6)
                            whereClause += " AND";
                        whereClause += magLimits(name, val, tableAlias, magType);
                        break;

                    case "snrMin":
                    case "snrMax":
                    case "vhelioMin":
                    case "vhelioMax":
                    case "scatterMin":
                    case "scatterMax":
                        tableAlias = apogeeAlias;   // check the APOGEE table
                        // For all the constraints, first check if this is first constraint in WHERE;
                        // if not, prepend an AND.
                        if (val.Length == 0)
                            break;
                        imgConst = true;
                        if (whereClause.Length > 6)
                            whereClause += " AND";
                        whereClause += IRspecParamLimits(name, val, tableAlias);
                        break;

                    case "tempMin":
                    case "loggMin":
                    case "tempMax":
                    case "loggMax":
                    case "fehMin":
                    case "fehMax":
                    case "afeMin":
                    case "afeMax":
                        tableAlias = aspcapAlias;   // check the aspcapStar table
                        // For all the constraints, first check if this is first constraint in WHERE;
                        // if not, prepend an AND.
                        if (val.Length == 0)
                            break;
                        imgConst = true;
                        if (whereClause.Length > 6)
                            whereClause += " AND";
                        whereClause += IRspecParamLimits(name, val, tableAlias);
                        break;

                    case "doGalaxy":
                        if (val == "on")
                        {
                            doGalaxy = true;
                            objType.Add("3");
                        }
                        break;
                    case "doStar":
                        if (val == "on")
                        {
                            doStar = true;
                            objType.Add("6");
                        }
                        break;
                    case "doSky":
                        if (val == "on")
                        {
                            doSky = true;
                            objType.Add("8");
                        }
                        break;
                    case "doUnknown":
                        if (val == "on")
                        {
                            doUnknown = true;
                            objType.Add("0");
                        }
                        break;
                    case "addQA":
                        if (val == "on")
                        {
                            addQA = true;
                        }
                        break;
                    case "minQA":
                        // For all the constraints, first check if this is first constraint in WHERE;
                        // if not, prepend an AND.
                        if (val.Length == 0)
                            break;
                        if (whereClause.Length > 6)
                            whereClause += " AND ";
                        whereClause += "(p.score >= " + val + ")";
                        break;
                    case "redshiftMin":
                        if (whereClause.Length > 6)
                            whereClause += " AND";
                        whereClause += " s.z > " + val;
                        break;
                    case "redshiftMax":
                        if (whereClause.Length > 6)
                            whereClause += " AND";
                        whereClause += " s.z < " + val;
                        break;
                    case "zWarning":
                        if (val == "on")
                        {
                            if (whereClause.Length > 6)
                                whereClause += " AND";
                            whereClause += " s.zWarning = 0";
                        }
                        break;
                    case "class":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j == "ALL")
                            {
                                specTypes = "";
                                break;
                            }
                            else
                            {
                                if (specTypes.Length > 0)
                                    specTypes += " OR ";
                                specTypes += "s.class = '" + j + "'";
                            }
                        }
                        if (specTypes.Length > 0)
                        {
                            if (whereClause.Length > 6)
                                whereClause += " AND";
                            whereClause += " (" + specTypes + ")";
                        }
                        break;



                    case "flagsOnList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (flagsOn.Length > 0)
                                    flagsOn += " + ";
                                flagsOn += "dbo.fPhotoFlags('" + j + "')";
                            }
                        }
                        break;
                    case "flagsOffList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (flagsOff.Length > 0)
                                    flagsOff += " + ";
                                flagsOff += "dbo.fPhotoFlags('" + j + "')";
                            }
                        }
                        break;
                    case "priFlagsOnList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (priFlagsOn.Length > 0)
                                    priFlagsOn += " + ";
                                priFlagsOn += "dbo.fPrimTarget('" + j + "')";
                            }
                        }
                        break;
                    case "priFlagsOffList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (priFlagsOff.Length > 0)
                                    priFlagsOff += " + ";
                                priFlagsOff += "dbo.fPrimTarget('" + j + "')";
                            }
                        }
                        break;
                    case "secFlagsOnList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (secFlagsOn.Length > 0)
                                    secFlagsOn += " + ";
                                secFlagsOn += "dbo.fSecTarget('" + j + "')";
                            }
                        }
                        break;
                    case "secFlagsOffList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (secFlagsOff.Length > 0)
                                    secFlagsOff += " + ";
                                secFlagsOff += "dbo.fSecTarget('" + j + "')";
                            }
                        }
                        break;
                    case "irTargetFlagsOnList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (irTargetFlagsOn.Length > 0)
                                    irTargetFlagsOn += " + ";
                                irTargetFlagsOn += "dbo.fApogeeTarget1('" + j + "')";
                            }
                        }
                        break;
                    case "irTargetFlagsOffList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (irTargetFlagsOff.Length > 0)
                                    irTargetFlagsOff += " + ";
                                irTargetFlagsOff += "dbo.fApogeeTarget1('" + j + "')";
                            }
                        }
                        break;

                    case "irTargetFlags2OnList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (irTargetFlags2On.Length > 0)
                                    irTargetFlags2On += " + ";
                                irTargetFlags2On += "dbo.fApogeeTarget2('" + j + "')";
                            }
                        }
                        break;
                    case "irTargetFlags2OffList":
                        options = getOptions(val);
                        foreach (string j in options)
                        {
                            if (j != "ignore")
                            {
                                if (irTargetFlags2Off.Length > 0)
                                    irTargetFlags2Off += " + ";
                                irTargetFlags2Off += "dbo.fApogeeTarget2('" + j + "')";
                            }
                        }
                        break;

                    case "searchNearBy":
                        if (val == "nearby")
                        {
                            nearBy = val;
                        }
                        break;
                    default:
                        //			showLine( "name="+f[i].name );
                        break;
                }

            }
            if (doStar & !doGalaxy && !doSky && !doUnknown)
            {
                photoTable = "Star";
            }
            else if (doGalaxy && !doStar && !doSky && !doUnknown)
            {
                photoTable = "Galaxy";
            }
            else if (doSky && !doGalaxy && !doStar && !doUnknown)
            {
                photoTable = "Sky";
            }
            else if (doUnknown && !doGalaxy && !doStar && !doSky)
            {
                photoTable = "Unknown";
            }
            else if (!ignoreImg)
            {
                photoTable = "PhotoObj";
                if (objType.Count > 0)
                {
                    if (whereClause.Length > 6)
                        whereClause += " AND";
                    whereClause += " (";
                    for (int i = 0; i < objType.Count; i++)
                    {
                        string t = objType[i];
                        whereClause += " " + tableAlias + ".type = " + t;
                        if (i < objType.Count - 1)
                            whereClause += " OR";
                    }
                    whereClause += ")";
                }
            }

            if (!ignoreIRspec)
            {
                apogeeTable = "apogeeStar";
            }

            if (flagsOff.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + tableAlias + ".flags & (" + flagsOff + ") = 0)";
            }
            if (flagsOn.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + tableAlias + ".flags & (" + flagsOn + ") > 0)";
            }
            if (priFlagsOff.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + specAlias + ".primTarget & (" + priFlagsOff + ") = 0)";
            }
            if (priFlagsOn.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + specAlias + ".primTarget & (" + priFlagsOn + ") > 0)";
            }
            if (secFlagsOff.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + specAlias + ".secTarget & (" + secFlagsOff + ") = 0)";
            }
            if (secFlagsOn.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + specAlias + ".secTarget & (" + secFlagsOn + ") > 0)";
            }
            if (irTargetFlagsOff.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + apogeeAlias + ".apogee_target1 & (" + irTargetFlagsOff + ") = 0)";
            }
            if (irTargetFlagsOn.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + apogeeAlias + ".apogee_target1 & (" + irTargetFlagsOn + ") != 0)";
            }
            if (irTargetFlags2Off.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + apogeeAlias + ".apogee_target1 & (" + irTargetFlags2Off + ") = 0)";
            }
            if (irTargetFlags2On.Length > 0)
            {
                if (whereClause.Length > 6)
                    whereClause += " AND";
                whereClause += " (" + apogeeAlias + ".apogee_target1 & (" + irTargetFlags2On + ") != 0)";
            }
            // Put the pieces of the query together.

            if (posType == "rectangular")
            {
                if (!checkRect(raMin, raMax, decMin, decMax))
                {
                    /*
                    if( dbg == 1 )
                        showLine( "Illegal rectangular search values: "+raMin+","+raMax+","+
                                decMin+","+decMax+"." );
			
                    */
                    cmd = "ERROR: Illegal rectangular search values: " + raMin + "," + raMax + "," +
                                decMin + "," + decMax + ".";
                    return cmd;
                }
                else
                {
                    joinClause += "\n\tJOIN ";
                        if (targdb)
                            joinClause += " TARG" + globals.Release + ".";
                        joinClause += "dbo.fGetObjFromRect(" + raMin + "," + raMax + "," + decMin + "," + decMax + ") AS b ON ";
                        if (type == "spec")
                            joinClause += "s.bestobjid = b.objID";
                        else if (type == "irspec")
                            joinClause += apogeeAlias + ".apstar_id=b.apstar_id";
                        else
                            joinClause += tableAlias + ".objID = b.objID ";
                }
            }

            if (posType == "proximity")
            {
                    string val;
                    string[] paste;
                    if (request.Files.Count > 0 && request.Files[0].ContentLength > 0)
                    {
                        val = (new StreamReader(request.Files[0].InputStream)).ReadToEnd();
                        paste = Regex.Split(val, reSplit);
                        if (paste.Length > 0)
                        {
                            proxList.Clear();
                            proxList.AddRange(val.Split(new string[] { "\n", "\r\n" }, StringSplitOptions.None));
                            proxMode = "file";
                        }
                    }
                
                string proxCmd;
                if (proxMode == "text" || proxMode == "file") 
                proxCmd = readProxText(oConn, proxList, objType, proxRad, targdb, type, nearBy, globals);
                //else if (proxMode == "file") ;
                //proxCmd = readProxFile(oConn, proxList, objType, proxRad, targdb, type, nearBy);
                else
                {
                    cmd = "ERROR: Neither upload file nor list specified for Proximity search.\n";
                    return cmd;
                }
                if (type == "spec")
                {
                    selectClause += "s.ra,s.dec,";
                    joinClause += "\n\tJOIN #x AS x ON x.SpecobjID=s.SpecobjID JOIN #upload AS u ON u.up_id = x.up_id ";
                    orderClause += "ORDER BY x.up_id";
                }
                else 
                {
                    selectClause += "p.ra,p.dec,";
                    joinClause += "\n\tJOIN #x AS x ON x.objID=p.objID JOIN #upload AS u ON u.up_id = x.up_id ";
                    orderClause += "ORDER BY x.up_id";
                }
            }
            if (type == "spec")
            {
                if (specFields.Count == 0)
                {
                    string[] specOpts = new string[] { "minimal" };
                    //specOpts[0] = "minimal";
                    readSpecFields(specFields, specOpts);
                }
                for (int i = 0; i < specFields.Count; i++)
                {
                    if (specFields[i] == "ra")
                    {
                        selectClause += "str(s." + specFields[i] + ",13,8) as ra";
                    }
                    else if (specFields[i] == "[dec]")
                    {
                        selectClause += "str(s." + specFields[i] + ",13,8) as dec";
                    }
                    else
                    {
                        selectClause += "s." + specFields[i];
                    }
                    if (i < specFields.Count - 1)
                        selectClause += ",";
                }
                if (targdb && !ignoreImg)
                    specJoin = " ON s.targetObjID = p.objID";
                else if (!targdb && !ignoreImg)
                    specJoin = " ON s.bestObjID = p.objID";
                if (imgConst == true && ignoreImg)
                {
                    // if imaging constraints are specified, add a photo table join
                    joinClause += "\n\tJOIN " + photoTable + " AS " + tableAlias + " ON ";
                    if (targdb)
                        joinClause += "s.targetobjid=" + tableAlias + ".objid";
                    else
                        joinClause += "s.bestobjid=" + tableAlias + ".objid";
                }
                if (!ignoreImg)
                {
                    selectClause += ",";
                    selectClause = buildSelect(bestdb,targdb,photoTable,imgFields,specJoin, selectClause,globals);
                    fromClause = buildFrom(bestdb, targdb, photoTable, imgFields, specJoin, fromClause, globals);
                }
            }
            else if (type == "irspec")
            {
                selectClause = buildSelectApogee(IRspecFields, specJoin, selectClause, globals);
                joinClause += "\n\tJOIN ";
                joinClause += apogeeObjectTable + " as " + apogeeObjectAlias;
                joinClause += " ON " + apogeeAlias + ".apogee_id=" + apogeeObjectAlias + ".apogee_id";
                joinClause += " \n\tJOIN ";
                joinClause += aspcapTable + " as " + aspcapAlias;
                joinClause += " ON " + apogeeAlias + ".apstar_id=" + aspcapAlias + ".apstar_id";
            }
            else 
            {
                selectClause = buildSelect(bestdb, targdb, photoTable, imgFields, "", selectClause, globals);
                fromClause = buildFrom(bestdb, targdb, photoTable, imgFields, "", fromClause, globals);
                if (!ignoreSpec)
                {
                    fromClause += " LEFT OUTER JOIN " + globals.Database + "..SpecObj s ON p.objID = s.bestObjID";
                    for (int i = 0; i < specFields.Count; i++)
                    {
                        if (specFields[i] == "ra")
                        {
                            selectClause += ",ISNULL(str(s." + specFields[i] + ",13,8),0) as ra";
                        }
                        else if (specFields[i] == "[dec]")
                        {
                            selectClause += ",ISNULL(str(s." + specFields[i] + ",13,8),0) as dec";
                        }
                        else
                        {
                            selectClause += ",ISNULL(s." + specFields[i] + ",0) as " + specFields[i];
                        }
                    }
                }
            }
            if (addQA)
                selectClause += ", p.score as score";
            if (filters.Length > 0)
                selectClause += ", '" + filters + "' as filter";
            if (whereClause.Length <= 6)
                whereClause = "";
            cmd += selectClause + "\n" + fromClause + joinClause + "\n" + whereClause + "\n" + orderClause;
            /*
            if( dbg == 1 )
                showLine( "buildQuery, cmd = <pre>"+cmd+"</pre>\n" );	
	
            */
            return cmd;

        }

        public static void sendQuery(SqlCommand oCmd,string cmd, Globals globals) {
	    oCmd.CommandTimeout = globals.DefTimeout;
	    oCmd.CommandText = cmd;
        oCmd.ExecuteNonQuery();
        }

        private static void updateBatchFile(SqlConnection oConn, List<string> lines, double rad)
        {
            string[] names = Regex.Split(lines[0], reSplit, RegexOptions.ExplicitCapture).Where(str => !str.Equals(String.Empty)).ToArray();
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM #upload", oConn))
            {
                SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
                builder.QuotePrefix = "[";
                builder.QuoteSuffix = "]";

                DataSet ds = new DataSet();
                adapter.Fill(ds);
	            for (int i=0; i<lines.Count; i++) {
		            if( i > 0 ) {
			            string[] v = Regex.Split(lines[i], reSplitList, RegexOptions.ExplicitCapture).Where(str => !str.Equals(String.Empty)).ToArray();
			            if( v.Length >= 2 ) {
				            DataRow dr = ds.Tables[0].NewRow();
				            dr["up_id"] = i;
                            /*
                            v[0] = v[0].replace(/\s+/g,":");
                            v[1] = v[1].replace(/\s+/g,":");
                            if( v[0].indexOf(":") >= 0 ) v[0] = hms2deg(v[0]);
                            if( v[1].indexOf(":") >= 0 ) v[1] = dms2deg(v[1]);
                            */
                            double ra = Utilities.parseRA( v[0] );
				            double dec = Utilities.parseDec( v[1] );
                
			                dr["up_ra"] = ra;
                            dr["up_dec"] = dec;
                
                            if (v.Length == 2) dr["up_sep"] = rad;
                            else dr["up_sep"] = Double.Parse(v[2]);

                            ds.Tables[0].Rows.Add(dr);
			            }
		            }
	            }
                adapter.Update(ds);
            }
        }
        
        public static string readProxText(SqlConnection oConn, List<string> proxText, List<string> objType, double rad, bool targdb , string type , string nearBy, Globals globals) {
//	var proxLines = proxText.split( "\n" );
//	var proxFields;

//	var f,l;
	string cmd;


	string[] names = Regex.Split(proxText[0], reSplit, RegexOptions.ExplicitCapture).Where(str => !str.Equals(String.Empty)).ToArray();
	cmd = "CREATE TABLE #upload ( up_id int";
	foreach (string i in names) {
		cmd += ", up_" + i + " float";
	}
	if( names.Length == 2 )
		cmd += ", up_sep float";
	cmd += " ) ";
/*
	for( l in proxLines ) {
		if( l > 0 ) {
			proxFields = proxLines[l].split( reSplit );
			if( proxFields.length > 1 ) {
				cmd += "INSERT #upload VALUES("+l+",";
				cmd += proxFields[0]+","+proxFields[1]+",";
				if( proxFields.length == 2 )
					cmd += rad+"); ";
				else
					cmd += proxFields[2]+"); ";
			}
		}
	}
*/
//	cmd = UploadCmd( proxText );
    using (SqlCommand oCmd = oConn.CreateCommand())
    {
        sendQuery(oCmd, cmd, globals);

        updateBatchFile( oConn, proxText, rad ); 

        if (type == "spec")
        {
            if (nearBy == "nearby")
            {
                cmd = " ";
                cmd += " CREATE TABLE #x (up_id int,SpecobjID bigint) ";
                sendQuery(oCmd, cmd, globals);
                var fun = " ";
                if (targdb)
                    fun += "TARG" + globals.Release + ".";
                fun += "dbo.fGetNearbySpecObjEq( U.up_ra ,U.up_dec ,U.up_sep )";
                cmd = "INSERT INTO #x Select U.up_id, S.* from #upLoad U Cross Apply (select SpecObjid from " + fun + ") S ";
            }
            else
            {
                cmd = " ";
                cmd += " CREATE TABLE #x (up_id int,SpecobjID bigint) ";
                sendQuery(oCmd, cmd, globals);
                var fun = " ";
                if (targdb)
                    fun += "TARG" + globals.Release + ".";
                fun += "dbo.fGetNearestSpecObjIdEq( up_ra,up_dec,up_sep ) ";
                cmd = "INSERT INTO #x SELECT up_id," + fun + "as SpecobjId ";
                cmd += "FROM #upload WHERE" + fun + "IS NOT NULL ";
            }
        }
        else
        {
            if (nearBy == "nearby")
            {
                cmd = " ";
                cmd += " CREATE TABLE #x (up_id int,objID bigint) ";
                sendQuery(oCmd, cmd, globals);
                var fun = " ";
                if (targdb)
                    fun += "TARG" + globals.Release + ".";
                fun += "dbo.fGetNearbyObjEq( U.up_ra ,U.up_dec ,U.up_sep )";
                cmd = "INSERT INTO #x Select U.up_id, S.* from #upLoad U Cross Apply (select Objid from " + fun + ") S ";
            }
            else
            {
                cmd = " ";
                cmd += " CREATE TABLE #x (up_id int,objID bigint) ";
                sendQuery(oCmd, cmd, globals);
                var fun = " ";
                if (targdb)
                    fun += "TARG" + globals.Release + ".";
                fun += "dbo.fGetNearestObjIdEq( up_ra,up_dec,up_sep ) ";
                cmd = "INSERT INTO #x SELECT up_id," + fun + "as objId ";
                cmd += "FROM #upload WHERE" + fun + "IS NOT NULL ";
            }
        }


        /*
            if( objType.length > 0 ) {
                cmd += " AND (type IN (";
                for( t in objType ) {
                    cmd += objType[ t ];
                    if( t != objType.length-1 )
                        cmd += ",";
                }
                cmd += ")) ";
            }
        */
        sendQuery(oCmd, cmd, globals);
    }
	return cmd;
}


        public static string buildFrom(bool bestdb, bool targdb, string photoTable, List<string> imgFields, string joinCond, string fromClause, Globals globals)
        {
            string bestAlias = "p", targAlias = "t";
            if (bestdb)
            {
                if (fromClause.Length > 5)
                    fromClause += "\n\tJOIN ";
                fromClause += globals.Database + ".." + photoTable + " AS " + bestAlias + joinCond;
                /*
                        if( targdb ) {
                            selectClause += ","
                            for( i in imgFields ) {
                                addImgSelect( imgFields[i], targAlias );
                                if( i < (imgFields.length - 1) )
                                    selectClause += ",";
                            }
                            fromClause += "\n\tJOIN TARG"+release+".."+photoTable+" AS "+targAlias;
                        }
                */
            }
            else
            {
                if (fromClause.Length > 5)
                    fromClause += "\n\tJOIN ";
                fromClause += " TARG" + globals.Release + ".." + photoTable + " AS " + bestAlias + joinCond;
            }

            return fromClause;
        }

        public static string buildSelectApogee(List<string> theFields, string joinCond, string selectClause, Globals globals)
        {
            for (int i = 0; i < theFields.Count; i++)
            {
                if (theFields[i] == "teff" | theFields[i] == "logg" | theFields[i] == "param_m_h" | theFields[i] == "cfe" | theFields[i] == "nfe" | theFields[i] == "param_alpha_m")
                {
                    selectClause += addImgSelect(theFields[i], "q");
                }
                else if (theFields[i] == "j" | theFields[i] == "h" |theFields[i] == "k") 
                {
                    selectClause += addImgSelect(theFields[i], "o");
                }
                else if (theFields[i] == "glon" | theFields[i] == "glat")
                {
                    selectClause += addImgSelect(theFields[i]+",9,5) "+theFields[i], "str(a");
                }
                else { selectClause += addImgSelect(theFields[i], "a"); }
                if (i < (theFields.Count - 1))
                    selectClause += ",";
            }
            return selectClause;
        }

        public static string buildSelect(bool bestdb, bool targdb, string photoTable, List<string> imgFields, string joinCond, string selectClause, Globals globals)
        {
            string bestAlias = "p", targAlias = "t";
            if (bestdb)
            {
                for (int i = 0; i < imgFields.Count; i++)
                {
                    selectClause += addImgSelect(imgFields[i], bestAlias);
                    if (i < (imgFields.Count - 1))
                        selectClause += ",";
                }
            }
            else
            {
                if (targdb)
                {
                    for (int i = 0; i < imgFields.Count; i++)
                    {
                        addImgSelect(imgFields[i], bestAlias);
                        if (i < (imgFields.Count - 1))
                            selectClause += ",";
                    }
                }
            }
            return selectClause;
        }

        public static string addImgSelect(string imgField, string table)
        {
            string selectClause = "";
            switch (imgField)
            {
                case "ra":
                    selectClause += "str(" + table + "." + imgField + ",13,8) as ra";
                    break;
                case "[dec]":
                    selectClause += "str(" + table + "." + imgField + ",13,8) as dec";
                    break;
                case "model_colors":
                    selectClause += "str(" + table + ".u - " + table + ".g,11,8) as ugModelColor,";
                    selectClause += "str(" + table + ".g - " + table + ".r,11,8) as grModelColor,";
                    selectClause += "str(" + table + ".r - " + table + ".i,11,8) as riModelColor,";
                    selectClause += "str(" + table + ".i - " + table + ".z,11,8) as izModelColor";
                    break;
                case "ugModelColor":
                    selectClause += "str(" + table + ".u - " + table + ".g,11,8) as ugModelColor";
                    break;
                case "grModelColor":
                    selectClause += "str(" + table + ".g - " + table + ".r,11,8) as grModelColor";
                    break;
                case "riModelColor":
                    selectClause += "str(" + table + ".r - " + table + ".i,11,8) as riModelColor";
                    break;
                case "izModelColor":
                    selectClause += "str(" + table + ".i - " + table + ".z,11,8) as izModelColor";
                    break;
                case "SDSSname":
                    selectClause += "dbo.fIAUFromEq(" + table + ".ra," + table + ".[dec]) as SDSSname";
                    break;
                default:
                    selectClause += table + "." + imgField;
                    break;
            }
            return selectClause;
        }

    }
}