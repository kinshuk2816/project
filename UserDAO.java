package login;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class UserDAO {

	
	
	public static boolean adduser(int name,String password) {
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		
		Session session=factory.openSession();
		
		Transaction tx=session.beginTransaction();
		Hibernate checkobject=session.get(Hibernate.class, name);
	
		if(checkobject==null) {
				Hibernate Login=new	Hibernate();
		Login.setUsername(name);
		Login.setPassword(password);
		
		session.save(Login);
		tx.commit();
		session.close();
		return true;
		
	}else {
		return false;
	}
	}
	
	
}
