<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All positive tweets...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style5 {color: #FF00FF}
-->
</style>




</head>

<%@ include file="connect.jsp" %>

<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1"></a></h1>
      </div>
      <div class="menu">
        <ul>
          <li><a href="index.html"><span>Home</span></a></li>
          <li><a href="U_Login.jsp"><span>OSN User</span></a></li>
          <li><a href="A_Login.jsp" class="active"><span>Admin Server</span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
        <h2>Emotion Detection in Online Social Networks: A Multi-label Learning Approach </h2>
        <p> ----- Emotion detection, Multi-label learning, Factor<br />
          graph, Online social network
        .</p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	  
	    <h2><strong>View All Neutral Tweets Details         </strong></h2>
		
		<table width="778" border="1">
				  
				  <tr>
				  <td width="244" height="34" bgcolor="#FF0000" ><div align="left" class="style4 style5 style35 style1 style2 style13 style14">
						<div align="center" class="style1">Tweet Name </div>
					</div></td>
					<td width="244" bgcolor="#FF0000" ><div align="left" class="style4 style5 style35 style1 style2 style13 style14">
						<div align="center" class="style1">Commented User </div>
					</div></td>
					<td width="230" bgcolor="#FF0000" ><div align="left" class="style4 style36 style1 style2 style13 style15">
						<div align="center">Tweet Comment</div>
					</div></td>
					<td width="266" bgcolor="#FF0000"><div align="left" class="style37 style4 style1 style13 style16">
						<div align="center">Date</div>
					</div></td>
				  </tr>
		
		
	<%	
		try
	{
	 			String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Neutral" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String stype="Neutral";
		
					String sql3="select tname,tweeter from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
.style6 {color: #FF0000; font-weight: bold; }
-->
</style>
  
		
				 
				  <%

				  String query="select * from retweets where tname='"+s1+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2); //tname
					s3=rs.getString(6).toLowerCase();  // comment post 
					s4=rs.getString(5);  // user
					s5=rs.getString(7);  // Date
					
					count++;

			   
			       String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3.contains(t2)))
									{ 
	
			                 count1++;
									 %>
							  <tr>
							  <td width="244" height="51" bgcolor="#FF0000"  style="color:#000000;"><div align="center" class="style32 style1"><strong> <%=s2%></strong></div></td>
								<td width="244" height="51" bgcolor="#FF0000"  style="color:#000000;"><div align="center" class="style32 style1"><strong> <%=s4%></a></strong></div></td>
								<td width="230" height="51"  style="color:#000000;"><div align="center" class="style32 style5"><strong><%=s3%></strong></div></td>
								<td width="266" height="51"  style="color:#000000;"><div align="center" class="style32 style5"><strong><%=s5%></strong></div></td>
			  <td width="10" height="51"  style="color:#000000;"><div align="center">			  
		  </tr>
							  				
	    <%   					}

					      }
			      }
			        
			
				
				}
				
				
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
				
		<p align="right"><a href="A_Main.jsp" class="style2">Back</a></p>
		
		
	</div>
    </div>
      <div class="right">
        <h2>Server Menu</h2>
        <ul>
         <div class="gadget">
                  <p><a href="A_Main.jsp">Home</a> </p>
                  <p><a href="U_Login.jsp">LogOut </a> </p>
                  <p>&nbsp;</p>
                  <p class="star">&nbsp;</p>
          </div>
        </ul>
      </div>
      <div class="clr"></div>
  </div>
</div>
<div class="FBG"></div>
</div>
<div align=center></div></body>
</html>
