<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

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



String a=(String)session.getAttribute("id1");
String b=(String)session.getAttribute("id2");
String c=(String)session.getAttribute("id3");
String sqlquery="select * from sport where id='"+a+"' or id='"+b+"' or id= '"+c+"'";
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
		<title>预约失败啦！</title>
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
						<h1>预约失败啦！该时间段已被预约！</h1>

						<p>我们给您推荐了以下时间:
						<center>
								 <table  border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
							<tr> 
							<td align="center">时间</td> 
							<td align="center">日期</td> 
							<td align="center">场地号</td> 
							
							</tr> 
							<% while (sqlRst.next()) { //取得下一条记录 %> 
							<tr><!--显示记录--> 
							 <td align="center"><%=sqlRst.getString("watch")%>:00</td>
							 <td align="center">星期<%=sqlRst.getString("week")%></td> 
							 <td align="center"><%=sqlRst.getString("field")%>号场地</td>    
							   </tr> 
							   <% } %> 
							   </table> 
							   </center>
						

						<nav>
							<ul>
								<form action="AllMessages.jsp" style="color:black;">
								 <input type="submit" value="重新预约"  style="color:black;" >
    </form>
							</ul>
						</nav>
					</header>

				<!-- Footer -->
					<footer id="footer">
						<span class="copyright">&copy; 开发设计：朱骅，江应斌，张文升</span>
					</footer>
				
			</div>
		</div>
	</body>
</html>

<% 

sqlStmt.close (); 
sqlConn.close(); 
%> 

