package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

import java.util.*;

import bean.system;

public class reserve extends ActionSupport
{
	int flag=0;
	int id,watch,field,week,id1,id2,id3;
	String LoginName=null,contact=null;
	String a,b,c;
	public String execute()
	{
		
		id=1000*field+100*week+watch;
		system check=new system();
		ArrayList list=check.check_reserve(id,field,week,watch,LoginName,contact);
		ActionContext context=ActionContext.getContext();
        Map session=(Map)context.getSession();
        id1=(Integer) list.get(0);
        
		
        if(id1==id)
        {
        	return "success";
        }
        else
        {
        	id1=(Integer) list.get(0);
        	id2=(Integer) list.get(1);
            id3=(Integer) list.get(2);
            a=id1+"";
            b=id2+"";
            c=id3+"";
            session.put("id1",a);
            session.put("id2",b);
            session.put("id3",c);
            session.put("fuck",id);
        }
        return "failure";
        
        
       
		
	}
	
	
    public void setField(int field)
    {
        this.field=field;
    }
    public int getField()
    {
        return field;
    }
    public void setWatch(int watch)
    {
    	this.watch=watch;
    }
    public int getWatch()
    {
    	return watch;
    }
    public void setWeek(int week)
   	{
   	    this.week=week;
   	}
   	public int getWeek()
   	{
   	    return week;
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

/*
public class reserve
{
	public static void main(String args[])
	{
		int flag=0;
	int id=1108,watch=8,field=1,week=1,id1,id2,id3;
	String LoginName=null,contact=null;
	
		
		id=1000*field+100*week+watch;
		system check=new system();
		ArrayList list=check.check_reserve(id,field,week,watch,LoginName,contact);
	    
		
        id1=(Integer) list.get(0);
        id2=(Integer) list.get(1);
        id3=(Integer) list.get(2);
        System.out.println(id3);
        
       
		
	}

	
}*/