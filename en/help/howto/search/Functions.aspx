<%@ Page Title="" Language="C#" MasterPageFile="SearchHowtoMaster.master" AutoEventWireup="true" CodeBehind="Functions.aspx.cs" Inherits="SkyServer.Help.Howto.Functions" %>
<%@ Import Namespace="SkyServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SearchHowtoContent" runat="server">
<script>

    function popup(filename, target, w, h) {
        var link = filename;
        var w = window.open(link, target, 'width=' + w + ',height=' + h + ',resizeable,scrollbars');
        w.focus();
    }

    function setDefaultQuery(query, option) {

        /*
        This function allows the user to select from two different default 
        queries that will appear in the query window. The user can then 
        modify either default query. This capability is useful for the 
        SQL tutorial - users can modify pre-existing queries, and have their 
        choice of which query they want to modify.

        Inputs:		query - the query to be entered; usually the "cmd" object

        option - the choice of the query. The options must be 
        hard-coded for each query option, inside the if statements
        below.

        Jordan Raddick		9/27/02
        */
        query.value = "";
        msg = "";

        if (option == 1) {
            msg += "SELECT\n";
            msg += "p.objID, p.ra, p.dec, p.u, p.g, p.r, p.i, p.z\n";
            msg += "FROM photoObj p\n";
            msg += "JOIN dbo.fGetNearbyObjEq(140,20,5) n ON n.objID = p.objID\n";
            msg += "where p.type = 3";
        }


        if (option == 2) {
            msg += "SELECT\n";
            msg += "p.objID, p.flags, dbo.fPhotoFlagsN(p.flags)\n";
            msg += "FROM photoObj p\n";
            msg += "JOIN dbo.fGetNearbyObjEq(140,20,5) n ON n.objID = p.objID\n";
            msg += "WHERE p.type = 6";
        }

        if (option == 3) {
            msg += "SELECT\n";
            msg += "p.objID, p.ra, p.dec, dbo.fPhotoFlagsN(p.flags)\n";
            msg += "FROM photoObj p\n";
            msg += "JOIN dbo.fGetNearbyObjEq(140,20,5) n ON n.objID = p.objID\n";
            msg += "WHERE (p.flags & dbo.fPhotoFlags('SATURATED')) = 0";
        }


        query.value = msg;
    } 
</script>
<div id="title">SQL Tutorial</div>
<div id="transp">  <table WIDTH="600" border="0" cellspacing="3" cellpadding="3">
    <tr>
      <td>
           <p></p>

	  <h1>Functions</h1>
	  
	  <p>In computer programming, a <em>function</em> is a mini-program that takes 
	  a given input, does something, and returns an output. In a database 
	  search, functions have the same structure: they take inputs, execute a 
	  mini-program, and return some output. The <a href="../../browser/browser.aspx" target="tools">
	  Schema Browser</a> lists over 100 functions. This tutorial will 
	  cover two important functions.</p>

      <h1>Position Searches and fGetNearbyObjEq</h1>
      
      <p>In this tutorial, you have done several searches for objects near 
      a specific position, using the BETWEEN command in the where block. 
      But a function called fGetNearbyObjEq gives you more control over 
      where in the sky you search. The function fGetNearbyObjEq takes three 
      inputs: an RA, a dec, and a radius in arcminutes (the full moon is 
      about 30 arcminutes across). It returns all objects within the 
      circular area with a center at the specified (ra,dec) point and 
      a radius of the radius entered.</p>
      
      <p>Because fGetNearbyObjEq returns a list of objects, you can search 
      through the list just like a table. You can include fGetNearbyObjEq 
      in the from block of your queries, and join it to a table or view using the 
      ObjID column. To search the sky for all galaxies within 5 arcminutes of 
      ra = 140, dec = 20, use this query:</p>
      
      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">      
        <tr>
          <td>
<pre>
SELECT
    p.ObjID, p.ra, p.dec, p.u, p.g, p.r, p.i, p.z
FROM photoObj p
JOIN dbo.fGetNearbyObjEq(140,20,5) n ON n.objID = p.objID
WHERE
    p.type = 3
</pre>
          </td>
        </tr>
      </table>

	  
	  <h1>Flags and Photo Flag Functions</h1>
	  
	  <p>For every object identified in an image, the SDSS stores a 
	  set of <em>flags</em>, yes/no data telling whether some attribute is 
	  true for that object. Flags are available for objects too close to the 
	  edge of a frame, for objects whose images were saturated (so bright that 
	  some light was not detected), or for objects with some pixels not detected 
	  by the camera.</p>
	  
	  <p>Flags are stored in the <em>flags</em> column of the PhotoObj 
	  table (and its related views). Take a moment to look in the <a 	  	  href="../../browser/browser.aspx" target="tools">
	  Schema Browser</a> to learn what the photo flags are. Then, search for 
	  photo flags with the command "select flags from photoObj". What do you get?</p>

	  <p>You get nothing but a long, confusing number! Each object in the 
	  PhotoObj table may have many true/false flags associated with it. To 
	  save memory, the flags are not stored as true/false lists, but as components 
	  of a long number - each flag is stored as a specific value at a specific 
	  position.</p>
	  
	  <p>Unfortunately, while this technique may save memory, it makes the 
	  flags impossible for humans to understand. Fortunately, SkyServer 
	  includes a function, <em>fPhotoFlagsN</em>, to translate photo flags 
	  from confusing numbers into English names.</p>
    
	  <p>The syntax for calling a function in SQL is to type "dbo." - the letters 
	  dbo and a period - in front of the function name. Then type the name, then 
	  enclose the function's <br>input(s) in parentheses. The function fPhotoFlagsN 
	  takes one input, and it is (almost) always the flags column of the 
	  PhotoObj table. So the syntax for calling the function would be:</p>
	  
	  <p>dbo.fPhotoFlagsN(flags)</p>
	  
	  <p>For example, you might want to find English names for flags of 
	  all stars around the point 175,1. The query would look like this:</p>      
      
      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">      
        <tr>
          <td>
