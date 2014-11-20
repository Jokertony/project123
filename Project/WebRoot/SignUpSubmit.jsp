<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

<body bgcolor="AntiqueWhite"> 
<p align="center"> 
<%! 
String host="localhost"; 
String database="test";
String user="zh"; 
String pass=""; 
%><% java.sql.Connection sqlConn; 
java.sql.Statement sqlStmt; 
java.sql.ResultSet sqlRst; 
Class.forName ("com.mysql.jdbc.Driver").newInstance ();  
sqlConn= java.sql.DriverManager.getConnection ("jdbc:mysql://"+host+"/"+database,user,pass);  
sqlStmt=sqlConn.createStatement (java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY); 


String nName=request.getParameter("newName");
String newpassword=request.getParameter("newpassword");
String newContact=request.getParameter("newcontact");


String sqlQuery="INSERT INTO Users VALUES(\""+nName+"\",\""+newpassword+"\",\""+newID+"\",\""+newContact+"\")"; 
sqlStmt.executeUpdate (sqlQuery);

%>


<h4 align="center">注册成功</h>





<br></br>
<br></br><br></br><br></br>




<form align="center" action="FrontPageUser.jsp" method="get">
		</tr><input type="submit" value="回到首页" />
		</form>

</body> 
<% 

sqlStmt.close (); 
sqlConn.close(); 
%> 
