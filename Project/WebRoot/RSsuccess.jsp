

<!DOCTYPE HTML>
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


String a=(String)session.getAttribute("fuck");
String sqlquery="select * from sport where id ='"+a+"'";
sqlRst=sqlStmt.executeQuery (sqlquery);

%>
<!--
	Aerial 1.0 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Aerial by HTML5 UP</title>
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
						<h1>预约成功！</h1>
						<p>所有预约详情可在首页中查看</p>
						
							
							
							
								
								
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
<% 

sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 