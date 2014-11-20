<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %> 
<%@page import="javax.imageio.*"%>  
<%@page import="java.awt.image.BufferedImage,java.io.*;"%>  <html> 

<body background="222.jpg"> 
<p align="center"><u><font size="5" face="华文新魏">球馆信息</font></u></p> 
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






<% while (sqlRst.next()) { //取得下一条记录 %> 
   <%=sqlRst.getString("details")%> 
   <br>
<% } %> 

                                                 

<div style="width:1000px">
     <div  style=" float:left; width:40%;"><h4>网球场实景图 </h4> <img src="13.jpg" height="300px" width="400px" ></div>
     <div  style=" float:left; width:40%;"><h4>网球场分布平面图</h4><img src="1111.png"  height="300px" width="400px"></div>
      <div  style=" float:right; width:20%;"><h4>预约详情</h4>
      <br><br><br>
      <form name="badmintonTime" action="" method="post">
      请输入预约日期<br>
      <select name="day">
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
    
    请输入场地号:
      <br>
     <select name="field">
    <option value="101">1号场地</option>
    <option value="102">2号场地</option>
    </select>
    <br>
      <input type="submit" value="提交预约">
       </form>
      </div>
 </div>

<br>



<script>
<!--   
   function YYYYMMDDstart()   
   {   
           MonHead = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];   
    
           //先给年下拉框赋内容   
           var y  = new Date().getFullYear();   
           for (var i = (y-30); i < (y+30); i++) //以今年为准，前30年，后30年   
                   document.reg_testdate.YYYY.options.add(new Option(" "+ i +" 年", i));   
    
           //赋月份的下拉框   
           for (var i = 1; i < 13; i++)   
                   document.reg_testdate.MM.options.add(new Option(" " + i + " 月", i));   
    
           document.reg_testdate.YYYY.value = y;   
           document.reg_testdate.MM.value = new Date().getMonth() + 1;   
           var n = MonHead[new Date().getMonth()];   
           if (new Date().getMonth() ==1 && IsPinYear(YYYYvalue)) n++;   
                writeDay(n); //赋日期下拉框Author:meizz   
           document.reg_testdate.DD.value = new Date().getDate();   
   }   
   if(document.attachEvent)   
       window.attachEvent("onload", YYYYMMDDstart);   
   else   
       window.addEventListener('load', YYYYMMDDstart, false);   
   function YYYYDD(str) //年发生变化时日期发生变化(主要是判断闰平年)   
   {   
           var MMvalue = document.reg_testdate.MM.options[document.reg_testdate.MM.selectedIndex].value;   
           if (MMvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
           var n = MonHead[MMvalue - 1];   
           if (MMvalue ==2 && IsPinYear(str)) n++;   
                writeDay(n)   
   }   
   function MMDD(str)   //月发生变化时日期联动   
   {   
        var YYYYvalue = document.reg_testdate.YYYY.options[document.reg_testdate.YYYY.selectedIndex].value;   
        if (YYYYvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
        var n = MonHead[str - 1];   
        if (str ==2 && IsPinYear(YYYYvalue)) n++;   
       writeDay(n)   
   }   
   function writeDay(n)   //据条件写日期的下拉框   
   {   
           var e = document.reg_testdate.DD; optionsClear(e);   
           for (var i=1; i<(n+1); i++)   
                e.options.add(new Option(" "+ i + " 日", i));   
   }   
   function IsPinYear(year)//判断是否闰平年   
   {     return(0 == year%4 && (year%100 !=0 || year%400 == 0));}   
   function optionsClear(e)   
   {   
        e.options.length = 1;   
   }   
   //--></script>


</body> 

       
<% 
  sqlRst.close(); 
  //关闭语句对象 
sqlStmt.close (); //关闭数据库连接 
sqlConn.close(); 
%> 







  