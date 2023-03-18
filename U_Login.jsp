<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style3 {
	font-size: 24px;
	color: #FF0000;
	font-family: "Times New Roman", Times, serif;
}
.style4 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
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
        <h2>Detecting Stress Based on Social Interactions in Social Networks</h2>
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
        <h2> Welcome to User Login        </h2>
		
		<form id="form1" name="form1" method="post" action="authentication.jsp?type=<%="user"%>">
              <table width="660" align="left">
                  <tr>
                    <td width="162" height="35">User Name (required)</td>
                    <td width="486"><input id="name" name="userid" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="38">Password (required)</td>
                    <td><input type="password" id="password" name="pass" class="text" /></td>
                  </tr>
				 
          <tr><td></td>
          <td>
                 <input name="imageField" type="submit"  class="style3" id="imageField" value="Login" />
                <input name="Reset" type="reset" class="style3" value="Reset" />
                New user?<a href="U_Register.jsp">Register </a>
               </td>
			   </tr>
             
              </p>
                <p>&nbsp;</p>
				 </table>
        </form>
		
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="A_Login.jsp">Admin Server </a></li>
          <li><a href="U_Login.jsp">OSN User </a></li>
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
  <div class="footer">
    <div class="clr"></div>
  </div>
</div>
<div align=center></div></body>
</html>
