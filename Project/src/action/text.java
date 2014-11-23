package action;

import com.opensymphony.xwork2.ActionSupport;

public class text extends ActionSupport{
	
	String username,password;
	
	
	public String execute() throws Exception

    {
	   System.out.println("asdfasdfavargarvava");
       return "success";

    }
	
	public void setUsername(String username)
	{
		this.username=username;
	}
	public String getUsername()
	{
		return username;
	}
	public void setPassword(String username)
	{
		this.username=username;
	}
	public String getPassword()
	{
		return password;
	}
	

}
