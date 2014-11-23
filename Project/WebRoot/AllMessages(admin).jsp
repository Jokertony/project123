<!DOCTYPE HTML>

<% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
java.util.Date currentTime = new java.util.Date();//得到当前系统时间
String str_date1 = formatter.format(currentTime); //将日期时间格式化 
String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式 
%>
<html>

	<head>
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
						<h1>场馆预约情况</h1>

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
								<li><a href="ShowAllRs.jsp" class="fa fa-twitter"></a></li>
								查看所有预约情况
								<li><a href="initialise" class="fa fa-facebook"><span></span></a></li>
								初始化预约情况
								<li><a href="" class="fa fa-dribbble"><span></span></a></li>
								更新预约情况（点击下方更新按钮）
								<form align="center" name="insertForm" method="post" action="update"> 
<input type="hidden" name="day" value="<%=currentTime.getDay()%>"> 
<input type="submit" value="更新" style="color:black;" > 
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
		<script language="javaScript">
function showhi()
{
  document.getElementById("tex").className="div_show";
}
</script>
	</body>
</html>