<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=utf8" %> 
<html> 

<body bgcolor="AntiqueWhite"> 
<p align="center"><u><font size="5" face="华文新魏">留言板</font></u></p> 
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


String newID=request.getParameter("newName");
String nName=request.getParameter("newMessages");


byte b[]=nName.getBytes("utf8");
nName=new String(b);
byte c[]=newID.getBytes("utf8");
newID=new String(c);

String sqlQuery="INSERT INTO messages VALUES(\""+nName+"\",\""+newID+"\")"; 
sqlStmt.executeUpdate (sqlQuery);
String a="*";
String sqlquery="select "+a+" from messages"; 
sqlRst=sqlStmt.executeQuery (sqlquery);

%>


<h4 align="center">添加成功</h>


<table align="center" border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
<tr> 
  <td align="center">用户名</td> 
  <td align="center">信息</td> 



</tr> 

<% while (sqlRst.next()) { //取得下一条记录 %> 
<tr><!--显示记录--> 
  <td align="center"><%=sqlRst.getString("Messages")%></td> 
  <td align="center"><%=sqlRst.getString("Username")%></td> 
  
 
</tr> 
<% } %> 
</table> 

<br></br>
<br></br><br></br><br></br>

<form align="center" action="FrontPageUser.jsp" method="get">
		</tr><input type="submit" value="返回首页" />
		</form>





</body> 
<% 

sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 
