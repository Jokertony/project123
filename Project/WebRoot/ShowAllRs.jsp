<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=utf8" %> 
<html> 

<body background="333.jpg"> 
<p align="center"><u><font size="5" face="华文新魏">公告栏</font></u></p> 
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

String sqlquery="select * from sport where status=0"; 
sqlRst=sqlStmt.executeQuery (sqlquery);

%>



<!DOCTYPE HTML>

<!--
	Aerial 1.0 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>管理预约情况</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
			<link rel="stylesheet" href="css/style-noscript.css" />
		</noscript>
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="loading">
		<div id="wrapper">
			<div id="bg"></div>
			<div id="overlay"></div>
			<div id="main">

				<!-- Header -->
					<header id="header">
						<h1>以下是所有预约信息</h1>
						 <form action="delete" style="color:black;">
						 请输入你要删除的场地编号<br> <input style="color:black; size=14" type="text" name="id" ><br>
								 <input type="submit" value="删除预约"  style="color:black;" >
								 </form>
						
							
							
							
								
								 <center>
								 <table  border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
							<tr> 
							<td align="center">编号</td> 
							<td align="center">时间</td> 
							<td align="center">status</td>
							<td align="center">星期</td>
							<td align="center">LoginName</td>
							<td align="center">contact</td>  
							<td align="center">field</td>    
							</tr> 
							<% while (sqlRst.next()) { //取得下一条记录 %> 
							<tr><!--显示记录--> 
							<td align="center"><%=sqlRst.getString("id")%></td> 
							 <td align="center"><%=sqlRst.getString("watch")%>:00</td> 
							 <td align="center"><%=sqlRst.getString("status")%></td> 
							  <td align="center"><%=sqlRst.getString("week")%></td> 
							   <td align="center"><%=sqlRst.getString("LoginName")%></td> 
							    <td align="center"><%=sqlRst.getString("contact")%></td> 
							     <td align="center"><%=sqlRst.getString("field")%></td> 
							   </tr> 
							   <% } %> 
							   </table> 
							   </center>
								 <form action="AllMessages.jsp" style="color:black;">
								 <input type="submit" value="回到首页"  style="color:black;" >
								 </form>
							
						
					</header>
					
				<!-- Footer -->
					<footer id="footer">
						<span class="copyright">&copy; 开发设计：朱骅，江应斌，张文升</span>
					</footer>
				
			</div>
		</div>
		
	</body>
</html>





</body> 
<% 

sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 



