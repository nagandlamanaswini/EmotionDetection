<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View your Tweets...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style5 {color: #FF00FF}
.style6 {
	color: #FFFFFF;
	font-weight: bold;
}
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
	  
	    <h2>All Tweets Details...</h2>
		 <table width="595" height="132" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr>
					  <td  width="107" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweet Image </div></td>
					  <td  width="105" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweet Name</div></td>
  					
					  <td   width="139" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Description</div></td>
					  <td  width="114" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Date</div></td>
					  <td  width="114" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Rank</div></td>
					  <td  width="114" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Sentements</div></td>
					</tr>
					
					<%
					
String user=(String)application.getAttribute("user");
String s1,s2,s3,s4,s5,s6,s7,s8,s9,neg="negative",pos="positive",str="stress" ;
int i=0;
try 
{
	String query="select * from tweets where tweeter='"+user+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(3);
		s2=rs.getString(5);
		s3=rs.getString(6);
		s4=rs.getString(7);
		
					
		%>
					
							<tr>
						
							  <td width="107" ><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&type=<%="server"%>"  /></td>
							  <td  width="105" valign="baseline" height="110" style="color:#000000;">
							    <div align="center">
							      <%out.println(s1);%>
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
					          <a href="U_ViewTweetsDetail.jsp?tname=<%=s1%>"> Emotions </a>					          </div></td>
					</tr>
					<%	
					}
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
	</div>
	 	<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>
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
