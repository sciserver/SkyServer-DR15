using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.IO;

namespace SkyServer.Tools.Search
{
    public class IQSSearchRequest
    {
        private const string RE_SPLIT = @"(\,|\s+)";

        private int limit;
        private string format;

        private bool ignoreImg, ignoreSpec;
        private List<string> proxList = new List<string>();
        private List<string> objType = new List<string>();
        private HashSet<string> imgFields = new HashSet<string>();
        private HashSet<string> specFields = new HashSet<string>();
        private string[] imgparams, specparams, flagsOnList, flagsOffList;
        private string posType;
        private string proxMode;
        private double raMin, raMax, decMin, decMax;
        private double ra, dec, radius;
        private double proxRad;
        private bool doStar = false, doGalaxy = false, doSky = false, doUnknown = false;
        private string magType;
        private string tableAlias = "p";

        private double 
            uMin=double.NaN, 
            gMin=double.NaN, 
            rMin=double.NaN, 
            iMin=double.NaN, 
            zMin=double.NaN, 
            uMax=double.NaN, 
            gMax=double.NaN, 
            rMax=double.NaN, 
            iMax=double.NaN, 
            zMax=double.NaN, 
            ugMin=double.NaN, 
            grMin=double.NaN, 
            riMin=double.NaN, 
            izMin=double.NaN, 
            ugMax=double.NaN, 
            grMax=double.NaN, 
            riMax=double.NaN, 
            izMax=double.NaN;

        private bool addQA;
        private double minQA = double.NaN;
        private bool zWarning;

        private string query;
        
        public IQSSearchRequest(HttpRequest request, Globals globals)
        {
            limit = int.Parse(request["limit"] ?? "0");
            format = request["format"] ?? "html";
            format = format.ToLower();

            imgparams = request["imgparams"].Split(',');
            ignoreImg = ReadImgFields(imgparams);
            specparams = request["specparams"].Split(',');
            ignoreSpec = ReadSpecFields(imgparams);

            posType = request["positionType"];
            magType = request["magType"];

            zWarning = request["zWarning"] == "on";

            if (request["doStar"] == "on")
            {
                doStar = true;
                objType.Add("6");
            }
            if (request["doSky"] == "on")
            {
                doSky = true;
                objType.Add("8");
            }
            if (request["doGalaxy"] == "on")
            {
                doGalaxy = true;
                objType.Add("0");
            }
            if (request["doUnknown"] == "on")
            {
                doUnknown = true;
            }

            double.TryParse(request["uMin"], out uMin);
            double.TryParse(request["gMin"], out gMin);
            double.TryParse(request["rMin"], out rMin);
            double.TryParse(request["iMin"], out iMin);
            double.TryParse(request["zMin"], out zMin);
            double.TryParse(request["uMax"], out uMax);
            double.TryParse(request["gMax"], out gMax);
            double.TryParse(request["rMax"], out rMax);
            double.TryParse(request["iMax"], out iMax);
            double.TryParse(request["zMax"], out zMax);
            double.TryParse(request["ugMin"], out ugMin);
            double.TryParse(request["grMin"], out grMin);
            double.TryParse(request["riMin"], out riMin);
            double.TryParse(request["izMin"], out izMin);
            double.TryParse(request["ugMax"], out ugMax);
            double.TryParse(request["grMax"], out grMax);
            double.TryParse(request["riMax"], out riMax);
            double.TryParse(request["izMax"], out izMax);

            addQA = request["addQA"] == "on";
            double.TryParse(request["minQA"], out minQA);
 
            switch (posType) 
            {
                case "rectangular":
                    raMin = Utilities.parseRA(request["raMin"]);
                    raMax = Utilities.parseRA(request["raMax"]);
                    decMin = Utilities.parseDec(request["decMin"]);
                    decMax = Utilities.parseDec(request["decMax"]);
                    break;
                case "cone":
                    ra = Utilities.parseRA(request["raCenter"]);
                    dec = Utilities.parseDec(request["decCenter"]);
                    radius = double.Parse(request["radius"]);
                    break;
                case "proximity":
                    string val;
                    string[] paste; 

                    proxRad = double.Parse(request["radiusDefault"]);

                    if (request.Files.Count > 0 && request.Files[0].ContentLength > 0)
                    {
                        val = (new StreamReader(request.Files[0].InputStream)).ReadToEnd();
                        paste = Regex.Split(val, RE_SPLIT);
                        if (paste.Length > 0)
                        {
                            proxList.Clear();
                            proxList.AddRange(val.Split(new string[] { "\n", "\r\n" }, StringSplitOptions.None));
                            proxMode = "file";
                        }
                    }
                    else
                    {
                        val = request["radecTextarea"];
                        paste = Regex.Split(request["radecTextarea"], RE_SPLIT);
                        if (paste.Length > 0)
                        {
                            proxList.AddRange(request["radecTextarea"].Split(new string[] { "\n", "\r\n" }, StringSplitOptions.None));
                            proxMode = "text";
                        }
                    }

                    break;
                case "none":
                default:
                    break;
            }

            flagsOnList = request["flagsOnList"].Split(',');
            flagsOffList = request["flagsOffList"].Split(',');

            SetQuery(request, globals);
        }

