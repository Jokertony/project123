<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

<body bgcolor="AntiqueWhite"> 
<p align="center"><u><font size="5" face="������κ">All Messages</font></u></p> 
<%! 
String host="localhost"; //���ݿ����� 
String database="test"; //���ݿ��� 
String user="zh"; //�û��� 
String pass=""; //���� 
%><% java.sql.Connection sqlConn; //���ݿ����Ӷ��� 
java.sql.Statement sqlStmt; //������ 
java.sql.ResultSet sqlRst; //��������� 
//�Ǽ�JDBC�������� 
Class.forName ("com.mysql.jdbc.Driver").newInstance (); 
//�������ݿ� 
sqlConn= java.sql.DriverManager.getConnection ("jdbc:mysql://"+host+"/"+database,user,pass);
//���������� 
sqlStmt=sqlConn.createStatement (java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY); 
//ִ��Sql��� 
String a="*";
String sqlQuery="select "+a+" from messages"; 
sqlRst=sqlStmt.executeQuery (sqlQuery);
%>


<table align="center" border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
<tr> 
  <td align="center">Messages</td> 
  <td align="center">Username</td> 
  <td align="center">Title</td> 
  <td align="center">time</td> 


</tr> 

<% while (sqlRst.next()) { //ȡ����һ����¼ %> 
<tr><!--��ʾ��¼--> 
  <td align="center"><%=sqlRst.getString("Messages")%></td> 
  <td align="center"><%=sqlRst.getString("Username")%></td> 
  <td align="center"><%=sqlRst.getString("Title")%></td> 
  <td align="center"><%=sqlRst.getString("time")%></td> 
</tr> 
<% } %> 
</table> 




<br></br>
<br></br><br></br><br></br>

<form align="left" action="FrontPage.html" method="get">
		Back to HomePage!
		</tr><input type="submit" value="Back" />
		</form>

</body> 
<% 
  sqlRst.close(); 
  //�ر������� 
sqlStmt.close (); //�ر����ݿ����� 
sqlConn.close(); 
%> 





  