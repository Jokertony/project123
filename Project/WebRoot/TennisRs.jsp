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
String sqlQuery="select * from fields where fieldname='tennis'"; 
sqlRst=sqlStmt.executeQuery (sqlQuery);

%>
	<head>
		<title>预约网球场</title>
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
     <div  style=" float:left; width:40%;"><h4>网球场实景图 </h4> <img src="13.jpg" height="300px" width="400px" ></div>
     <div  style=" float:left; width:40%;"><h4>网球场分布平面图</h4><img src="1111.png"  height="300px" width="400px"></div>
      <div  style=" float:right; width:20%;">
      <form name="badmintonTime" action="reserve" method="post">
      请输入预约日期<br>
      <select align="left" name="week">
    <option value="1">周一</option>
    <option value="2">周二</option>
    <option value="3"> 周三</option>
    <option value="4"> 周四</option>
    <option value="5"> 周五</option>
    <option value="6"> 周六</option>
    <option value="7"> 周天</option>
    </select>
    <br>
    
     请输入预约时间

     <br>
    <select align="left" name="watch">
    <option value="8">8:00</option>
    <option value="9">9:00</option>
    <option value="10">10:00</option>
    <option value="11">11:00</option>
    <option value="12">12:00</option>
    <option value="13">13:00</option>
    <option value="14">14:00</option>
    <option value="15">15:00</option>
    <option value="16">16:00</option>
    <option value="17">17:00</option>
    <option value="18">18:00</option>
    <option value="19">19:00</option>
    <option value="20">20:00</option>
    </select>
    <br>
    
    请输入场地号:
      <br>
     <select align="left" name="field">
    <option value="101">1号场地</option>
    <option value="102">2号场地</option>
    </select>
    <br>

    请输入预约者姓名
    <input type="text" name="LoginName" style="color:black;"  height="30px">
    <br>
    请输入确认预约的联系电话
    <br>
    <input type="text" name="contact" style="color:black;" height="20px">
    <br>
    
      <input type="submit" value="提交预约" style="color:black;">
       </form>
      </div>
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