<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=utf8" %> 
<html> 

<body background="222.jpg"> 
<style>
.div_show
{
   display:block;
}
.div_hide
{
   display:none;
}
</style>
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
String sqlQuery="select * from messages"; 
sqlRst=sqlStmt.executeQuery (sqlQuery);
%>


<table align="center" border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
<tr> 
  <td align="center">信息</td>
  <td align="center">用户名</td> 
 


</tr> 

<% while (sqlRst.next()) { //取得下一条记录 %> 
<tr><!--显示记录--> 
  <td align="center"><%=sqlRst.getString("Messages")%></td> 
  <td align="center"><%=sqlRst.getString("Username")%></td> 



</tr> 
<% } %> 
</table> 



		
<form align="center" action="javaScript:showhide()" method="get">
		
		<input type="submit" value="新增留言" />	
		</form>
		<br><br>
<div id="div_tex" class="div_hide">
<center>
   <form align="left" action="AddSuccess.jsp" method="post">
		</br>用户名	<input type="text" name="newName">
		</br>信息  <div id="mess"><textarea rows="10" cols="30" name="newMessages"></textarea></div>  
	
		
		
		<input type="submit" value="提交" />
		</form>
		</center>
</div>




<br></br>
<br></br><br></br><br></br>

<script language="javaScript">
function showhide()
{
  document.getElementById("div_tex").className="div_show";
}
</script>

</body> 
<% 
  sqlRst.close(); 
  //关闭语句对象 
sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 





  