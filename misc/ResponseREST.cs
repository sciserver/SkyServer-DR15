using System.Collections.Specialized;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using net.ivoa.VOTable;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;

using System.Threading.Tasks;
using System.Text;
using System.Text.RegularExpressions;
using System.IO;

using System.Threading;
using System.Runtime.Serialization.Formatters.Binary;
using System.Xml.Serialization;
using Newtonsoft.Json.Linq;
using System.Web.UI;


namespace SkyServer.Tools.Search
{
    public class ResponseREST
    {
        
        HttpResponse httpResponse;
        HttpCookie cookie;
        string token = "";
        string requestUrl = "";
        String requestString = "";
        string ClientIpHeaderName = ConfigurationManager.AppSettings["IpHeaderName"];
        string ReferrerHeaderName = ConfigurationManager.AppSettings["RefererHeaderName"];
        public static string searchTool = "";
        private Globals globals;
        String WSrequestUri = "";
        bool SaveResponseToFile = ConfigurationManager.AppSettings["SaveResponseToFile"].ToLower() == "true" ? true : false;

        public void ProcessRequest()
        {
        }
        public ResponseREST()
        {
            this.globals = new Globals();
            WSrequestUri = globals.DatabaseSearchWS;
        }

        public ResponseREST(string WSrequestUri)
        {
            this.WSrequestUri = WSrequestUri;
        }

        public ResponseREST(HttpResponse Response)
        {
            this.httpResponse = Response;
        }
        
        
        /// <summary>
        /// This method is used to pass all the requests and run rest web service
        /// </summary>
        public void ProcessRequestREST(HttpRequest Request, HttpResponse Response)
        {
            this.globals = new Globals();
            WSrequestUri = this.globals.DatabaseSearchWS;

            httpResponse = Response;
            
            cookie = Request.Cookies["Keystone"];
            if (cookie != null)
                if (cookie["token"] != null || !cookie["token"].Equals(""))
                    token = cookie["token"];

            NameValueCollection inputForm = Request.Form;
            if(inputForm.Count==0)
             inputForm = Request.QueryString;

            foreach (string key in inputForm.Keys)
            {
                    requestString += key + "=" + Uri.EscapeDataString(inputForm[key]) + "&";
            }
            requestString = requestString.TrimEnd('&');

            searchTool = inputForm["searchtool"];
            //SaveResponseToFile = String.IsNullOrEmpty(inputForm["SaveResponseToFile"]) ? "true" : "false";
            
            bool temp = false;
            string radecText = "";
            Globals globals = new Globals();

            switch(searchTool){
                case "UserHistory": requestUrl = globals.UserHistoryWS; break;
                case "SearchForm": requestUrl = globals.SQLSearchWS; break;
                case "SQL": requestUrl = globals.SQLSearchWS; break;
                case "Radial": requestUrl = globals.RadialSearchWS; break;
                case "Rectangular": requestUrl = globals.RectangularSearchWS; break;
                case "CrossID": 
                    temp = true; requestUrl = globals.CrossIdWS; break;
                case "Imaging":
                    switch (inputForm["positionType"])
                    {
                        case "cone": requestUrl = globals.ConeImaging; break;
                        case "rectangular": requestUrl = globals.RectangularImaging; break;
                        case "none": requestUrl = globals.NoPositionImaging; break;
                        case "proximity": temp = true; requestUrl = globals.ProximityImaging; break;
                        default: throw new Exception("No proper positionType selected."); break;
                    }
                    break;
                case "Spectro":
                    switch (inputForm["positionType"])
                    {
                        case "cone": requestUrl = globals.ConeSpectroWS; break;
                        case "rectangular": requestUrl = globals.RectangularSpectroWS; break;
                        case "none": requestUrl = globals.NoPositionSpectroWS; break;
                        case "proximity": temp = true; requestUrl = globals.ProximitySpectroWS; break;
                        default: throw new Exception("No proper positionType selected."); break;
                    }
                    break;
                case "IRSpectra":
                    switch (inputForm["positionType"])
                    {
                        case "cone": requestUrl = globals.ConeIRWS; break;
                        case "conelb": requestUrl = globals.GalacticIRWS; break;
                        case "none": requestUrl = globals.NoPositionIRWS; break;
                        //case "proximity": temp = true; requestUrl = globals.ProximitySpectroWS; break;
                        default: throw new Exception("No proper positionType selected."); break;
                    }
                    break;
                default: throw new Exception("Select proper tool");

            }
            
            if (temp)
            {
                /*
                radecText = inputForm["radecTextArea"];
                if (radecText == null || radecText.Equals(""))
                {
                    if (Request.Files.Count > 0 && Request.Files[0].ContentLength > 0)
                    {
                        radecText = (new StreamReader(Request.Files[0].InputStream)).ReadToEnd();
                    }
                } 
                 */
                bool HasFile = false;
                bool HasTextList = false;
                if (Request.Files.Count > 0 && Request.Files[0].ContentLength > 0)
                {
                    radecText = (new StreamReader(Request.Files[0].InputStream)).ReadToEnd();
                    HasFile = true;
                }
                else
                {
                    try
                    {
                        if (searchTool == "CrossID")
                            radecText = inputForm["paste"];
                        if (inputForm["positionType"] == "proximity")
                            radecText = inputForm["radecTextArea"];

                        if (radecText.Length > 0)
                        {
                            HasTextList = true;
                            //throw new ApplicationException("ERROR: No (RA,DEC) list specified for CrossID tool.");
                        }
                    }
                    catch
                    {
                        //throw new ApplicationException("ERROR: Neither upload file nor list specified for search.");
                        httpResponse.Write(getErrorMessageHTMLresult("Not able to parse file or list."));
                        httpResponse.End();
                        return;
                    }
                }
                if(!HasTextList && !HasFile)
                {
                    httpResponse.Write(getErrorMessageHTMLresult("Not able to read input file or list."));
                    httpResponse.End();
                    return;
                }
            }

            runQuery(requestUrl, requestString, radecText, inputForm["format"]);
        }




