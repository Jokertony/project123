<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<html> 

<br></br>
<br></br><br></br><br></br>
<body background="3.jpg"> 
<p align="center" >�ṩԤԼ�ĳ�����




<% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
java.util.Date currentTime = new java.util.Date();//�õ���ǰϵͳʱ��
String str_date1 = formatter.format(currentTime); //������ʱ���ʽ�� 
String str_date2 = currentTime.toString(); //��Date������ʱ��ת�����ַ�����ʽ 
%>



<script language=JavaScript>
today=new Date();
var judge;
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i] }
var d=new initArray(
"������",
"����һ",
"���ڶ�",
"������",
"������",
"������",
"������");
document.write(
"<font color=#333 style='font-size:10pt;font-family: ����'> ",
today.getFullYear(),"��",
today.getMonth()+1,"��",
today.getDate(),"��",
d[today.getDay()+1],
"</font>" ); 
</script>


<form align= "center" action="ShowAllRs.jsp" method="post">
������ë��
<br></br>
��������
<br></br>
<input type="submit"  value="�鿴ԤԼ���" />
</form>
<br>
<form align="center" action="" >
��ʼ��ԤԼ���������������
<br>
<input type="submit" value="��ʼ��">
</form>



<form align="center" name="insertForm" method="post" action="test.jsp"> 
����ԤԼ���
<input type="hidden" name="day" value="<%=currentTime.getDay()%>"> 
<br>
<input type="submit" value="����" > 
</form> 







<form align="center" action="FrontPageAdmin.jsp" method="get">
		
		</tr><input type="submit" value="�ص���ҳ!" />
		</form>

</body> 




</body> 






  