<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All tweets...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style6 {
	color: #CC0066;
	font-style: italic;
	font-weight: bold;
}
-->
</style>




</head>
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
            <div class="cleaner_h40">
			 <table width="595" height="132" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr>
					  <td  width="107" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Tweet Image </strong></div></td>
					  <td  width="105" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Tweeter Name</b></div></td>
					  <td  width="105" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Tweet Name</b></div></td>
  					
					  <td   width="139" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Description</strong></div></td>
					  <td  width="114" valign="baseline" style="color: #2c83b0;"><div align="center"><strong>Date</strong></div></td>
					  <td  width="114" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Rank</strong></div></td>
					</tr>
					<%@ include file="connect.jsp" %>
					<%
String s1,s2,s3,s4,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from tweets"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(5);
        s4=rs.getString(6);
		int s5=rs.getInt(7);
		//s6=rs.getString(8);
		//s7=rs.getString(9);
		//s8=rs.getString(8);%>
					
							<tr>
						
							<td width="107" ><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&type=<%="server"%>"  /></td>
							  <td  width="105" valign="baseline" height="110" style="color:#000000;">
							    <div align="center">
							     <a href="A_UserProfile.jsp?value=<%=s1%>&type=<%="alltweets"%>"> <%out.println(s1);%></a>
					          </div></td>	
								<td  width="139" valign="baseline" height="110">
							  
						          <div align="center">
						            <%out.println(s2);%>
			                      </div></td>
								<td  width="114" valign="baseline"><div align="center">
                                  <%out.println(s3);%>
                                </div></td>
								<td  width="114" valign="baseline" height="110">
							      <div align="center">
							        <%out.println(s4);%>	
					          </div></td>
							  <td  width="114" valign="baseline" height="110">
							      <div align="center">
							        <%out.println(s5);%>	
					          </div></td>
					</tr>
					<%
						}
						%></table><%
						
						String s10,s20,s30,s40,s50,s60,s70,s80,s90,neg="negative",pos="positive",str="stress" ;
int count1=0,count2=0,count3=0;
    String query9="select * from tweets "; 
	Statement st9=connection.createStatement();
	ResultSet rs9=st9.executeQuery(query9);
	while ( rs9.next() )
	{
			s20=rs9.getString(5);	
			        String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2);
			   			 	
							  if ((s20.contains(t2)))
									{
									  count1++;
									}
									
			           }
					  String sql2="select * from filter where categorie='"+neg+"' ";
					Statement st2=connection.createStatement();
			  		ResultSet rs2=st2.executeQuery(sql2);
					while ( rs2.next() )
			   			{
			   			 String	t1=rs2.getString(1);
			             String t20=rs2.getString(2);
			   			 	
							  if ((s20.contains(t20)))
									{
									  count2++;
									}
									
			           }
					   String sql3="select * from filter where categorie='"+str+"' ";
					Statement st3=connection.createStatement();
			  		ResultSet rs3=st3.executeQuery(sql3);
					while ( rs3.next() )
			   			{
			   			 String	t1=rs3.getString(1);
			             String t21=rs3.getString(2);
			   			 	
							  if ((s20.contains(t21)))
									{
									  count3++;
									}
									
			           }
					   
					} 
		%>
		<table width="604" border="5" bordercolor="#FF0000" >
		<tr>
		<td width="164"><div align="center">
		  <%out.print("No.Of Positive tweets="+count1);%>
		  </div></td><td width="194"><div align="center">
		    <%out.print("No.Of Negative tweets="+count2);%>
		    </div></td><td width="226"><div align="center">
		      <%out.print("No.Of Stressed tweets="+count3);%>
		      </div></td>
		</tr>
		</table>
		<%			 
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		
            
            <p align="right">&nbsp;</p>
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