        /// <summary>
        /// Runs the query.
        /// </summary>
        /// <param name="serviceUrl">The service URL.</param>
        /// <param name="requestString">The request string.</param>
        /// <param name="uploaded">The uploaded.</param>
        /// <param name="returnType">Type of the return.</param>
        public void runQuery( String serviceUrl, String requestString, string uploaded, string returnType)
        {

            Globals globals = new Globals();
            /// Once the authenticated skyserver is ready, we can update the code to retrieve token          
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(serviceUrl);
            client.Timeout = new TimeSpan(0, 0, 0, globals.TimeoutSkyserverWS);// default is 100000ms
            string requestUri = client.BaseAddress + "?" + requestString;
            
            string queryResult = "";
            byte[]  queryResultByte = null;
            HttpResponseMessage respMessage = null;
            StringContent content = null;

            if (uploaded == null || uploaded.Equals(""))
                content = new StringContent("");
            else 
                content = new StringContent(uploaded);

            client.DefaultRequestHeaders.Add(ClientIpHeaderName, GetClientIP());
            client.DefaultRequestHeaders.Referrer = HttpContext.Current.Request.UrlReferrer != null ? HttpContext.Current.Request.UrlReferrer : HttpContext.Current.Request.Url;

            if (!(token == null || token == String.Empty))
                content.Headers.Add("X-Auth-Token", token);

            if (!HttpContext.Current.Request.Cookies.AllKeys.Contains("ASP.NET_SessionId"))
            {
                try
                {
                    HttpContext.Current.Request.Cookies.Add(new HttpCookie("ASP.NET_SessionId", System.Web.HttpContext.Current.Session.SessionID));
                }
                catch { };
            }
            //posting the request and getting the result back.
            respMessage = client.PostAsync(requestUri, content).Result;


            //respMessage.EnsureSuccessStatusCode();
            if (respMessage.IsSuccessStatusCode)
                if (returnType=="fits")
                    queryResultByte = respMessage.Content.ReadAsByteArrayAsync().Result;
                else
                    queryResult = respMessage.Content.ReadAsStringAsync().Result;
            else
            {
                string ErrorMessage = respMessage.Content.ReadAsStringAsync().Result;
                queryResult = getErrorMessageHTMLresult(ErrorMessage);
                returnType = "html";
                //throw new ApplicationException("Query did not return results successfully, check input and try again later.");
            }

            setContentType(returnType);
            if (returnType=="fits" || returnType=="dataset")
                httpResponse.BinaryWrite(queryResultByte);
            else
                httpResponse.Output.Write(queryResult);
            
            httpResponse.End();
            //if (returnType.ToLower().Equals("html"))
            //    //httpResponse.Write(JsonToHtml(queryResult));
            //    httpResponse.Write(queryResult);
            //else
            //    httpResponse.Write(queryResult);
            
        }

