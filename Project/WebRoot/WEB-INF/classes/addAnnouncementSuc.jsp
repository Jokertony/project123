<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

<body bgcolor="AntiqueWhite"> 
<p align="center"><u><font size="5" face="������κ">Messages board!</font></u></p> 
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


String nName=request.getParameter("newTime");
String newpassword=request.getParameter("newAnnoun");





String sqlQuery="INSERT INTO announce VALUES(\""+nName+"\",\""+newpassword+"\")"; 
sqlStmt.executeUpdate (sqlQuery);
String a="*";
String sqlquery="select "+a+" from announce"; 
sqlRst=sqlStmt.executeQuery (sqlquery);

%>


<h4 align="center">Add success!</h>

<form align="center" action="admin/FrontPageAdmin.jsp" method="get">
        Back!
		</tr><input type="submit" value="Back" />
		</form>

<table align="center" border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
<tr> 
  <td align="center">time</td> 
  <td align="center">announce</td> 



</tr> 

<% while (sqlRst.next()) { //ȡ����һ����¼ %> 
<tr><!--��ʾ��¼--> 
  <td align="center"><%=sqlRst.getString("Time")%></td> 
  <td align="center"><%=sqlRst.getString("announcement")%></td> 
</tr> 
<% } %> 
</table> 

<br></br>
<br></br><br></br><br></br>






</body> 
<% 

sqlStmt.close (); //�ر����ݿ����� 
sqlConn.close(); 
%> 
