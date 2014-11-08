package bean;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class system
{

    private String username,password;

    public system()
    {

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
   
    
    //��¼ȷ��
    public int check_login(String username1,String password1)
    {
        int flag=0;
        try {
            con = getConnection();
            stmt = createStatement("SELECT *FROM Users");
            
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
    



   



    //���ݿ����ӷ�װ
    String host="localhost"; //���ݿ����� 
    String database="test"; //���ݿ��� 
    String user="zh"; //�û��� 
    String pass=""; //���� 
    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    String driverClass = "com.mysql.jdbc.Driver";

    // ������ӵĴ���
    public Connection getConnection() throws Exception {
        Class.forName(driverClass);//������������
        if (con == null) {
            con =DriverManager.getConnection ("jdbc:mysql://"+host+"/"+database,user,pass);
        }
        return con;
    }

    //����������
    public PreparedStatement createStatement(String sql) throws Exception {
        stmt = getConnection().prepareStatement(sql);
        return stmt;
    }

    //ִ�д��н�������صķ���
    public ResultSet executeQuery() throws Exception {
        rs = stmt.executeQuery();
        return rs;
    }

    //ִ��û�н�������صķ���
    public int executeUpdate() throws Exception {
        return stmt.executeUpdate();
    }

    //�رն���
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
