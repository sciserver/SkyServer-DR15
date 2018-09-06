<%@ Page Title="" Language="C#" MasterPageFile="ObjectExplorer.Master" AutoEventWireup="true" CodeBehind="galaxyzoo.aspx.cs" Inherits="SkyServer.Tools.Explore.GalaxyZoo" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="SkyServer" %>
<%@ Import Namespace="SkyServer.Tools.Explore" %>

<asp:Content ID="Content2" ContentPlaceHolderID="OEContent" runat="server">

    <div id="neighbors" class="content">
    
    <table class="content">
    <tr><td>
    <h1>Galaxy Zoo</h1>

    <p class="content">SDSS photometric data also includes morphological classifications of galaxies from the Galaxy Zoo project. More than 200,000 
        online volunteer citizen scientists. <a href="http://zoo1.galaxyzoo.org" class="content">Galaxy Zoo 1 
        <img src="../../images/offsite_black.png" alt="offiste" /></a> data consists of simple morphological type classification 
        (spiral vs. elliptical) for 893,212 galaxies. Galaxy Zoo 1 data are described in 
        <a href="http://adsabs.harvard.edu/abs/2011MNRAS.410..166L" class="content">Lintott et al. 2011 
        <img src="../../images/offsite_black.png" alt="(offsite)" /></a>, and details of the project are available 
        in <a href="http://adsabs.harvard.edu/abs/2008MNRAS.389.1179L" class="content">
        Linott et al. 2008 <img src="../../images/offsite_black.png" alt="(offsite)" /></a>.
    </p>

    <p class="content">New in SDSS Data Release 10 are more detailed classifications of internal structure of the brightest 25% of the Main Galaxy 
        Sample from <a href="http://zoo2.galaxyzoo.org" class="content">Galaxy Zoo 2 <img src="../../images/offsite_black.png" alt="(offiste)" /></a>. 
        Full details of the processes used to combine the votes (from a median of ~40 people per galaxy) and construct debiased classification 
        likelihoods are described in Willett et al. (in press at <i>MNRAS</i>).
    </p>

    <p class="content">If this object has matches in any of the Galaxy Zoo tables, the most commonly accessed columns in those tables are 
        displayed below. For full data, click on the table names. To return to this page, click "Galaxy Zoo" in the left-hand column.
    </p>

    </td></tr>
    <tr><td>
        
    <h2>Galaxy Zoo 1</h2>
        <%
            string explore = "DisplayResults.aspx?id=" + objId + "&cmd=";
            string cmd =ExplorerQueries.zooSpec.Replace("@objId",objId);
         %>
        <h3><a href="<%=explore+cmd%>&name=zooSpec" class="content">zooSpec</a></h3>

    <%  
        RunQuery runQuery = new RunQuery();
        
        DataSet ds = new DataSet();

        cmd = ExplorerQueries.zooSpec1.Replace("@objId", objId);
        //ds =runQuery.RunCasjobs(cmd,"Explore:GalaxyZoo");
        //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zooSpec1");
        ds.Merge(GalaxyZooTables.Tables["zooSpec1"]);
        master.showHTable(ds, 600, "PhotoObj");

        cmd = ExplorerQueries.zooSpec2.Replace("@objId", objId);
        //ds =runQuery.RunCasjobs(cmd,"Explore:GalaxyZoo");
        //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zooSpec2");
        ds.Reset();
        ds.Merge(GalaxyZooTables.Tables["zooSpec2"]);
        master.showHTable(ds, 600, "PhotoObj");
        
        // No spec
        cmd = ExplorerQueries.zooNoSpec.Replace("@objId", objId);
    %>

        <h3><a href="<%=explore+cmd%>&name=zooNoSpec" class="content">zooNoSpec</a></h3>
        
     <%    
        
         //ds = runQuery.RunCasjobs(cmd, "Explore:GalaxyZoo");
         //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zooNoSpec");
         ds.Reset();
         ds.Merge(GalaxyZooTables.Tables["zooNoSpec"]);
         master.showHTable(ds, 600, "PhotoObj");
         
         // confidence
         cmd = ExplorerQueries.zooConfidence.Replace("@objId", objId);
     %>

        <h3><a href="<%=explore+cmd%>&name=zooConfidence" class="content">zooConfidence</a></h3>
        
     <%
         cmd = ExplorerQueries.zooConfidence2.Replace("@objId", objId);
         //ds = runQuery.RunCasjobs(cmd, "Explore:GalaxyZoo");
         //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zooConfidence2");
         ds.Reset();
         ds.Merge(GalaxyZooTables.Tables["zooConfidence2"]);
         master.showHTable(ds, 600, "PhotoObj");                   
         
         //zooMirrorBias
         cmd = ExplorerQueries.zooMirrorBias.Replace("@objId", objId);
     %>

        <h3><a href="<%=explore+cmd%>&name=zooMirrorBias" class="content">zooMirrorBias</a></h3>
        
     <%
         cmd = ExplorerQueries.zooMirrorBias2.Replace("@objId", objId);
         //ds = runQuery.RunCasjobs(cmd, "Explore:GalaxyZoo");
         //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zooMirrorBias2");
         ds.Reset();
         ds.Merge(GalaxyZooTables.Tables["zooMirrorBias2"]);
         master.showHTable(ds, 600, "PhotoObj");

         //zooMonochromeBias
         cmd = ExplorerQueries.zooMonochromeBias.Replace("@objId", objId);
     %>

        <h3><a href="<%=explore+cmd%>&name=zooMonochromeBias" class="content">zooMonochromeBias</a></h3>
        
     <%
         cmd = ExplorerQueries.zooMonochromeBias2.Replace("@objId", objId);
         //ds=master.runQuery.RunCasjobs(cmd);
         ds.Reset();
         ds.Merge(GalaxyZooTables.Tables["zooMonochromeBias2"]);
         master.showHTable(ds, 600, "PhotoObj");
            
        // show the Galaxy Zoo 2 data only if this is DR10
        if (globals.ReleaseNumber >= 10) 
        {
            
            //zoo2MainSpecz

            cmd = ExplorerQueries.zoo2MainSpecz.Replace("@objId", objId);
     %>

     <h2>Galaxy Zoo 2</h2>

        <h3><a href="<%=explore+cmd%>&name=zoo2MainSpecz" class="content">zoo2MainSpecz</a></h3>
        
     <%
            cmd = ExplorerQueries.zoo2MainSpecz2.Replace("@objId", objId);
            //ds = runQuery.RunCasjobs(cmd, "Explore:GalaxyZoo");
            //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zoo2MainSpecz2");
            ds.Reset();
            ds.Merge(GalaxyZooTables.Tables["zoo2MainSpecz2"]);            
            master.showHTable(ds, 600, "PhotoObj");

            //zoo2MainPhotoz
            cmd = ExplorerQueries.zoo2MainPhotoz.Replace("@objId", objId);
     %>

        <h3><a href="<%=explore+cmd%>&name=zoo2MainPhotoz" class="content">zoo2MainPhotoz</a></h3>
        
     <%
            cmd = ExplorerQueries.zoo2MainPhotoz2.Replace("@objId", objId);
            //ds = runQuery.RunCasjobs(cmd, "Explore:GalaxyZoo");
            //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zoo2MainPhotoz2");
            ds.Reset();
            ds.Merge(GalaxyZooTables.Tables["zoo2MainPhotoz2"]);            
            master.showHTable(ds, 600, "PhotoObj");

            //zoo2Stripe82Normal
            cmd = ExplorerQueries.zoo2Stripe82Normal.Replace("@objId", objId);
     %>

        <h3><a href="<%=explore+cmd%>&name=zoo2Stripe82Normal" class="content">zoo2Stripe82Normal</a></h3>
        
     <%
            cmd = ExplorerQueries.zoo2Stripe82Normal2.Replace("@objId", objId);
            //ds = runQuery.RunCasjobs(cmd, "Explore:GalaxyZoo");
            //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zoo2Stripe82Normal2");
            ds.Reset();
            ds.Merge(GalaxyZooTables.Tables["zoo2Stripe82Normal2"]);            
            master.showHTable(ds, 600, "PhotoObj");

            //zoo2Stripe82Coadd1
            cmd = ExplorerQueries.zoo2Stripe82Coadd1.Replace("@objId", objId);
     %>

        <h3><a href="<%=explore+cmd%>&name=zoo2Stripe82Coadd1" class="content">zoo2Stripe82Coadd1</a></h3>
        
     <%
            cmd = ExplorerQueries.zoo2Stripe82Coadd1_2.Replace("@objId", objId);
            //ds = runQuery.RunCasjobs(cmd, "Explore:GalaxyZoo");
            //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zoo2Stripe82Coadd1_2");
            ds.Reset();
            ds.Merge(GalaxyZooTables.Tables["zoo2Stripe82Coadd1_2"]);            
            master.showHTable(ds, 600, "PhotoObj");

            //zoo2Stripe82Coadd2
            cmd = ExplorerQueries.zoo2Stripe82Coadd2.Replace("@objId", objId);
     %>

        <h3><a href="<%=explore+cmd%>&name=zoo2Stripe82Coadd2" class="content">zoo2Stripe82Coadd2</a></h3>
        
     <%
            cmd = ExplorerQueries.zoo2Stripe82Coadd2_2.Replace("@objId", objId);
            //ds = runQuery.RunCasjobs(cmd, "Explore:GalaxyZoo");
            //ds = runQuery.RunDatabaseSearch(cmd, globals.ContentDataset, ClientIP, "Skyserver.Explore.GalaxyZoo.zoo2Stripe82Coadd2_2");
            ds.Reset();
            ds.Merge(GalaxyZooTables.Tables["zoo2Stripe82Coadd2_2"]);            
            master.showHTable(ds, 600, "PhotoObj");
     
         }  // end of if statement where we control whether Zoo 2 data get displayed
     %>

    </td></tr></table>
    </div>
</asp:Content>
