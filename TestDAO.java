package login;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;



public class TestDAO {

	   public static void  Displayparticular() { 
		    
			SessionFactory factory=HibernateUtil.getSessionFactory();
			
			
			Session session=factory.openSession();
			
	    	List bookList=	session.createQuery("from registration ").list();
	    	
	    	Iterator itr=bookList.iterator();
	    	
	    	 while (itr.hasNext()) 
	            System.out.println(itr.next()); 

	          session.close();
	    
	    
	    
	    }
	   public List<registration>  getUsers() {
			
			List<registration>  users = new ArrayList<registration> ();
			SessionFactory factory = HibernateUtil.getSessionFactory();

			Session session = factory.openSession();
			
			users=session.createQuery("from registration").list();
			session.close();
				
			return users;
			
		}
	   
	 
		   
	   
	   
	   
	 
	   
	   
	   
	   
	   
	   
	   
	   
	}
		

