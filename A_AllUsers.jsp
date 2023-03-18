<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Users...</title>
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
        <p> ----- Emotion Detection in Online Social Networks: A Multi-label Learning Approach  .</p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2 class="style5"><em>View All User Details...         </em></h2>
		  <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#00FFFF">
 						<td  width="120" height="0" valign="baseline" style="color: #2c83b0;"><div align="center" class="style5"><b>Username</b></div></td>
						<td  width="100" height="0" valign="baseline" style="color: #2c83b0;"><div align="center" class="style5"><strong>Email</strong></div></td>
  					
 						<td   width="100" height="0" valign="baseline" style="color: #2c83b0;"><div align="center" class="style5"><strong>mobile</strong></div></td>
						<td  width="100" height="0" valign="baseline" style="color: #2c83b0;"><div align="center" class="style5"><b>View</b></div></td>
					</tr>
					<%@ include file="connect.jsp" %>
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from user"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(4);
		s3=rs.getString(5);
		//s4=rs.getString(6);
		//s5=rs.getString(7);
		//s6=rs.getString(8);
		//s7=rs.getString(9);
		//s8=rs.getString(8);
					%>
							<tr bgcolor="#CCFFFF">
								<td  width="72" height="0" valign="baseline" style="color:#000000;">&nbsp;&nbsp;<%out.println(s1);%></td>	
								<td  width="82" height="0" valign="baseline">&nbsp;&nbsp;<%out.println(s2);%></td>
								<td  width="82" height="0" valign="baseline">&nbsp;&nbsp;<%out.println(s3);%></td>
					
						<td  width="100" height="0"align="center" valign="baseline" style="color:#000000;"><a href="A_UserDetails.jsp?mid=<%=i%>">more info..&nbsp;</a></td>
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

					<tr>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
					</tr>
		</table>
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
  <div class="FBG">
    <div class="FBG_resize">
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
