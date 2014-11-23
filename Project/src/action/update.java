package action;
import bean.system;

import com.opensymphony.xwork2.ActionSupport;

public class update extends ActionSupport{
	int week=5;
	public void setWeek(int week)
	{
	    this.week=week;
	}
	public int getWeek()
	{
	    return week;
	}
	
	public String execute()
	{
		system update=new system();
		
		update.update(week);
		return "success";
		
	}
	
	
}

