<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View your Friends Tweets comment ...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style5 {color: #FF00FF}
.style7 {color: #FFFF00}
.style8 {color: #FF0000}
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
          <li><a href="U_Login.jsp" class="active"><span>OSN User</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin Server</span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
        <h2>Emotion Detection in Online Social Networks: A Multi-label Learning Approach <br />
        </h2>
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
	  
	    <h2>All Tweets Details...</h2>
		<div class="cleaner_h40">
			<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr><td width="127" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="	margin-left:20px;">Image</div></td>
			<td width="100" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Tweet Name</div></td>
			<td width="170" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Description</div></td>
			>
			<td width="80" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"> Friend Name</div></td>
			
			<td width="60" valign="middle" height="44" style="color: #2c83b0;"></td>
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
					String uname=(String )application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
							String sql="select * from tweets";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
							
								
								String sql1="select * from req_res where (requestfrom='"+uname+"'&&requestto='"+s1+"')||(requestfrom='"+s1+"'&&requestto='"+uname+"')&& status='Accepted'";
								Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(sql1);
					   			if( rs2.next() )
								{
								int k=rs2.getInt(1);
								String rf=rs2.getString(2);
								String rt=rs2.getString(3);
								if(rf.equalsIgnoreCase(uname)){}
								
									else
								
						
					%>
			
			
		<tr>
			<td width="50">
			<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="server"%>" style="width:50px; height:50px;" />
			 </a></div>	</td>
			  <td  width="182" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style10 style8" style="margin-left:20px;"><%out.println(s2);%></div></td>
			   <td  width="182" valign="middle" height="44" style="color:#000000;">
			   <div align="left" class="style10 style8" style="margin-left:20px;"><%out.println(s3);%></div></td>
			    <td  width="182" valign="middle" height="44" style="color:#000000;">
				<div align="left" class="style8 style10" style="margin-left:20px;"><a href="U_UserProfile.jsp?value=<%=s1%>&type=<%="user"%>"> <%out.println(s1);%></a></div></td>
				 
			  <td  width="182" align="left" valign="middle" height="23"><a href="U_Retweet.jsp?tname=<%=s2%>&t_user=<%=s1%>&t_des=<%=s3%>" class="style2">Retweet</a></td>
</tr>
<%					
					}}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
			
				</p>
            
            <p align="right">&nbsp;</p>
			<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>
			
        </div>
	</div>
             
	  
        
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
</div>
<div align=center></div></body>
</html>
