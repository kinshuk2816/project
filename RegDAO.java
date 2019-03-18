package login;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class RegDAO {

	
public void addreg(int user,String name,String email,int age,String place) {
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		
		Session session=factory.openSession();
		
		Transaction tx1=session.beginTransaction();
		
		registration rega=new registration();
        rega.setUser(user);
		rega.setName(name);
		rega.setEmail(email);
		rega.setAge(age);
		rega.setPlace(place);
		
		session.save(rega);
		tx1.commit();
		session.close();
		
		
	}
	
	
	

	
}
