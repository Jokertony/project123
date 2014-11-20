<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=utf8" %>
<!DOCTYPE html>
<html>
<div id="Layer2" style="position:absolute; width:100%; height:100%; z-index:-1">
<img src="1.jpg" height="100%" width="100%">
</div>

<body>

<script language=JavaScript>
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
"<font color=#333 style='font-size:10pt;font-family: 宋体'> ",
today.getFullYear(),"年",
today.getMonth()+1,"月",
today.getDate(),"日",
d[today.getDay()+1],
"</font>" ); 
</script>



<br></br><br></br><br>
  <form align="left" action="addAnnouncementSuc.jsp" method="post">
		留言时间<input type="text" name="newTime" >
		<br>
		留言内容<br><textarea rows="10" cols="28" name="newAnnoun"></textarea>
		<br>
		<input type="submit" value="提交留言" />
		</form>
		
		
		<form align="left" action="FrontPageAdmin.jsp" method="get">
		</tr><input type="submit" value="回到首页" />
		</form>

</body> 
		

</html>