        private void SetQuery(HttpRequest request, Globals globals)
        {
            string cmd = "";
            string orderClause = "";
            string selectClause = "SELECT ";
            string fromClause = "FROM ";
            string whereClause = "WHERE ";
            string joinClause = "";

            whereClause += AndClause(whereClause, 6) + MagLimits("uMin", uMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("gMin", gMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("rMin", rMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("iMin", iMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("zMin", zMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("uMax", uMax, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("gMax", gMax, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("rMax", rMax, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("iMax", iMax, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("zMax", zMax, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("ugMin", ugMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("grMin", grMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("riMin", riMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("izMin", izMin, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("ugMax", ugMax, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("grMax", grMax, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("riMax", riMax, tableAlias, magType);
            whereClause += AndClause(whereClause, 6) + MagLimits("izMax", izMax, tableAlias, magType);

            if (!double.IsNaN(minQA)) whereClause += AndClause(whereClause, 6)+"(p.score >= " + minQA + ")";
            if (zWarning) whereClause += AndClause(whereClause, 6)+" s.zWarning = 0";

            string flagsOn = "", flagsOff = "";
            foreach (string j in flagsOnList)
            {
                if (j != "ignore")
                {
                    if (flagsOn.Length > 0)
                        flagsOn += " + ";
                    flagsOn += "dbo.fPhotoFlags('" + j + "')";
                }
            }
            foreach (string j in flagsOffList)
            {
                if (j != "ignore")
                {
                    if (flagsOff.Length > 0)
                        flagsOff += " + ";
                    flagsOff += "dbo.fPhotoFlags('" + j + "')";
                }
            }

            string photoTable;

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
                    whereClause += AndClause(whereClause, 6)+" (";
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

            if (flagsOff.Length > 0)
            {
                whereClause += AndClause(whereClause, 6)+" (" + tableAlias + ".flags & (" + flagsOff + ") = 0)";
            }
            if (flagsOn.Length > 0)
            {
                whereClause += AndClause(whereClause, 6)+" (" + tableAlias + ".flags & (" + flagsOn + ") > 0)";
            }

            if (posType == "rectangular")
            {
                if (!checkRect(raMin, raMax, decMin, decMax))
                {
                    throw new Exception("ERROR: Illegal rectangular search values: " + raMin + "," + raMax + "," +decMin + "," + decMax + ".");
                }
                else
                {
                    joinClause += "\n\tJOIN ";
                    joinClause += " TARG" + globals.Release + ".";
                    joinClause += "dbo.fGetObjFromRect(" + raMin + "," + raMax + "," + decMin + "," + decMax + ") AS b ON ";
                    joinClause += tableAlias + ".objID = b.objID ";
                }
            }

            if (posType == "cone")
            {
                joinClause += "\n\tJOIN dbo.fGetNearbyObjEq(" + ra + "," + dec + "," + radius + ") AS b ON b.objID = P.objID";
            }
            else if (posType == "proximity")
            {
                string val;
                string[] paste;
                
                /*
                if (request.Files.Count > 0 && request.Files[0].ContentLength > 0)
                {
                    val = (new StreamReader(request.Files[0].InputStream)).ReadToEnd();
                    paste = Regex.Split(val, RE_SPLIT);
                    if (paste.Length > 0)
                    {
                        proxList.Clear();
                        proxList.AddRange(val.Split(new string[] { "\n", "\r\n" }, StringSplitOptions.None));
                        proxMode = "file";
                    }
                }
                */

                string proxCmd;
                if (proxMode == "text" || proxMode == "file")
                    proxCmd = readProxText(oConn, proxList, objType, proxRad, targdb, type, nearBy, globals);
                //else if (proxMode == "file") ;
                //proxCmd = readProxFile(oConn, proxList, objType, proxRad, targdb, type, nearBy);
                else
                {
                    throw new Exception("ERROR: Neither upload file nor list specified for Proximity search.");
                }

                {
                    selectClause += "p.ra,p.dec,";
                    joinClause += "\n\tJOIN #x AS x ON x.objID=p.objID JOIN #upload AS u ON u.up_id = x.up_id ";
                    orderClause += "ORDER BY x.up_id";
                }
            }

            selectClause = buildSelect(bestdb, targdb, photoTable, imgFields, "", selectClause, globals);
            fromClause = buildFrom(bestdb, targdb, photoTable, imgFields, "", fromClause, globals);
            if (!ignoreSpec)
            {
                fromClause += " LEFT OUTER JOIN " + globals.Database + "..SpecObj s ON p.objID = s.bestObjID";
                foreach(string f in specFields)
                {
                    if (f == "ra")
                    {
                        selectClause += ",ISNULL(str(s." + f + ",13,8),0) as ra";
                    }
                    else if (f == "[dec]")
                    {
                        selectClause += ",ISNULL(str(s." + f + ",13,8),0) as dec";
                    }
                    else
                    {
                        selectClause += ",ISNULL(s." + f + ",0) as " + f;
                    }
                }
            }
            if (addQA) selectClause += ", p.score as score";
            if (filters.Length > 0) selectClause += ", '" + filters + "' as filter";
            if (whereClause.Length <= 6) whereClause = "";
            cmd += selectClause + "\n" + fromClause + joinClause + "\n" + whereClause + "\n" + orderClause;
            query = cmd;
        }

        private string AndClause(string clause, int baseLength)
        {
            if (clause.Length > baseLength) return " AND";
            else return "";
        }
        private bool ReadImgFields(string[] names)
        {
            bool ignoreImg = true;

            foreach (string j in names)
            {
                if (j != "none" && j != "blankImg")
                    ignoreImg = false;
                else
                    continue;

                switch (j)
                {
                    case "minimal":
                        imgFields.Add("run");
                        imgFields.Add("rerun");
                        imgFields.Add("camCol");
                        imgFields.Add("field");
                        imgFields.Add("obj");
                        break;
                    case "typical":
                        imgFields.Add("run");
                        imgFields.Add("rerun");
                        imgFields.Add("camCol");
                        imgFields.Add("field");
                        imgFields.Add("obj");
                        imgFields.Add("ra");
                        imgFields.Add("[dec]");
                        imgFields.Add("camCol");
                        imgFields.Add("r");
                        break;
                    case "radec":
                        imgFields.Add("ra");
                        imgFields.Add("[dec]");
                        break;
                    case "model_mags":
                        imgFields.Add("u");
                        imgFields.Add("g");
                        imgFields.Add("r");
                        imgFields.Add("i");
                        imgFields.Add("z");
                        break;
                    case "model_magerrs":
                        imgFields.Add("modelMagErr_u");
                        imgFields.Add("modelMagErr_g");
                        imgFields.Add("modelMagErr_r");
                        imgFields.Add("modelMagErr_i");
                        imgFields.Add("modelMagErr_z");
                        break;
                    case "psf_mags":
                        imgFields.Add("psfMag_u");
                        imgFields.Add("psfMag_g");
                        imgFields.Add("psfMag_r");
                        imgFields.Add("psfMag_i");
                        imgFields.Add("psfMag_z");
                        break;
                    case "psf_magerrs":
                        imgFields.Add("psfMagErr_u");
                        imgFields.Add("psfMagErr_g");
                        imgFields.Add("psfMagErr_r");
                        imgFields.Add("psfMagErr_i");
                        imgFields.Add("psfMagErr_z");
                        break;
                    case "petro_mags":
                        imgFields.Add("petroMag_u");
                        imgFields.Add("petroMag_g");
                        imgFields.Add("petroMag_r");
                        imgFields.Add("petroMag_i");
                        imgFields.Add("petroMag_z");
                        break;
                    case "petro_magerrs":
                        imgFields.Add("petroMagErr_u");
                        imgFields.Add("petroMagErr_g");
                        imgFields.Add("petroMagErr_r");
                        imgFields.Add("petroMagErr_i");
                        imgFields.Add("petroMagErr_z");
                        break;
                    case "SDSSname":
                        imgFields.Add("SDSSname");
                        break;
                    default:
                        imgFields.Add(j);
                        break;
                }
            }
            return ignoreImg;
        }

        private bool ReadSpecFields(string[] names)
        {
            bool ignoreSpec = true;

            foreach (string j in names)
            {
                if (j == "none" && names.Length == 1)
                    ignoreSpec = true;
                else
                {
                    ignoreSpec = false;
                    if ((j != "none"))
                    {
                        if (j == "minimal")
                        {
                            specFields.Add("plate");
                            specFields.Add("mjd");
                            specFields.Add("fiberid");
                        }
                        else if (j == "typical")
                        {
                            specFields.Add("plate");
                            specFields.Add("mjd");
                            specFields.Add("fiberid");
                            specFields.Add("z");
                            specFields.Add("zErr");
                            specFields.Add("zWarning");
                            specFields.Add("class");
                        }
                        else if (j == "radec")
                        {
                            specFields.Add("ra");
                            specFields.Add("[dec]");
                        }
                        else
                        {
                            if (j != "bestdb" && j != "blankSpec")
                                specFields.Add(j);
                        }
                    }
                }
            }
            return ignoreSpec;
        }

        private string MagLimits(string name, double val, string prefix, string magType)
        {
            if (double.IsNaN(val)) return "";

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
    }
}