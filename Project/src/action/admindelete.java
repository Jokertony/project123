package action;

import com.opensymphony.xwork2.ActionSupport;
import bean.system;
public class admindelete extends ActionSupport {
	int id;
	String LoginName=null,contact=null;
	public String execute()
	{
		System.out.println(id);
		system delete=new system();
		delete.delete(id);
		return "success";
	}
	public void setID(int id)
    {
        this.id=id;
    }
    public int getId()
    {
        return id;
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
}

