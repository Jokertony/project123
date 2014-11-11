<%@page import="java.sql.*" import ="java.util.*" import ="java.io.*" contentType="text/html; charset=gb2312" %>
<html>
 <body align="left" background="images/3.jpg">
		<h1 align="left">Stadium</h1>
		<h3 >Welcome!</h3>
		
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

String a="*";
String sqlquery="select "+a+" from announce"; 
sqlRst=sqlStmt.executeQuery (sqlquery);

%>
		
		

<%!
    synchronized void  countPeople(){
    ServletContext application=getServletContext();
    Integer number=(null==application.getAttribute("Count"))?
                                        null:(Integer)application.getAttribute("Count");
    
    if(number==null){
    number=new Integer(1);
    application.setAttribute("Count",number);
    }
    else{
    number=new Integer(number.intValue()+1);
    application.setAttribute("Count",number);
    }
    }
    
    %>
    <% 
    if(session.isNew()){
    countPeople();
    Integer myCount=(Integer)application.getAttribute("Count");
    session.setAttribute("MyCount",myCount);
    }
   
     %>
     <font color="blue">
     <p align=left>you are the
     <b>
     
     <%
     //out.print(((Integer)session.getAttribute("MyCount")).intValue());
      %>
      </b>
     th visitor </font>

<form align="left" action="AllMessages.jsp" method="get">
		fields search
		<input type="submit" value="user" />
		</form>	
		<form align="left" action="addmessages.jsp" method="get">
		add messages
		<input type="submit" value="admin" />	
		</form>
		<form action="MessageBoard.jsp" method="get">
		View The Message Board!
		<input type="submit" value="go" />
		</form>
		<form action="ShowAnnoun.jsp" method="get">
		View The Announcement From Admin!
		<input type="submit" value="go" />
		</form>
		


<%


String username=request.getParameter("username");
Cookie cookies[]=request.getCookies();
if(username!=null){
Cookie c=new Cookie("Name",username);
c.setMaxAge(600);
response.addCookie(c);
}
else if(cookies!=null){
for(int i=0;i<cookies.length;i++){
if(cookies[i].getName().equals("Name"))
username=cookies[i].getValue();
}}

 %>


<left ><font face="" color="white" size="4" >Public Annonucement</font ></left >

<% while (sqlRst.next()) {  %> 

<marquee style="WIDTH: 388px; HEIGHT: 200px" scrollamount="2" direction="up" >
<div align="left" ><br />
</div >
<div align="left" ><br />
</div >
<left >
<p ><font color="white" size="4" ><%=sqlRst.getString("Time")%></font ></p >
<p ><font color="white" size="4" ><%=sqlRst.getString("announcement")%></font ></p >
<p ><font color="white" size="4" ></font ><br />
<br />
</p >
</marquee >

<% } %>












</body>
<iframe align="lowwer" src="http://www.hit.edu.cn/campus/sportfacilities.htm" width="1000" height="850"></iframe>
</html>

<% 

sqlStmt.close (); 
sqlConn.close(); 
%> 
