
<%@ include file="connect.jsp" %>

<%
   	String type=request.getParameter("type");
	
	application.setAttribute("type",type);
    try{
         
    	
    	
		if(type.equalsIgnoreCase("user"))
		{
		
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			
			
			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next()== true ){
			  String sql1="SELECT * FROM user where username='"+username+"' and status='Authorized' ";
			   Statement stmt1 = connection.createStatement();
				ResultSet rs1 =stmt1.executeQuery(sql1);
				 		if(rs1.next()==true)
				  			{
				     			application.setAttribute("user",username);
			          			response.sendRedirect("U_Main.jsp");
			      				}
								else
								{
										%>
								
									
									<br/>
									<p align="center" class="style3">You are not Authorized by the Admin, Please wait!! </p>
									<p align="center" class="style3"><br/>
								      <a href="U_Login.jsp" class="style4">Back</a></p>
									<p>
									  <%
								 }
			
			}
			else
			{
				response.sendRedirect("U_Wrong_Login.jsp");
			}
		}
		
		else if(type.equalsIgnoreCase("server"))
		{
			
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("server",username);
			
			String sql="SELECT * FROM server where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				response.sendRedirect("A_Main.jsp");
				}
				else
				{
				response.sendRedirect("A_Wrong_Login.jsp");
			}	}
			
			else if(type.equalsIgnoreCase("userstatus"))
			{
					
					int id=Integer.parseInt(request.getParameter("id"));

					String sql1="update user set status='Authorized' where id='"+id+"'";
					Statement stmt1 = connection.createStatement();
					int k =stmt1.executeUpdate(sql1);
					if(k>0)
					{
					
						
						response.sendRedirect("A_AllUsers.jsp");
					}
					else
					{
							%>
						  
						</p>
						<p align="center" class="style3">Permision Not Granted..Please Try Again..<br/>
						  <br/>
						</p>
						<p align="center" class="style3"><a href="A_UserDetails.jsp" class="style2">Back</a>
						</p>
						<%
					 }
					
			
			}
			
			
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>