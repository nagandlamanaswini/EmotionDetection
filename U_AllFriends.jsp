<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Friends...</title>
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
	 <h2 class="style5">View All Friends          </h2>
	  <p>&nbsp;</p>
	   <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#993366">
					  <td  width="120" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
  						
					  <td  width="100" height="31" align="center" valign="baseline" style="color: #2c83b0;"><div align="center"><b>View</b></div></td>
					</tr>
								
<%@ include file="connect.jsp" %>
					<%String user=(String )application.getAttribute("user");
						
						int i=0;
						try 
						{
						   	String sql1="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')&& status='Accepted'";
								Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(sql1);
					   			while( rs2.next() )
								{
								i=rs2.getInt(1);
								String rf=rs2.getString(2);
								String rt=rs2.getString(3);
								if(rf.equalsIgnoreCase(user))
								{
					%>
					<tr bgcolor="#99CCCC">
						<td  width="120" height="40" align="center" valign="middle" style="color:#000000;"><span class="style4">&nbsp;&nbsp;
				        <%out.println(rt);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="U_FriendProfile.jsp?type1=<%=rt%>">more info..&nbsp;</a></td>
						<%
						//application.setAttribute("name",rt);
						}
						else 
						{%>	
						<td  width="100" height="40" align="center" valign="middle"><span class="style4">&nbsp;&nbsp;
				        <%out.println(rf);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" style="color:#000000;">
							<a href="U_FriendProfile.jsp?type1=<%=rf%>">more info..&nbsp;</a></td>
						<%//application.setAttribute("name",rf);
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
	  <h2>&nbsp;</h2>
             
            
            
          <div class="cleaner_h40">
              <div class="cleaner_h40">
                <p></p>
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
          <li><a href="U_Login.jsp">LogOut</a></li>
          
          <li></li>
        </ul>
        <ul class="sponsors">
          <li class="sponsors"></li>
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
