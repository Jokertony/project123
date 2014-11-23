<!DOCTYPE HTML>
<!--
	Aerial 1.0 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=utf8" %> 
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

String sqlQuery="select * from fields where fieldname='OutBasketball' or fieldname='swim' or fieldname='gym' or fieldname='Zxsportfield' or fieldname='tabletennis' or fieldname='volleyball'"; 
sqlRst=sqlStmt.executeQuery (sqlQuery);
%>
	<head>
		<title>其余场馆信息</title>
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
						<h1>球场信息</h1>
						<p><% while (sqlRst.next()) { //取得下一条记录 %> 
						<%=sqlRst.getString("details")%> 
						<br>
<% } %> </p>
						<nav>
							<ul>
							<center>
								<div style="width:1000px">
     <div  style=" float:left; width:50%;"><h4>场地实景</h4><img src="17.jpg" height="200px" width="400px" ></div>
     <div  style=" float:left; width:50%;"><h4>篮球场</h4><img src="19.jpg"  height="200px" width="400px"></div>
 
 </div>
 
 <div style="width:1000px">
     <div  style=" float:left; width:50%;"><h4>场地实景</h4><img src="15.jpg" height="200px" width="400px" ></div>
     <div  style=" float:left; width:50%;"><h4>排球场</h4><img src="20.jpg"  height="200px" width="400px"></div>
 </div>
 </center>

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