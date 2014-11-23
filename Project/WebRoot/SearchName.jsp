

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


String a=request.getParameter("newName");
String sqlquery="select * from sport where LoginName='"+a+"'"; 
sqlRst=sqlStmt.executeQuery (sqlquery);
%>
<!--
	Aerial 1.0 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>查询预约信息</title>
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
						<h1>以下是您的预约信息</h1>
						 <form action="delete" style="color:black;">
						 请输入你要删除的场地编号<br> <input name="id" style="color:black; size=14" type="text"  ><br>
								 <input type="submit" value="删除预约"  style="color:black;" >
								 </form>
						
							
							
							
								
								 <center>
								 <table  border="1" width="50%" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0"> 
							<tr> 
							<td align="center">编号</td> 
							<td align="center">时间</td>
							<td align="center">日期</td>
							<td align="center">预约姓名</td>
							<td align="center">联系方式</td>   
							<td align="center">场地号</td>   
							</tr> 
							<% while (sqlRst.next()) { //取得下一条记录 %> 
							<tr><!--显示记录--> 
							<td align="center"><%=sqlRst.getString("id")%></td> 
							 <td align="center"><%=sqlRst.getString("watch")%>:00</td> 
							  <td align="center">星期<%=sqlRst.getString("week")%></td> 
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
<% 

sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 