        string FileName = "Skyserver_"+ searchTool + DateTime.UtcNow ;
        public void setContentType(string format) {
            format  = format.ToLower();
            switch(format){
                case "csv"    :  httpResponse.ContentType = "text/plain";
                                 if(SaveResponseToFile)
                                     httpResponse.AddHeader("Content-Disposition", "attachment;filename=\"" + FileName +".csv\"");
                                 break;
                case "xml"    :  httpResponse.ContentType = "application/xml";
                                 if (SaveResponseToFile)
                                     httpResponse.AddHeader("Content-Disposition", "attachment;filename=\"" + FileName + ".xml\"");
                                 break;
                case "votable": httpResponse.ContentType = "application/x-votable+xml";
                                 if (SaveResponseToFile)
                                     httpResponse.AddHeader("Content-Disposition", "attachment;filename=\"" + FileName + ".votable.xml\"");
                                 break;
                case "json"   :  httpResponse.ContentType = "application/json";
                                 if (SaveResponseToFile)
                                     httpResponse.AddHeader("Content-Disposition", "attachment;filename=\"" + FileName + ".json\"");
                                 break;
                case "fits"   :  httpResponse.ContentType = "application/octet-stream";
                                 if (SaveResponseToFile)
                                     httpResponse.AddHeader("Content-Disposition", "attachment;filename=\"" + FileName + ".fits\"");
                                 break;
                case "mydb"   :
                case "html"   :  httpResponse.ContentType = "text/html";
                                 break;
                default       :  httpResponse.ContentType = "text/plain";
                                 if (SaveResponseToFile)
                                     httpResponse.AddHeader("Content-Disposition", "attachment;filename=\"" + FileName + ".txt\"");
                                 break;
            }

            //return format;
        }


