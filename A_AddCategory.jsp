<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Categorie...</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style2 {color: #FF00FF}
-->
</style>

<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.categorie.value;
if(na3=="")

{
alert("Please Enter Categorie");
document.s.categorie.focus();
return false;
}
else
{

}
}
</script> 


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
<h2 class="style2"><em>Add Categories...         </em></h2>
             
            
            
             <form name="s"  action="A_AddCategoryConf.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
<table width="323" border="0" align="center"  cellpadding="0" cellspacing="0" >
 <tr>
 <td  width="117" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style7 style15 style18 style21 style4" style="margin-left:20px;">Categorie</div></td>
 <td  width="206" valign="middle" height="50" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="categorie"></div></td>
 </tr>
</span><div > 
<tr>
<td height="30" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="Add" style="width:100px; height:25px; background-color:#000000; color:#FFFFFF;"/></td>
</tr></div>
			</table>
			</form>
            
            <p align="right">&nbsp;</p>
			<form action="search_friend.jsp" method="post">
			</form>
            <p align="right"><a href="A_Main.jsp" class="style2">Back</a></p>
			
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
