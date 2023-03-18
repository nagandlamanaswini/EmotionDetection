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
.style7 {color: #FFFFFF}
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
          <li><a href="index.html" class="active"><span>Home</span></a></li>
          <li><a href="U_Login.jsp"><span>OSN User</span></a></li>
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
            <div class="cleaner_h40">
			<p><table width="565" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr><td width="86" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style4 style3" style="	margin-left:20px;"><strong>Image</strong></div></td>
			<td width="86" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Tweet Name</strong></div></td>
			<td width="109" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Description</strong></div></td>
			>
			<td width="75" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Date</strong></div></td>
			<td width="87" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Tweets</strong></div></td>
			<td width="108" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Re-Tweets</strong></div></td>
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
					
						
						
						int i=0;
						try 
						{
							String sql="select * from tweets";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								String tn=rs.getString(3);
								String desc=rs.getString(5);
								String dt=rs.getString(6);
					
						
					%>
			
			
		<tr>
			<td width="86">
			<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="server"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
			  <td  width="86" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(tn);%></div></td>
			   <td  width="109" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(desc);%></div></td>
			    <td  width="75" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(dt);%></div></td>
			  <td  width="87" align="left" valign="middle" height="23"><a href="A_ViewTweetComm.jsp?tname=<%=tn%>" class="style2">View Tweet Details</a>		  </td>
			   <td  width="108" align="left" valign="middle" height="23"><a href="A_ViewTweetRecom.jsp?tname=<%=tn%>" class="style2">View Re-Tweet Details</a>		  </td>
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
