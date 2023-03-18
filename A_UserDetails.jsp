<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Users Details...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style6 {font-style: italic}
.style7 {color: #FF00FF}
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
        <h2>Emotion detection, Multi-label learning, Factor<br />
          graph, Online social network<br />
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
        <div id="templatemo_content">
<%String id = request.getParameter("mid");%>
        <h2 class="style7"><em>User Profile detalis:        </em></h2>
             
            
            
            <div class="cleaner_h40">
			<p><table width="553" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
					
					
				
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
					//	String user=(String )application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);
                                s6=rs.getString(12);
					%>
					<tr>
					<td width="230" rowspan="8" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					<tr>
					<tr>
					  <td  width="127" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>Name</strong></div></td>
					  <td  width="182" valign="middle" height="50" style="color:#000000;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					  <td  width="127" valign="middle" height="48" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="182" valign="middle" height="48" style="color:#000000;"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="127" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="182" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
<td  width="127" align="left" valign="middle" height="46" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>Date Of Birth</strong></div> </td>                    	
<td  width="182" align="left" valign="middle" height="46"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td  width="127" align="left" valign="middle" height="23" style="color: #2c83b0;"><div align="left " class="style3 style4 style14 style7" style="margin-left:20px;">Address</div></td>
					  <td  width="182" align="left" valign="middle" height="23"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s5);%></div></td>
			  </tr>
					  <tr>
					  <td  width="182" align="left" valign="middle" height="23" style="color: #2c83b0;"><div align="left " class="style3 style4 style14 style7" style="margin-left:20px;">Status</div></td>
					  
					   <%
						if(s6.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="182" align="left" valign="middle" height="23"><div align="left" class="style11" style="margin-left:20px;"><a href="authentication.jsp?type=<%="userstatus"%>&amp;id=<%=i%>" class="style3 style6">waiting</a></div>
              </td>
              <%
						}
						else
						{
						%>
              <td  width="182" align="left" valign="middle" height="23"><div align="left" class="style11" style="margin-left:20px;">
                  <%out.println(s6);%>
              </div></td>
              <%
						}
						
						%>
					</tr>
					
					 
				<%
					
						}
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
			<form action="search_friend.jsp" method="post">
			</form>
            <p align="right"><a href="A_AllUsers.jsp" class="style2">Back</a></p>
			
        </div>
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
