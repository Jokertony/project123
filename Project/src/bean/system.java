package bean;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class system
{

    private String username,password,LoginName,contact;
    private int id,watch,field,status,week;

    public system()
    {

    }
    public void setLoginName(String LoginName)
    {
        this.LoginName=LoginName;
    }
    public String getLoginName()
    {
        return LoginName;
    }
    public void setContact(String contact)
    {
        this.contact=contact;
    }
    public String getContact()
    {
        return contact;
    }
   	
    public void setWeek(int week)
	{
	    this.week=week;
	}
	public int getWeek()
	{
	    return week;
	}
	public void setField(int field)
    {
        this.field=field;
    }
    public int getField()
    {
        return field;
    }
    
    public void setUsername(String username)
    {
        this.username=username;
    }
    public String getUsername()
    {
        return username;
    }
    public void setPassword(String password)
    {
        this.password=password;
    }
    public String getPassword()
    {
        return password;
    }
    public void setId(int id)
    {
        this.id=id;
    }
    public int getId()
    {
        return id;
    }
    public void setWatch(int watch)
    {
    	this.watch=watch;
    }
    public int getWatch()
   
    
    {
    	return watch;
    }
   
    
    //登录确定
    public int check_login(String username1,String password1)
    {
    	
        int flag=0;
        try {
            con = getConnection();
            stmt = createStatement("select * from users");
           
            rs = stmt.executeQuery();
            
            while (rs.next()) {
                if(username1.equals(rs.getString(1))&&password1.equals(rs.getString(2)))
                {
                    flag=1;
                }


            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }
        return flag;
    }

    
    //管理员登录
    public int check_adminlogin(String username1,String password1)
    {
        int flag=0;
        try {
            con = getConnection();
            stmt = createStatement("SELECT *FROM admin");
            
            rs = stmt.executeQuery();
            while (rs.next()) {
                if(username1.equals(rs.getString(1))&&password1.equals(rs.getString(2)))
                {
                    flag=1;
                }


            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }
        return flag;
    }
   
    //预约推荐
    
    public ArrayList check_reserve(int id,int field,int week,int watch,String LoginName,String contact)
    {
    	ArrayList list =new ArrayList();
    	int flag=0;
    	try{
    		con=getConnection();
    		stmt=createStatement("SELECT * FROM sport where id ="+id);
    		rs=stmt.executeQuery();
    		while(rs.next())
    		{
    			if(rs.getString(3).equals("1"))
    			{
    				flag=watch;
    				System.out.println(id);
    				list.add(id);
    				String v="update sport set status='0',LoginName="+"'"+LoginName+"'"+",contact="+"'"+contact+"'"+" where id="+id;
    				
    				stmt=createStatement(v);
    				System.out.println(v);
    				executeUpdate();
    				
    			}
    		}
    		
    			
    		
    		while(flag==0)
    		{
    			for(int k=0;k<3;k++)
    			{
    				watch=watch+1;
        			id=1000*field+100*week+watch;
            		stmt=createStatement("SELECT * FROM sport where id="+id);
            		rs=stmt.executeQuery();
            		
            		while(rs.next())
            		{
            			if((rs.getString(3).equals("1")))
            			{
            				flag=watch;
            				list.add(id);
            			}
            		}		
    			}
    				
        		
    		}
    		
    	}catch(Exception e){
    		System.out.println(e.toString());
    	}
    	finally{
    		close();
    	}
		return list;
    	
    }

   
    //initialize
    public void initialise()
    {
    	
    	try {
            con = getConnection();
            stmt = createStatement("TRUNCATE TABLE sport");        
            executeUpdate();
        } catch (Exception e) {
            System.out.println(e.toString());
        }
       
    	
    	int i=1,j,k,l;
    	int count[]=new int[3200],a[]=new int [20],b[]=new int [8],c[]=new int [25];
    	for(i=1;i<13;i++)
    	{
    		a[i]=i;
    	}
    	for(;i<15;i++)
    	{
    		a[i]=100+i-12;
    	}
    	for(i=1;i<8;i++)
    	{
    		b[i]=i;
    	}
    	for(i=8;i<21;i++)
    	{
    		c[i]=i;
    	}
    	i=1;
    		for(j=1;j<15;j++)
    		{
    			for(k=1;k<8;k++)
    			{
    				for(l=8;l<21;l++)
    				{
    					
    					count[i]=a[j]*1000+b[k]*100+c[l];
    					i++;
    					
    				}
    			}
    		}
    	
    	
    	j=8;
    	k=1;
    	    	 try{
                        
    	     			con=getConnection();
    	     			//System.out.println(c[1]);
    	     			for(i=1;i<1275;i++)
    	     			{
    	     				int x=count[i]/1000;
    	     				//String s1=count[i],s2=j,s3=1,s4=k;
    	       	    	    String v="insert into sport values ("+count[i]+","+j+","+1+","+k+","+null+","+null+","+x+")";    
    	       	    	    System.out.println(v);
    	     				stmt=createStatement(v);
        	     			executeUpdate();
        	     			 j++;
        	    			 if(j==21)
        	    			 {
        	    				 j=8;
        	    				 k++;
        	    				 if(k==8)
        	    				 {
        	    					 k=1;
        	    				 }
        	    			 }
    	     			}
    	     			
    	     		
    	     	}catch(Exception e){
    	     		System.out.println(e.toString());
    	     	} 	    	 
    			
    	}
    
    
    
    //update
    public void update(int week)
    {
    	int flag=0;
    	try {
            con = getConnection();
            stmt = createStatement("update sport set status='1' where week ="+week);        
            executeUpdate();
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }
    }
    
    
    //delete
    public void delete(int id)
    {
    	try{
    		con=getConnection();
    		stmt=createStatement("SELECT * FROM sport where id ="+id);
    		rs=stmt.executeQuery();
    		while(rs.next())
    		{
    				String v="update sport set status='1',LoginName="+null+",contact="+null+" where id="+id;
    				System.out.println(v);
    				stmt=createStatement(v);
    				executeUpdate();
    			
    		}
    		
    	}catch(Exception e){
    		System.out.println(e.toString());
    	}
    	finally{
    		close();
    	}
    }



    //数据库连接封装
    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    String driverClass = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost/test";

    // 完成连接的创建
    public Connection getConnection() throws Exception {
        Class.forName(driverClass);//加载驱动程序
        if (con == null) {
            con = DriverManager.getConnection(url, "zh", "");
        }
        return con;
    }

    //创建语句对象
    public PreparedStatement createStatement(String sql) throws Exception {
        stmt = getConnection().prepareStatement(sql);
        return stmt;
    }

    //执行带有结果集返回的方法
    public ResultSet executeQuery() throws Exception {
        rs = stmt.executeQuery();
        return rs;
    }

    //执行没有结果集返回的方法
    public int executeUpdate() throws Exception {
        return stmt.executeUpdate();
    }

    //关闭对象
    public void close() {
        if (rs != null) {
            try {
                rs.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }



}
