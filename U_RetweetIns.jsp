
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
					
					
					
				
					
					String tname=(String)application.getAttribute("tname");
					String user=(String)application.getAttribute("user");
					String t_user=(String)application.getAttribute("t_user");
					String t_des=(String)application.getAttribute("t_desc");
					String r_tweet=request.getParameter("tcomment");
					
					try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
         
    	
						
					PreparedStatement ps1=connection.prepareStatement("insert into retweets(tname,t_user,r_user,r_tweet,date,t_comment) values(?,?,?,?,?,?)");
						ps1.setString(1,tname);
						ps1.setString(2,t_user);
						ps1.setString(3,user);
						ps1.setString(4,r_tweet);
						ps1.setString(5,dt);
						ps1.setString(6,t_des);
						ps1.executeUpdate();
						
						    request.setAttribute("msg","successfull");
							out.print("Your comment posted Successfully");
							String sql="select rank from tweets where tname='"+tname+"'";
							Statement st=connection.createStatement();
							ResultSet rs=st.executeQuery(sql);
							while(rs.next()){
							int rank=rs.getInt(1);
							int newrank=rank+1;
							String sql1="update tweets set rank='"+newrank+"' where tname='"+tname+"' ";
							Statement st1 = connection.createStatement();
							st1.executeUpdate(sql1);
							
							
						
			%>
			<p><a href="U_AllFriendsComm.jsp">Back</a>         <a href="U_Main.jsp">Home</a> </p>

			
			<%
					   }
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>



