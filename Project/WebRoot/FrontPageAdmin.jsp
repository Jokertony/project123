<!DOCTYPE HTML>

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
<% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
java.util.Date currentTime = new java.util.Date();//得到当前系统时间
String str_date1 = formatter.format(currentTime); //将日期时间格式化 
String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式 

%>
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
						<h1>我要去健身</h1>
						<p3>您好，尊敬的管理员！</p3>
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
								<li><a href="AllMessages(admin).jsp" class="fa fa-twitter"><span>用户登录</span></a></li>
								查询预约情况
								<li><a href="MessageBoard.jsp" class="fa fa-facebook"><span>管理员登录</span></a></li>
								查看留言板
								<li><a href="ShowAnnoun.jsp" class="fa fa-dribbble"><span>留言板</span></a></li>
								查看公告
								<li><a href="addAnoucement.jsp" class="fa fa-envelope-o"><span>注册新用户</span></a></li>
								<a href="javaScript:showhide()">增加公告</a>
<div id="div_tex" class="div_hide">
    <form align="left" action="addAnnouncementSuc.jsp" method="post">
		公告时间<input type="text" name="newTime" " style="color:black;" >
		<br>
		公告内容<br><textarea rows="5" cols="28" name="newAnnoun" style="color:black;"></textarea>
		<br>
		<input type="submit" value="提交留言" style="color:black;" />
		</form>
</div>

<script language="javaScript">
function showhide()
{
  document.getElementById("div_tex").className="div_show";
}
</script>
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