<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<%@page import="javax.imageio.*"%>  
<%@page import="java.awt.image.BufferedImage,java.io.*;"%>  <html> 

<body background="333.jpg"> 
<p align="center"><u><font size="5" face="������κ">�����Ϣ</font></u></p> 
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

String sqlQuery="select * from fields where fieldname='OutBasketball' or fieldname='swim' or fieldname='gym' or fieldname='Zxsportfield' or fieldname='tabletennis' or fieldname='volleyball'"; 
sqlRst=sqlStmt.executeQuery (sqlQuery);
%>




<% while (sqlRst.next()) { //ȡ����һ����¼ %> 

   <%=sqlRst.getString("details")%> 
   <br>
   
<% } %> 




<div style="width:1000px">
     <div  style=" float:left; width:40%;"><h4>����ʵ��</h4><img src="17.jpg" height="200px" width="400px" ></div>
     <div  style=" float:left; width:40%;"><h4>����</h4><img src="19.jpg"  height="200px" width="400px"></div>
      <div  style=" float:right; width:20%;">
      <br><br><br>
      <form align="center" action="FrontPageUser.jsp" method="get">
		<input type="submit" value="�ص���ҳ!" />
		</form>
      </div>
 </div>
 
 <div style="width:1000px">
     <div  style=" float:left; width:40%;"><h4>����ʵ��</h4><img src="15.jpg" height="200px" width="400px" ></div>
     <div  style=" float:left; width:40%;"><h4>����</h4><img src="20.jpg"  height="200px" width="400px"></div>
      
 </div>


 
 
 




</body> 
<% 
  sqlRst.close(); 
  //�ر������� 
sqlStmt.close (); //�ر����ݿ����� 
sqlConn.close(); 
%> 





  