        public string getErrorMessageHTMLresult(string ErrorMessage)
        {
            string message = "";
            string message2 = "";
/*
            string[] Expressions = new string[] { "\"Error Message\":\"(.*?)\"", "\"Error Message\": \"(.*?)\"", "\"Error Message\" :\"(.*?)\"", "\"Error Message\" : \"(.*?)\"", "\"Message\":\"(.*?)\"", "\"Message\" :\"(.*?)\"" , "\"Message\": \"(.*?)\"", "\"Message\" : \"(.*?)\""};
            foreach (string expresion in Expressions)
            {
                Regex regex = new Regex(expresion);
                var v = regex.Match(ErrorMessage);
                message = v.Groups[1].ToString();
                if (message != "")
                    break;
            }
            if (message == "")
            {
                message = "Query did not return results successfully, check input and try again later.";

                string errmessage = ErrorMessage.ToLower();
                if (errmessage.Contains("<html>"))
                {
                    message2 = errmessage;
                    message += "<br>MORE INFO FROM RESPONSE:<br><br>";
                }
            }
 */ 

            try
            {
                JObject jarr = JObject.Parse(ErrorMessage);
                foreach (KeyValuePair<String, JToken> property in jarr)
                {
                    string propertyName = property.Key.ToString();
                    if (propertyName == "Error Message" || propertyName == "Message")
                    {
                        message = property.Value.ToString();
                        break;
                    }
                }
                if (message == "")
                {
                    message = "Query did not return results successfully, check the input and try again.";

                    string errmessage = ErrorMessage.ToLower();
                    if (errmessage.Contains("<html"))
                    {
                        message2 = errmessage;
                        message += "<br>MORE INFO FROM RESPONSE:<br><br>";
                    }
                    else { message += "<br>MORE DETAILED INFO FROM RESPONSE:<br><br>"+ErrorMessage;}
                }

            }
            catch { message = ErrorMessage; }

            
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("<html><head>\n");
            sb.AppendFormat("<title>Skyserver Error</title>\n");
            sb.AppendFormat("</head><body bgcolor=white>\n");
            sb.AppendFormat("<h2>An error occured</h2>");
            sb.AppendFormat("<H3 BGCOLOR=pink><font color=red><br>" + message + "</font></H3>");
            sb.AppendFormat("</BODY></HTML>\n");
            sb.AppendFormat(message2);
            return sb.ToString();
        }


        public string JsonToHtml(string json) {

            int cnt = 0;
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("<html><head>\n");
            sb.AppendFormat("<title>SDSS Query Results</title>\n");
            sb.AppendFormat("</head><body bgcolor=white>\n");
            //JObject o = JObject.Parse(json);
            JArray jarr = JArray.Parse(json);
            sb.AppendFormat("<table border='1'>");
            foreach (JObject o in jarr.Children<JObject>())
            {
                var temp = o["Rows"];
                JArray arr = (JArray)o["Rows"];
                foreach (JObject jb in arr.Children<JObject>())
                {
                    IList<string> keys = jb.Properties().Select(p => p.Name).ToList();
                    if (cnt == 0)
                    {
                        sb.AppendFormat("<tr align=center>");
                        for (int i = 0; i < keys.Count; i++)
                            sb.AppendFormat("<td><font size=-1>{0}</font></td>", keys[i]);
                        sb.AppendFormat("</tr>");
                    }
                    sb.AppendFormat("<tr align=center>");
                    for (int i = 0; i < keys.Count; i++)
                        sb.AppendFormat("<td><font size=-1>{0}</font></td>", jb[keys[i]]);
                    sb.AppendFormat("</tr>");
                    cnt++;
                }
               
            }
            sb.AppendFormat("</table></body></html>");
            return sb.ToString();
        }


        //***************************************************************************************************************************************************************
        // this code can be redesigned and thought after April 15 2015


