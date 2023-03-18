<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Details...</title>
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
	  <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
					
			
	
	
	
					<%
							//String s12=(String)application.getAttribute("name1");
						String tname=request.getParameter("tname");
						
						String s1,s2,s3,s4;
						int i=0;
						try 
						{
						   	String query="select * from tweets where tname='"+tname+"'"; 
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
					<td width="230" rowspan="6" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="server"%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					<tr>
					<tr>
					  <td  width="182" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Tweet Name</strong></div></td>
					  <td  width="182" valign="middle" height="44" style="color:#000000;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					  <td  width="182" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Description</strong></div></td>
					  <td  width="182" valign="middle" height="40" style="color:#000000;"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					
					  <tr>
					    <td height="75" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Tweet Date </strong></div></td>
					    <td align="left" valign="middle" height="75"><div align="left" class="style11" style="margin-left:20px;">
                          <%out.println(s3);%>
                        </div></td>
	      </tr>
				    <tr>
					  <td height="75" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Rank</strong></div></td>
					  <td align="left" valign="middle" height="75"><div align="left" class="style11" style="margin-left:20px;">
                        <%out.println(s4);%>
                      </div></td>
			  </tr>
			  <%
			    }connection.close();
				}
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		</table>
            
            <h2 align="right">&nbsp;</h2>
			<% String type=request.getParameter("type");
			if(type.equalsIgnoreCase("positive")){%>
            <h2 align="right"><a href="A_PossitiveFilter.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("negative")){%>
            <h2 align="right"><a href="A_NegativeFilter.jsp" class="style4">Back</a></h2>
			<%}else{%>
            <h2 align="right"><a href="A_StressedFilter.jsp?s12" class="style4">Back</a></h2>
			<%}
			%>
			
		
		
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
