package action;
import bean.system;
import com.opensymphony.xwork2.ActionSupport;


public class signin extends ActionSupport
{
    private String username,password;
    public String execute()
    {
  
        system check=new system();
        int flag=check.check_login(username, password);
        if(flag==1)
        {
        	return "success";
        }
        else 
        {
        	return "failure";
        }
       
        
        
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


}

