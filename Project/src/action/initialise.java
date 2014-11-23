package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import java.util.*;
import bean.system;

public class initialise extends ActionSupport
{
	public String execute()
	{
		system initial=new system();
		initial.initialise();
        return "success";
	}
  
}

/*
public class initialise 
{
	public static void main(String args[])
	{
		system initial=new system();
		initial.initialise();
	}
}

*/