<pre>
SELECT
    p.objID, p.flags, dbo.fPhotoFlagsN(p.flags)
FROM photoObj p
JOIN dbo.fGetNearbyObjEq(140,20,5) n ON n.objID = p.objID
WHERE
    p.type = 6
</pre>
          </td>
        </tr>
      </table>

	  <p>The query returns flags as both numbers and names. You can see that the 
	  names are much easier to understand!</p>
	  
	  <p>Sometimes, instead of looking at all flags for many objects, you might want to 
	  select only objects that meet certain flags. In other words, you might 
	  want to use a flag as part of a where block. Unfortunately, fPhotoFlagsN 
	  can't search for a flag - it can only list flags that are present 
	  for a certain object. Fortunately, SkyServer includes another function 
	  that can help you search for flags - the similarly named <em>fPhotoFlags</em>.</p>
	  
	  <p>To understand how fPhotoFlags works, remember that a flag is a 
	  true/false statement. If a flag is true, it will have some 
	  positive value, which will depend on the flag. But if the flag is 
	  false, its value will be zero, and always zero. So to find out if a 
	  flag is true for a given object, just compare its value to zero. If 
	  the flag's value is greater than zero, the flag is true; if the flag's value 
	  is equal to zero, it is false.</p>
	  
	  <p>But how do you know which flag you are checking? The function 
	  fPhotoFlags translates the name of a single flag. 
	  For example, if you wanted to look for all unsaturated objects - all 
	  objects with the SATURATED flag set to false - you could use 
	  <br>fPhotoFlags('SATURATED').</p>
	  
	  <p>But remember that fPhotoFlags only translates the name 
	  of the flag from computer-speak to English. To actually check the 
	  value of the flag, you still need to search the flags column of the 
	  photoObj table. To search records for the presence of an English-language 
	  flag using fPhotoFlags, you need to use an ampersand (&). The syntax 
	  is "where (flags & dbo.fPhotoFlags(name)) [> or =] 0". So to search 
	  for all unsaturated objects near the point (175,1), you would use the 
	  following query:</p>

      <table border="1" cellpadding="7" cellspacing="0" bgcolor="#552255">      
        <tr>
          <td>
<pre>
SELECT
    p.objID, p.ra, p.dec, dbo.fPhotoFlagsN(p.flags)
FROM photoObj p
JOIN dbo.fGetNearbyObjEq(140,20,5) n ON n.objID = p.objID
WHERE
    (p.flags & dbo.fPhotoFlags('SATURATED')) = 0
</pre>
          </td>
        </tr>
      </table>	  

      
      <p>Be sure to enclose the name of the flag in single quotes. The equals sign  
      means you are searching for objects with the SATURATED flag set to 
      false. To search for saturated objects instead, change "=0" to 
      "> 0".</p>
      
      <p>To summarize the difference between fPhotoFlagsN and fPhotoFlags, use 
      fPhotoFlagsN in the select block to view a record's flags in English. 
      Use fPhotoFlags in the where block, with an & sign, to search 
      all records for a specific flag.</p>
      
      
      <p>To search a different area of the sky, just change the ra and 
      dec inputs to fGetNearbyObjEq. SkyServer also includes a similar 
      function called f.GetNearestObjEq that returns only the object 
      nearest to the coordinates you entered.</p> 

      <h1>Try It!</h1>
      
      <p>Try pressing the buttons "Query 1," "Query 2," and "Query 3" below. These 
      buttons will make the three queries above (in the purple boxes) appear in the 
      query window. Press Submit to execute the queries.</p>
      
      
      <p>Try running Query 1. Look at the ra and dec of the results to verify that 
      the query is looking in the right region of sky. How many objects are 
      in this region? How bright is the brightest one?</p>
      
      <p>Next, try running Query 2. What are some of the most common flags in 
      the data? Why do you think they are so common?</p>
      
      <p>Now, try running Query 3. Verify that you have selected only 
      unsaturated objects. Try changing the name of the flag to search for 
      objects with other features.</p>
      
      <p>When you are ready to move on, click Next to get some more practice with 
      functions.</p>
      
	</td></tr>
	
	<%  ResponseAux.sqlform(3,"",url,Response); %>

    <tr>
      <td><a href="views.aspx"><img align="left" src="../../../proj/images/previous.jpg"></a>
      <a href="practice5.aspx"><img align="right" src="../../../proj/images/next.jpg"></a></td>
    </tr>
  </table>
</div>
</asp:Content>
