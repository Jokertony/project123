<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=utf8" %> 
<!DOCTYPE html>
<html>

<head>
<style type="text/css">

#mess {
	height:150px;
	border:0px solid #ccc;
	}


</style>
</head>

<body background="1.jpg" width:100%; height:100%>
<br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br>
  <form align="left" action="AddSuccess.jsp" method="post">
		</br>用户名	<input type="text" name="newName">
		</br>信息  <div id="mess"><textarea rows="10" cols="30" name="newMessages"></textarea></div>  
	
		
		
		<input type="submit" value="提交" />
		</form>
		
		
		<form align="left" action="FrontPageUser.jsp" method="get">
		</tr><input type="submit" value="回到首页" />
		</form>

</body> 
		
		</body>
</html>
