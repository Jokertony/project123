<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

<body bgcolor="AntiqueWhite"> 
<p align="center"><u><font size="5" face="华文新魏">All Messages</font></u></p> 
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
String sqlQuery="select "+a+" from Stadiums"; 
sqlRst=sqlStmt.executeQuery (sqlQuery);
%>


<table align="center" border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
<tr> 
  <td align="center">Stadium Name</td> 
  <td align="center">kind</td> 
  <td align="center">remains field</td> 
  <td align="center">manager</td> 
  <td align="center">telephone</td> 
<td align="center">reserve</td> 
</tr> 

<% while (sqlRst.next()) { //取得下一条记录 %> 
<tr><!--显示记录--> 
  <td align="center"><%=sqlRst.getString("Stadium Name")%></td> 
  <td align="center"><%=sqlRst.getString("kind")%></td> 
  <td align="center"><%=sqlRst.getString("remainsField")%></td> 
  <td align="center"><%=sqlRst.getString("manager")%></td> 
  <td align="center"><%=sqlRst.getString("telephone")%></td> 
  <td><form align="center" action="ReserveSuccess.jsp" method="post">
		<h3>
		<input type="submit" value="reserve">
		</h3>
		</form></td>
</tr> 
<% } %> 
</table> 




<br></br>
<br></br><br></br><br></br>

<form align="center" action="FrontPageUser.jsp" method="get">
		Back to HomePage!
		</tr><input type="submit" value="Back" />
		</form>

</body> 




</body> 
<% 
  sqlRst.close(); 
  //关闭语句对象 
sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 





  