<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All negative tweets...</title>
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
          graph, Online social network.</p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	  
	    <h2><strong>View All Negative Tweets Details         </strong></h2>
		
	
		    
				  
		<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="negative" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	try
	{
			String sql3="select tname,tweeter from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0,count1=0;
			%>
	<table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h2><strong>Negative Tweets of :</strong> <%=s1%> [tweet owner: <a href="A_UserProfile.jsp?value=<%=s7%>&type=<%="negative"%>"> <%=s7%>] </a> </h2></td>
			      </tr>
				  <tr>
					<td width="174" height="30" bgcolor="#FFFF00" ><div align="left" class="style4 style5">
						<div align="center">Commented User </div>
					</div></td>
					<td width="146" bgcolor="#FFFF00" ><div align="left" class="style4 style5">
						<div align="center">Comment</div>
					</div></td>
					<td width="128" bgcolor="#FFFF00"><div align="left" class="style4 style5">
						<div align="center">Date</div>
					</div></td>
					<td width="145" bgcolor="#FFFF00"><div align="left" class="style4 style5">
						<div align="center">View the Details</div>
					</div></td>
				  </tr>
				 
				  <%

				  String query="select * from retweets where tname='"+s1+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(5);
					s5=rs.getString(6).toLowerCase();
					s4=rs.getString(7);
					count++;

			   
			       String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
						 
						 
			   			 	
							  if ((s5.contains(t2)))
									{
								  
			                 count1++;
									 %>
							  <tr>
								<td width="174" height="30"  style="color:#000000;"><div align="center"><a href="A_UserProfile.jsp?value=<%=s3%>&type=<%="negative"%>"><%=s3%></a></div></td>
								<td width="146" height="30"  style="color:#000000;"><div align="center"><%=s5%></div></td>
								<td width="128" height="30"  style="color:#000000;"><div align="center"><%=s4%></div></td>
								<td width="145" height="30"  style="color:#000000;"><div align="center">
								<a href="details.jsp?tname=<%=s1%>&type=<%="negative"%>"><strong>View&nbsp;</strong></a></div></td>
							  </tr>
							  
							
	    <%
			
					
			
			
			
			}

					 }
			}
			        Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery("select * from negative where tname='"+s1+"' ");
			
					if(rs2.next()==true)
					{
						Statement st30=connection.createStatement();
						st30.executeUpdate("update negative set totaluser='"+count+"', negative='"+count1+"' where tname='"+s1+"' ");
						
					}
					else
					{
						Statement st30=connection.createStatement();
						st30.executeUpdate("insert into negative (tname,totaluser,negative)values('"+s1+"','"+count+"','"+count1+"')");
						
					}%></table> <p>&nbsp;</p>
				<%
			
				
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
