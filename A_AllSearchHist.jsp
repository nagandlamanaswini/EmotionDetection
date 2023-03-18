<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Search History...</title>
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
          <li><a href="index.html" class="active"><span>Home</span></a></li>
          <li><a href="U_Login.jsp"><span>OSN User</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin Server</span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
        <h2>Emotion Detection in Online Social Networks: A Multi-label Learning Approach </h2>
        <p> ----- Emotion detection, Multi-label learning, Factor<br />
          graph, Online social network<br />
        .</p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2>All Search History Details</h2>
		
	   <%
	   int count=0,count1=0,count2=0,count3=0;
	   %>
		    <table width="595" height="132" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF33">
					  <td  width="107" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><strong>ID </strong></div></td>
					  <td  width="105" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><b>User</b></div></td>
					  <td  width="105" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Keyword</b></div></td>
					  <td  width="114" valign="baseline" style="color: #2c83b0;"><div align="center"><strong>Date</strong></div></td>
					</tr>
				  
		<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="" ;
	int i=0;
	try
	{
			String sql="select * from friend_search";
			Statement st=connection.createStatement();
			  ResultSet rs=st.executeQuery(sql);
			while ( rs.next() )
			   {
			   		i=rs.getInt(1);
					s1=rs.getString(2);
					s2=rs.getString(3);
					s3=rs.getString(4);
					
			%>
			
			                 <tr bordercolor="#6666FF" bgcolor="#999966">
						
							  <td  width="80" height="40" valign="baseline" bordercolor="#FFFF00">
							      <div align="center">
							        <%=i%>	
					          </div></td>
							  <td  width="80" height="40" valign="baseline" bordercolor="#FFFF00" style="color:#000000;">
							    <div align="center">
							      <%out.println(s1);%>
					          </div></td>	
								<td  width="80" height="40" valign="baseline" bordercolor="#FFFF00">
							  
						          <div align="center">
						            <%out.println(s2);%>
		                       </div></td>
								  
								<td  width="80" height="40" valign="baseline" bordercolor="#FFFF00"><div align="center">
                                  <%out.println(s3);%>
                               </div></td>
								
								
							  
			  </tr>
	    <%
					 
					 
			}
					%></table><p>&nbsp;</p>
				<%
   			

		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
			
		
		<p align="right"><a href="A_Main.jsp"> Back </a></p>
		
	</div>
	  </div>
      <div class="right">
        <h2>Server Menu</h2>
        <ul>
         <div class="gadget">
                  <p><a href="A_Main.jsp">Home</a> </p>
                  <p><a href="A_Login.jsp">LogOut </a> </p>
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
      <div class="blok">
        <h2><span>Image</span> Gallery</h2>
        <img src="images/gallery_1.gif" alt="" width="68" height="68" /><img src="images/gallery_2.gif" alt="" width="68" height="68" /><img src="images/gallery_3.gif" alt="" width="68" height="68" /><img src="images/gallery_4.gif" alt="" width="68" height="68" /><img src="images/gallery_5.gif" alt="" width="68" height="68" /><img src="images/gallery_6.gif" alt="" width="68" height="68" />
        <div class="clr"></div>
        <h2>&nbsp;</h2>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
