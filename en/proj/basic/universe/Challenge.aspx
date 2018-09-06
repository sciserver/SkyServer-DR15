<%@ Page Title="" Language="C#" MasterPageFile="UniverseMaster.master" AutoEventWireup="true" CodeBehind="Challenge.aspx.cs" Inherits="SkyServer.Proj.Universe.Challenge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UniverseContent" runat="server">
<div id="transp">
<table WIDTH=600 border=0 cellspacing="3" cellpadding="3">
<tr><td>

      <a name=together></a>
      <h1>Research Challenges</h1>

<p></p>

<p>As the Hubble diagram from Explore 7 shows, the real universe is much more complicated than your first Hubble diagram led you to believe. The next two Research Challenges help you understand some of the complexities of the Hubble diagram. When you finish either Research Challenge, <A href="mailto:raddick@pha.jhu.edu?subject=Hubble diagram">E-mail your diagrams to us</A> (attach it a .gif or .jpg image, or as a .xls spreadsheet). We'll 
      look at all the projects we receive, and we'll put the best of them 
      up on these pages!</p>
      
      <table class=rchallenge width=600 cellpadding=5 cellspacing=0><tr><td>
      <P><STRONG>Research Challenge 1</STRONG>: The main reason that the Hubble diagram in Explore 7 looks so unclear is that the assumption you made back at the beginning - that all galaxies have similar properties - was false. In reality, galaxies vary greatly - some are big and bright, some are small and faint. So if you see a big bright galaxy next to a small faint galaxy, it might be true that the galaxies are at the *same* distance, but one really is bright and one really is faint. You can't assume that just because a galaxy looks bright that it must be close to us.</p>

<table align=right border=1 bordercolor=ffffff cellpadding=0 cellspacing=0><tr>
          <td>
   <IMG src="images/abell168.jpg">
</td></tr></table>

      <p>One way around this problem of galaxy variations is to look at galaxy clusters like the one shown to the right. You can assume that all galaxies in a cluster are about the same distance away from us, so any differences in brightness are due to the galaxies' variation. If you compare the brightest (or biggest, or 10th brightest, or 10th biggest, etc.) galaxies in one cluster to the biggest (etc.) in another cluster, then any differences of magnitude must be due to the difference in distance between two <i>clusters</i>.</p>

     <p>Look at SkyServer's Famous Places page for the <a href="../../../tools/places/abell.aspx" target="tools">Abell Galaxy Clusters</a> (click on the blue link). Look at each cluster one by one in the Navigation tool (click on each picture to launch the tool). You will probably have to zoom out one or two steps to see the whole cluster.</p>

     <p>Click on each galaxy you think is part of the cluster. Save each galaxy in your Notebook and record its g magnitude. Click the "specObj" checkbox. Click on one of the galaxies in the red squares, and click the "Explore" link in the right-hand frame. A new window will open. Look at the value "z" just above the spectrum (wavy line) near the bottom of the page. This z value is the redshift of the galaxy (and, by extension, the entire cluster).</p>

     <p>Compare the g magnitude of the brightest galaxy (or some other measure of distance) to the redshift of each cluster. You should now have 2 columns (distance and redshift) for six data points (one for each Abell cluster).</p>

     <p>Make a Hubble diagram for the six Abell galaxy clusters. How does the diagram compare to the ones you made in Explore 4/5 and 7? Why is this diagram more believable? If you want to add more points to the diagram, look up the coordinates of the other Abell clusters by clicking the "Abell data" link at the bottom of the Abell clusters page.</p>


</td></tr></table>

<p></p>

      <table class=rchallenge width=600 cellpadding=5 cellspacing=0><tr><td>
      <P><STRONG>Research Challenge 2</STRONG>: What happens if you make a Hubble diagram with thousands of points, instead of just six?</p>
      <p>Use SkyServer's <a href="../../../tools/search/sql.aspx" target="tools">SQL Search</a> tool (click the blue link). Copy the following query and paste it in the window of the SQL Search tool, overwriting what's already there:</p>
      <p>select top 2000 objid,ra,dec,modelmag_g,z<br>
      from specphoto</p>
      <p>Request the results as a CSV file. The results will open in a new window. Save the results to your computer as a file with extension .csv, and open them up in a spreadsheet program like Excel. (For instructions on how to use Excel, see SkyServer's <a href="../../../help/howto/graph/" target="help">Graphing and Analyzing Data</a> how-to tutorial). If you decide later that you want more data, you can re-run the query replacing the "2000" with a larger number.</p>
      <p>Create a Hubble diagram by graphing g vs. r (the last two columns). Experiment with the scales on the axes so you can see different parts of the diagram more clearly. What happens for z < 0.5? Why do so many points lie to the right of the straight line? What are the horizontal gaps in the diagram (i.e., why are there few galaxies at certain redshifts?) What happens for larger values of z?</p>


</td></tr></table>




</td>
</tr>
<tr><td>

      <P>&nbsp;</P></td></tr>
<tr><td></td></tr>

<tr><td><A href="bad.aspx" ><IMG align=left src="../../images/previous.jpg" ></A>
<A href="results.aspx" ><IMG align=right src="../../images/next.jpg"></A></td></tr>

<tr><td><p><FONT size=-3>Project designed by Jordan Raddick, Rich Kron, and Dorian Janney</FONT></p></td></tr>
<tr><td><p><FONT size=-3>Questions? Comments? Suggestions? E-mail the 
<a href="mailto:raddick@pha.jhu.edu?subject=Universe feedback">web designer.</FONT></p></td></tr></table>

<P></P>

</div>
</asp:Content>
