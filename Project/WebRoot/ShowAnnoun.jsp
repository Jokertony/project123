<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=utf8" %> 
<html> 

<body background="333.jpg"> 
<p align="center"><u><font size="5" face="华文新魏">公告栏</font></u></p> 
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

String a="*";
String sqlquery="select "+a+" from announce"; 
sqlRst=sqlStmt.executeQuery (sqlquery);

%>





<table align="center" border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
<tr> 
  <td align="center">时间</td> 
  <td align="center">公告</td> 



</tr> 

<% while (sqlRst.next()) { //取得下一条记录 %> 
<tr><!--显示记录--> 
  <td align="center"><%=sqlRst.getString("Time")%></td> 
  <td align="center"><%=sqlRst.getString("announcement")%></td> 
</tr> 
<% } %> 
</table> 

<br></br>
<br></br><br></br><br></br>






</body> 
<% 

sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 
