<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

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

sqlStmt.close (); //�ر����ݿ����� 
sqlConn.close(); 
%> 
