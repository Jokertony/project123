<!DOCTYPE HTML>

<% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
java.util.Date currentTime = new java.util.Date();//得到当前系统时间
String str_date1 = formatter.format(currentTime); //将日期时间格式化 
String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式 
%>
<html>
	<head>
		<title>我要去健身</title>
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
						<h1>场馆预约</h1>
						<p4>目前开放预约的场馆有:正心楼羽毛球场,网球场,其余场地仅可查看信息</p4>
						<br>
						<p4>其余场地包括:游泳馆，室外篮球场，体育馆，正心健身房</p4>
						<p><script language=JavaScript>
today=new Date();
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i] }
var d=new initArray(
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六");
document.write(
"<font color=#333 style='font-size:15pt;font-family: 宋体'> ",
today.getFullYear(),"年",
today.getMonth()+1,"月",
today.getDate(),"日",
d[today.getDay()+1],"</font>" ); 
</script>
</p>
						<nav>
							<ul>
								<li><a href="test.jsp" class="fa fa-twitter"></a></li>
								预约羽毛球场
								<li><a href="TennisRs.jsp" class="fa fa-facebook"><span>管理员登录</span></a></li>
								预约网球场
								<li><a href="fieldsDetail.jsp" class="fa fa-dribbble"><span>留言板</span></a></li>
								查询其他场馆信息
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