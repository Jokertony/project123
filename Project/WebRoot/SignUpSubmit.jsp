<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

<body bgcolor="AntiqueWhite"> 
<p align="center"><u><font size="5" face="华文新魏">图书管理系统</font></u></p> 
<%! 
String host="localhost"; //数据库主机 
String database="test"; //数据库名 
String user="zh"; //用户名 
String pass=""; //口令 
%><% java.sql.Connection sqlConn; //数据库连接对象 
java.sql.Statement sqlStmt; //语句对象 
java.sql.ResultSet sqlRst; //结果集对象 
//登记JDBC驱动对象 
Class.forName ("com.mysql.jdbc.Driver").newInstance (); 
//连接数据库 
sqlConn= java.sql.DriverManager.getConnection ("jdbc:mysql://"+host+"/"+database,user,pass); 
//创建语句对象 
sqlStmt=sqlConn.createStatement (java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY); 
//执行Sql语句 


String nName=request.getParameter("newName");
String newpassword=request.getParameter("newpassword");
String newID=request.getParameter("newID");
String newContact=request.getParameter("newcontact");


String sqlQuery="INSERT INTO Users VALUES(\""+nName+"\",\""+newpassword+"\",\""+newID+"\",\""+newContact+"\")"; 
sqlStmt.executeUpdate (sqlQuery);

%>


<h4 align="center">Add Success!</h>





<br></br>
<br></br><br></br><br></br>




<form align="center" action="FrontPageUser.jsp" method="get">
        Back!
		</tr><input type="submit" value="Back" />
		</form>

</body> 
<% 

sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 
