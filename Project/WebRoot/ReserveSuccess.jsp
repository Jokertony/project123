<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 
<head> 
<title>ͼ�����ϵͳ</title> 
<meta name="GENERATOR" content="Microsoft FrontPage 4.0"> 
<meta name="ProgId" content="FrontPage.Editor.Document"> 
</head> 
<body bgcolor="AntiqueWhite"> 
<p align="center"><u><font size="5" face="������κ">ͼ�����ϵͳ</font></u></p> 
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



String sql="update Stadiums set remainsField = remainsField-1 where manager='zh'"; 
sqlStmt.executeUpdate (sql);
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
</tr> 

<% while (sqlRst.next()) { //ȡ����һ����¼ %> 
<tr><!--��ʾ��¼--> 
  <td align="center"><%=sqlRst.getString("Stadium Name")%></td> 
  <td align="center"><%=sqlRst.getString("kind")%></td> 
  <td align="center"><%=sqlRst.getString("remainsField")%></td> 
  <td align="center"><%=sqlRst.getString("manager")%></td> 
  <td align="center"><%=sqlRst.getString("telephone")%></td> 
</tr> 
<% } %> 
</table> 

<form align="center" action="FrontPageUser.jsp" method="get">
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