<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<%@page import="javax.imageio.*"%>  
<%@page import="java.awt.image.BufferedImage,java.io.*;"%>  <html> 

<body background="222.jpg"> 
<p align="center"><u><font size="5" face="������κ">�����Ϣ</font></u></p> 
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






<% while (sqlRst.next()) { //ȡ����һ����¼ %> 
   <%=sqlRst.getString("details")%> 
   <br>
<% } %> 

                                                 

<div style="width:1000px">
     <div  style=" float:left; width:40%;"><h4>����ʵ��ͼ </h4> <img src="13.jpg" height="300px" width="400px" ></div>
     <div  style=" float:left; width:40%;"><h4>���򳡷ֲ�ƽ��ͼ</h4><img src="1111.png"  height="300px" width="400px"></div>
      <div  style=" float:right; width:20%;"><h4>ԤԼ����</h4>
      <br><br><br>
      <form name="badmintonTime" action="" method="post">
      ������ԤԼ����<br>
      <select name="day">
    <option value="1">��һ</option>
    <option value="2">�ܶ�</option>
    <option value="3"> ����</option>
    <option value="4"> ����</option>
    <option value="5"> ����</option>
    <option value="6"> ����</option>
    <option value="7"> ����</option>
    </select>
    <br>
    
     ������ԤԼʱ��

     <br>
    <select name="time">
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
    
    �����볡�غ�:
      <br>
     <select name="field">
    <option value="101">1�ų���</option>
    <option value="102">2�ų���</option>
    </select>
    <br>
      <input type="submit" value="�ύԤԼ">
       </form>
      </div>
 </div>

<br>



<script>
<!--   
   function YYYYMMDDstart()   
   {   
           MonHead = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];   
    
           //�ȸ�������������   
           var y  = new Date().getFullYear();   
           for (var i = (y-30); i < (y+30); i++) //�Խ���Ϊ׼��ǰ30�꣬��30��   
                   document.reg_testdate.YYYY.options.add(new Option(" "+ i +" ��", i));   
    
           //���·ݵ�������   
           for (var i = 1; i < 13; i++)   
                   document.reg_testdate.MM.options.add(new Option(" " + i + " ��", i));   
    
           document.reg_testdate.YYYY.value = y;   
           document.reg_testdate.MM.value = new Date().getMonth() + 1;   
           var n = MonHead[new Date().getMonth()];   
           if (new Date().getMonth() ==1 && IsPinYear(YYYYvalue)) n++;   
                writeDay(n); //������������Author:meizz   
           document.reg_testdate.DD.value = new Date().getDate();   
   }   
   if(document.attachEvent)   
       window.attachEvent("onload", YYYYMMDDstart);   
   else   
       window.addEventListener('load', YYYYMMDDstart, false);   
   function YYYYDD(str) //�귢���仯ʱ���ڷ����仯(��Ҫ���ж���ƽ��)   
   {   
           var MMvalue = document.reg_testdate.MM.options[document.reg_testdate.MM.selectedIndex].value;   
           if (MMvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
           var n = MonHead[MMvalue - 1];   
           if (MMvalue ==2 && IsPinYear(str)) n++;   
                writeDay(n)   
   }   
   function MMDD(str)   //�·����仯ʱ��������   
   {   
        var YYYYvalue = document.reg_testdate.YYYY.options[document.reg_testdate.YYYY.selectedIndex].value;   
        if (YYYYvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
        var n = MonHead[str - 1];   
        if (str ==2 && IsPinYear(YYYYvalue)) n++;   
       writeDay(n)   
   }   
   function writeDay(n)   //������д���ڵ�������   
   {   
           var e = document.reg_testdate.DD; optionsClear(e);   
           for (var i=1; i<(n+1); i++)   
                e.options.add(new Option(" "+ i + " ��", i));   
   }   
   function IsPinYear(year)//�ж��Ƿ���ƽ��   
   {     return(0 == year%4 && (year%100 !=0 || year%400 == 0));}   
   function optionsClear(e)   
   {   
        e.options.length = 1;   
   }   
   //--></script>


</body> 

       
<% 
  sqlRst.close(); 
  //�ر������� 
sqlStmt.close (); //�ر����ݿ����� 
sqlConn.close(); 
%> 







  