        public string GetClientIP()
        {
            string clientIP = "";
            try
            {
                if (!string.IsNullOrEmpty(HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"]))
                {
                    clientIP = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                    string[] addresses = new string [] {};
                    try
                    {
                        addresses = clientIP.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
                    }
                    catch { }
                    if (addresses.Length > 0)
                        clientIP = addresses[0];
                }
                if (string.IsNullOrEmpty(clientIP))
                {
                    if (HttpContext.Current.Request.UserHostAddress != null)
                    {
                        clientIP = HttpContext.Current.Request.UserHostAddress;
                    }
                    else
                    {
                        clientIP = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                    }
                }
            }
            catch { }
            if (clientIP == "")
                clientIP = "unknown";
            return clientIP;
        }


        public DataSet GetObjectInfoFromWebService(HttpRequest Request)
        {
            this.globals = new Globals();
            string serviceURI = globals.ExploreWS;
            string requestString = GetURIparameters(Request);
            return GetObjectInfoFromWebService(serviceURI, requestString);
        }


        public string GetURIparameters(HttpRequest Request)
        {
            string URIparameters = "?";
            NameValueCollection inputForm = Request.Form;
            if (inputForm.Count == 0)
                inputForm = Request.QueryString;

            foreach (string key in inputForm.Keys)
            {
                URIparameters += key + "=" + inputForm[key] + "&";
            }
            URIparameters = URIparameters.EndsWith("&") ? URIparameters.Substring(0, URIparameters.Length - 1) : URIparameters;
            return URIparameters;
        }


        public DataSet GetObjectInfoFromWebService(String serviceURI, string URIparameters)
        {
            //string URI = "";
            
            string ErrorMessage = "";
            try
            {
                //if (!URIparameters.ToLower().Contains("&clientip="))
                //    URIparameters += "&clientIP=" + GetClientIP();
                if (!URIparameters.ToLower().Contains("&format="))
                    URIparameters += "&format=dataset";
                if (URIparameters.StartsWith("?"))
                    URIparameters = URIparameters.Substring(1);

                cookie = HttpContext.Current.Request.Cookies["Keystone"];
                if (cookie != null)
                    if (cookie["token"] != null || !cookie["token"].Equals(""))
                        token = cookie["token"];


                //HttpWebRequest req = (System.Net.HttpWebRequest)System.Net.WebRequest.Create(serviceURI + "?" + Uri.EscapeUriString(URIparameters));
                HttpWebRequest req = (System.Net.HttpWebRequest)WebRequest.Create(serviceURI + "?" + Uri.EscapeUriString(URIparameters));

                //WebRequest req = WebRequest.Create(serviceURI + "?" + Uri.EscapeUriString(URIparameters));

                if (!token.Equals("") && token != null)
                    req.Headers.Add("X-Auth-Token", token);

                if (!HttpContext.Current.Request.Cookies.AllKeys.Contains("ASP.NET_SessionId"))
                {
                    try
                    {
                        HttpContext.Current.Request.Cookies.Add(new HttpCookie("ASP.NET_SessionId", System.Web.HttpContext.Current.Session.SessionID));
                    }
                    catch { };
                }
                req.Headers.Add(ClientIpHeaderName, GetClientIP());

                string Referrer = HttpContext.Current.Request.UrlReferrer != null ? HttpContext.Current.Request.UrlReferrer.ToString() : HttpContext.Current.Request.Url.ToString();
                req.Headers.Add(ReferrerHeaderName, Referrer);

                WebResponse resp = req.GetResponse();
                BinaryFormatter fmt = new BinaryFormatter();
                DataSet ds = new DataSet();
                ds = (DataSet)fmt.Deserialize(resp.GetResponseStream());
                return ds;
            }
            catch (WebException e)
            {
                WebResponse resp = e.Response;
                using (StreamReader reader = new StreamReader(resp.GetResponseStream()))
                {
                    ErrorMessage = reader.ReadToEnd();
                }
                throw new Exception("Web Service error.\n\n" + e.Message + "\n" + ErrorMessage);
                //throw new Exception(e.Message + "\nThere is an error in getting results from this URI:\n" + URI);
            }
        }


        public DataSet RunCasjobs(string command, string ClientIP, string taskname)
        {
            // throw new IndexOutOfRangeException("There is an invalid argument");

            try
            {

                var request = (System.Net.HttpWebRequest)System.Net.WebRequest.Create(ConfigurationManager.AppSettings["casjobsRESTapi"]);
                request.Method = "POST";
                request.ContentType = "application/json";
                request.Accept = "application/x-dataset";

                if (!token.Equals("") && token != null)
                    request.Headers.Add("X-Auth-Token", token);

                StreamWriter streamWriter = new StreamWriter(request.GetRequestStream());
                StringWriter sw = new StringWriter();
                JsonWriter jsonWriter = new JsonTextWriter(sw);
                jsonWriter.WriteStartObject();
                jsonWriter.WritePropertyName("Query");
                jsonWriter.WriteValue(command);
                jsonWriter.WritePropertyName("TaskName");
                jsonWriter.WriteValue(taskname);
                jsonWriter.WritePropertyName("ClientIP");
                jsonWriter.WriteValue(ClientIP);
                //jsonWriter.WritePropertyName("ReturnDataSet");
                //jsonWriter.WriteValue(true);
                jsonWriter.WriteEndObject();
                jsonWriter.Close();
                streamWriter.Write(sw.ToString());
                streamWriter.Close();

                DataSet ds = null;
                using (System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse())
                {
                    BinaryFormatter fmt = new BinaryFormatter();
                    ds = (DataSet)fmt.Deserialize(response.GetResponseStream());
                }
                return ds;
            }
            catch (Exception e)
            {
                throw new Exception("There is an error running this Query.\n Query:" + command + " ");

            }



        }


        public DataSet RunCasjobs(string command, string taskname)
        {
            // throw new IndexOutOfRangeException("There is an invalid argument");

            try
            {

                var request = (System.Net.HttpWebRequest)System.Net.WebRequest.Create(ConfigurationManager.AppSettings["casjobsRESTapi"]);
                request.Method = "POST";
                request.ContentType = "application/json";
                request.Accept = "application/x-dataset";

                if (!token.Equals("") && token != null)
                    request.Headers.Add("X-Auth-Token", token);

                StreamWriter streamWriter = new StreamWriter(request.GetRequestStream());
                StringWriter sw = new StringWriter();
                JsonWriter jsonWriter = new JsonTextWriter(sw);
                jsonWriter.WriteStartObject();
                jsonWriter.WritePropertyName("Query");
                jsonWriter.WriteValue(command);
                jsonWriter.WritePropertyName("TaskName");
                jsonWriter.WriteValue(taskname);
                //jsonWriter.WritePropertyName("ReturnDataSet");
                //jsonWriter.WriteValue(true);
                jsonWriter.WriteEndObject();
                jsonWriter.Close();
                streamWriter.Write(sw.ToString());
                streamWriter.Close();

                DataSet ds = null;
                using (System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse())
                {
                    BinaryFormatter fmt = new BinaryFormatter();
                    ds = (DataSet)fmt.Deserialize(response.GetResponseStream());
                }
                return ds;
            }
            catch (Exception e)
            {
                throw new Exception("There is an error running this Query.\n Query:" + command + " ");

            }



        }
        //</summary>
        //<param name="command"></param>
        //<returns></returns>
        public DataSet RunCasjobs(string command)
        {
            // throw new IndexOutOfRangeException("There is an invalid argument");

            try
            {

                var request = (System.Net.HttpWebRequest)System.Net.WebRequest.Create(ConfigurationManager.AppSettings["casjobsRESTapi"]);
                request.Method = "POST";
                request.ContentType = "application/json";
                request.Accept = "application/x-dataset";

                if (!token.Equals("") && token != null)
                    request.Headers.Add("X-Auth-Token", token);

                StreamWriter streamWriter = new StreamWriter(request.GetRequestStream());
                StringWriter sw = new StringWriter();
                JsonWriter jsonWriter = new JsonTextWriter(sw);
                jsonWriter.WriteStartObject();
                jsonWriter.WritePropertyName("Query");
                jsonWriter.WriteValue(command);
                //jsonWriter.WritePropertyName("ReturnDataSet");
                //jsonWriter.WriteValue(true);
                jsonWriter.WriteEndObject();
                jsonWriter.Close();
                streamWriter.Write(sw.ToString());
                streamWriter.Close();

                DataSet ds = null;
                using (System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse())
                {
                    BinaryFormatter fmt = new BinaryFormatter();
                    ds = (DataSet)fmt.Deserialize(response.GetResponseStream());
                }
                return ds;
            }
            catch (Exception e)
            {
                throw new Exception("There is an error running this Query.\n Query:" + command + " ");

            }
        }





    }
}