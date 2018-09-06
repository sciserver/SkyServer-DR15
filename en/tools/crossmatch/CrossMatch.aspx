<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossMatch.aspx.cs" Inherits="SkyServer.en.tools.crossmatch.CrossMatch" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Cross Match Client</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">    

          <script src="http://code.jquery.com/jquery-1.12.4.js"></script>
          <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script type="text/javascript" src="http://cdn.datatables.net/1.10.12/js/jquery.dataTables.js"></script>
        <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
        <script type="text/javascript" src="http://cdn.datatables.net/select/1.2.0/js/dataTables.select.min.js"></script>
      <script src="js/crossmatch.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
      <!--Cross match specific-->
      <link href="css/crossmatch.css" rel="stylesheet">    

      <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/styles/default.min.css">
       <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/highlight.min.js"></script>



  </head>

  <body role="document" onload="init()">
      <script>hljs.initHighlightingOnLoad();</script>
      <%string skyqueryurl = ConfigurationManager.AppSettings["skyqueryUrl"]; %>
      <script type="text/javascript">var skyqueryUrl = "<%=skyqueryurl%>";</script>
      <%@ Register TagPrefix="login" TagName="loginParam" Src="..\..\Loginfloat.ascx"  %>
  <login:loginParam ID="loginParams" runat="server"/>
  
    <!-- Fixed navbar -->
    <!--style="background-image: url(images/new_titlebar.jpg)">-->
      <!--<div class="container" > 
        
          <a class="header-brand" href="#"></a> 
          <div class="row">
            <div class="col-lg-3 col-lg-offset-3">
                <button type="button" class="btn btn-lg btn-default"  id="Button1">Login</button>
            </div>
           </div>                  
    
      </div>-->
    
   <div class="container-fluid">
        <div class="row">
           <!-- <a class="header-brand" href="#"></a> -->
            <div class="col-lg-3 col-lg-offset-9">
           <%--<button type="button" class="btn btn-lg btn-default"  id="Button2">Login</button>--%>
            </div>
         </div>         
    </div>

    <div class="container theme-showcase" role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="tophead">
        <h2 align="center">SkyQuery CrossMatch Client</h2>
        <p align="center">
            This tool uses <a href="<%=string.IsNullOrEmpty(token) ? skyqueryurl : skyqueryurl + "?token="+token%>" target="_blank">SkyQuery</a>  web services to run a crossmatch between catalogs of astronomical sources. 
            <br />
            SkyQuery documentation available <a href="<%=string.IsNullOrEmpty(token) ? skyqueryurl + "Apps/Docs/Default.aspx" : skyqueryurl + "Apps/Docs/Default.aspx?token="+token%>" target="_blank">HERE.</a>
            
            References to SkyQuery technical papers:  
            <a href="http://scholar.google.hu/citations?view_op=view_citation&hl=hu&user=kllQz-YAAAAJ&cstart=20&sortby=pubdate&citation_for_view=kllQz-YAAAAJ:YsMSGLbcyi4C" target="_blank">Paper 1</a>, 
            <a href="http://scholar.google.hu/citations?view_op=view_citation&hl=hu&user=kllQz-YAAAAJ&cstart=20&sortby=pubdate&citation_for_view=kllQz-YAAAAJ:qxL8FJ1GzNcC" target="_blank">Paper 2</a>, 
            <a href="http://scholar.google.hu/citations?view_op=view_citation&hl=hu&user=kllQz-YAAAAJ&cstart=20&sortby=pubdate&citation_for_view=kllQz-YAAAAJ:roLk4NBRz8UC" target="_blank">Paper 3.</a>
        </p>
      </div>

