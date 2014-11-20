<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

<br></br>
<br></br><br></br><br></br>
<body background="3.jpg"> 
<p align="center" >提供预约的场所：




<% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
java.util.Date currentTime = new java.util.Date();//得到当前系统时间
String str_date1 = formatter.format(currentTime); //将日期时间格式化 
String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式 
%>



<script language=JavaScript>
today=new Date();
var judge;
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
"<font color=#333 style='font-size:10pt;font-family: 宋体'> ",
today.getFullYear(),"年",
today.getMonth()+1,"月",
today.getDate(),"日",
d[today.getDay()+1],
"</font>" ); 
</script>


<form align= "center" action="ShowAllRs.jsp" method="post">
正心羽毛球场
<br></br>
室外网球场
<br></br>
<input type="submit"  value="查看预约情况" />
</form>
<br>
<form align="center" action="" >
初始化预约情况（请谨慎点击）
<br>
<input type="submit" value="初始化">
</form>



<form align="center" name="insertForm" method="post" action="test.jsp"> 
更新预约情况
<input type="hidden" name="day" value="<%=currentTime.getDay()%>"> 
<br>
<input type="submit" value="更新" > 
</form> 







<form align="center" action="FrontPageAdmin.jsp" method="get">
		
		</tr><input type="submit" value="回到首页!" />
		</form>

</body> 




</body> 






  