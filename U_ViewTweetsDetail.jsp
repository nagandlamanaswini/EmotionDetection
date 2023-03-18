<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View your Tweets Details ...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style5 {color: #FF00FF}
.style6 {color: #FFFFFF}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
.style9 {font-weight: bold}
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
          <li><a href="U_Login.jsp" class="active"><span>OSN User</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin Server</span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
        <h2>Emotion Detection in Online Social Networks: A Multi-label Learning Approach </h2>
        <p> ----- Emotion detection, Multi-label learning, Factor<br />
        graph, Online social network.</p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2 class="style5">&nbsp;</h2>
		
		<div id="templatemo_content">
	 <div class="left">
	  
	    <h2><strong>View All Tweets Details...</strong></h2>
		 <%
		  String user=(String)application.getAttribute("user");
		  String tname=request.getParameter("tname"); 			  
	String s1="",s2="",s3="",s4="",s5="",s6="", pos="positive" ;
	int i=0,count=0,count1=0,poscnt=0,negcnt=0,strcnt=0;
	try
	{
			String sql3="select tname from tweets where tweeter='"+user+"' and tname='"+tname+"' ";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			if ( rs3.next() )
			   {
		String	   s10=rs3.getString(1);
			%>
	       <table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h2>Positive Tweets of : <%=s10%></h2></td>
			      </tr>
				  <tr>
					<td width="174" bgcolor="#FF0000" ><div align="left" class="style4 style6">
						<div align="center">Commented User </div>
					</div></td>
					<td width="146" bgcolor="#FF0000" ><div align="left" class="style4 style6">
						<div align="center">Comment</div>
					</div></td>
					<td width="128" bgcolor="#FF0000"><div align="left" class="style4 style6">
						<div align="center">Date</div>
					</div></td>
				  </tr>
				 
				  <%

				  String query="select r_user,r_tweet,date from retweets where tname='"+s10+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					s1=rs.getString(1);
					s2=rs.getString(2).toLowerCase();
					s3=rs.getString(3);

			   
			       String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s2.contains(t2)))
									{
								     
									 %>
							  <tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center"><a href="U_UserProfile.jsp?value=<%=s1%>&type=<%="user1"%>"> <%=s1%></a></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s2%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s3%></div></td>
							  </tr>
							  
							
		    <%
			
					
			
			
			
			}

					 }
			}
			        %></table> 
	       <p>&nbsp;</p>
				<%
			
				
				}
   			  String neg="negative";
			
			String sql30="select tname from tweets where tweeter='"+user+"' and tname='"+tname+"' ";
			Statement st30=connection.createStatement();
			  ResultSet rs30=st30.executeQuery(sql30);
			if ( rs30.next() )
			   {
			 String  s11=rs30.getString(1);
			%>
	       <table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h2>Negative Tweets of : <%=s11%></h2></td>
			      </tr>
				  <tr>
					<td width="174" bgcolor="#FF0000" ><div align="left" class="style4 style6">
						<div align="center">Commented User </div>
					</div></td>
					<td width="146" bgcolor="#FF0000" ><div align="left" class="style4 style6">
						<div align="center">Comment</div>
					</div></td>
					<td width="128" bgcolor="#FF0000"><div align="left" class="style4 style6">
						<div align="center">Date</div>
					</div></td>
				  </tr>
				 
				  <%

				  String query0="select r_user,r_tweet,date from retweets where tname='"+s11+"' "; 
				   Statement st0=connection.createStatement();
				   ResultSet rs0=st0.executeQuery(query0);
				while ( rs0.next() )
			   {
				String	s10=rs0.getString(1);
				String	s20=rs0.getString(2).toLowerCase();
				String	s30=rs0.getString(3);

			   
			       String sql10="select * from filter where categorie='"+neg+"' ";
					Statement st10=connection.createStatement();
			  		ResultSet rs10=st10.executeQuery(sql10);
					while ( rs10.next() )
			   			{
			   			 String	t10=rs10.getString(1);
			             String t20=rs10.getString(2).toLowerCase();
			   			 	
							  if ((s20.contains(t20)))
									{
								     
									 %>
							  <tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center"><a href="U_UserProfile.jsp?value=<%=s10%>&type=<%="user1"%>"> <%=s10%></a></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s20%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s30%></div></td>
							  </tr>
							  
							
		    <%
			
					
			
			
			
			}

					 }
			}
			        %></table> 
	       <p>&nbsp;</p>
				<%
			
				
				}
				
				String str="stress";
			
			String sql31="select tname from tweets where tweeter='"+user+"'  and tname='"+tname+"' ";
			Statement st31=connection.createStatement();
			  ResultSet rs31=st31.executeQuery(sql31);
			if ( rs31.next() )
			   {
			 String  s12=rs31.getString(1);
			%>
	       <table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h2>Stressed Tweets of : <%=s12%></h2></td>
			      </tr>
				  <tr>
					<td width="174" bgcolor="#FF0000" ><div align="left" class="style4 style6 style7">
						<div align="center">Commented User </div>
					</div></td>
					<td width="146" bgcolor="#FF0000" ><div align="left" class="style4 style6 style8">
						<div align="center">Comment</div>
					</div></td>
					<td width="128" bgcolor="#FF0000"><div align="left" class="style4 style6 style9">
						<div align="center">Date</div>
					</div></td>
				  </tr>
				 
				  <%

				  String query50="select r_user,r_tweet,date from retweets where tname='"+s12+"' "; 
				   Statement st50=connection.createStatement();
				   ResultSet rs50=st50.executeQuery(query50);
				while ( rs50.next() )
			   {
				String	s100=rs50.getString(1);
				String	s200=rs50.getString(2).toLowerCase();
				String	s300=rs50.getString(3);

			   
			       String sql11="select * from filter where categorie='"+str+"' ";
					Statement st11=connection.createStatement();
			  		ResultSet rs11=st11.executeQuery(sql11);
					while ( rs11.next() )
			   			{
			   			 String	t11=rs11.getString(1);
			             String t21=rs11.getString(2).toLowerCase();
			   			 	
							  if ((s200.contains(t21)))
									{
								     
									 %>
							  <tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center"><a href="U_UserProfile.jsp?value=<%=s100%>&type=<%="user1"%>"> <%=s100%></a></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s200%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s300%></div></td>
							  </tr>
							  
							
		    <%
			
			}

					 }
			}
			        %></table> 
	       <p>&nbsp;</p>
				<%
			
				
				}
	
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
					
	</div>
	 	<p align="right"><a href="U_ViewTweets.jsp" class="style2">Back</a></p>
    </div>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="U_Main.jsp">Home</a></li>
           <li><a href="U_Login.jsp">LogOut </a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="FBG">
    <div class="FBG_resize"></div>
  </div>
  <div class="footer">
    <div class="clr"></div>
  </div>
</div>
<div align=center></div></body>
</html>