<% if(!String.IsNullOrEmpty(token)) { %>
      
    <div class="row">

        <div class="col-sm-7">

             <h3 align="center">CrossMatch Query:</h3>
             <div class="dropdown">
              <label class="dropdown-toggle sample-queries-button" data-toggle="dropdown" role="button" aria-expanded="false">Sample Queries <span class="caret"></span></label>
                <ul class="dropdown-menu scrollable-menu" role="menu" id="samples" aria-labelledby="dropdownMenu">
                    <li><a tabindex="0" href="#" id="simple1">Simple Query</a></li>
                    <li><a tabindex="1" href="#" id="simple2">CrossMatch Query</a></li>
                </ul>                          
             </div>                

               <div class="query-text-area">
        <pre> <%--<code class="SQL"> --%>
        <textarea class="form-control" id="query" rows="13">
SELECT s.objid, s.ra, s.dec, g.objid, g.ra, g.dec, x.ra, x.dec 
INTO twowayxmatch 
FROM XMATCH(
     MUST EXIST IN SDSSDR7:PhotoObjAll AS s 
          WITH(POINT(s.ra, s.dec), ERROR(0.1, 0.1, 0.1)), 
     MUST EXIST IN GALEXGR6:PhotoObjAll AS g 
          WITH(POINT(g.ra, g.dec), ERROR(0.2, 0.2, 0.2)), 
     LIMIT BAYESFACTOR TO 1e3
) AS x
WHERE s.ra BETWEEN 0 AND 5 AND s.dec BETWEEN 0 AND 5 
AND g.ra BETWEEN 0 AND 5 AND g.dec BETWEEN 0 AND 5 </textarea>
            <%--</code>--%>
        </pre>
      </div>

      <p>  
       <button type="button" class="btn btn-lg btn-default" id="submit">Submit</button>
       <button type="button" class="btn btn-lg btn-primary" id="quick">Quick</button>
       <button type="button" class="btn btn-lg btn-info" id="info">Info</button>       
      </p>


</div>


        <div class="col-sm-5">

        <h3 align="center">Browse Catalogs:</h3>

          <label></label>
          <div class="mylist-group schema-browser" id="ListDataSets"></div>
          <h4 align="center">Catalog Tables:</h4>
          <div class="mylist-group schema-browser" id="ListTables"></div>
          <h4 align="center">Table Columns:</h4>
          <div class="mylist-group schema-browser" id="ListColumns"></div>
        </div>

    </div>

<hr/>


      <div class="row">

        <div class="col-sm-7">

      
        <h3 align="center">My CrossMatch History</h3>
        <h5 align="center"><span align="left"> <input id="quickList" type="checkbox" aria-label="..."/></span> Show Quick Queries <button align="center" type="button" class="glyphicon glyphicon-refresh" id="refresh"></button></h5>  

            <div class="table-responsive">
                <p align="left"> Top # of jobs:<input name="numberOfJobs" id="numberOfJobs"  type="text" value="20" size="4"/></p>
		        <table id="jobsTable" class="table-bordered hover order-column compact hidden7thColumn">
			        <thead>
				        <tr>
                            <th>Date Created</th>
                            <th>Date Started</th>
                            <th>Date Finished</th>    
                            <th>Queue</th>                
                            <th>Status</th>                
                            <th>Table</th>
                            <th>Query</th>
					    </tr>
				    </thead>
				    <tbody id="jobsTableBody">
				    </tbody>
			    </table>
		    </div>
         </div>
        <div class="col-sm-5">
            <h3 align="center">Query</h3>  
            <br/><br/><br/>
            <textarea class="form-control" id="crossMatchQuery" rows="19">dsedsd</textarea>
        </div>
    </div>




<% } else { %>

        <p>
To use the Cross Match Client, <a target=INFO href=" <% =ConfigurationManager.AppSettings["Keystone.Login"]+ConfigurationManager.AppSettings["skyserverBase"] + HttpUtility.UrlEncode(Request.Url.AbsolutePath) %> "><font  ><i><b>log-in</b></i></font></a> with SciServer.
        </p>


<% } %>


    

    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
    <script src="js/bootstrap.min.js"></script>
    <!--<script src="../../assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!--<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
  </body>
</html>

