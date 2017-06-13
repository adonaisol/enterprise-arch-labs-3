package cs544.spd1;

import java.util.Collection;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
@Transactional(propagation=Propagation.REQUIRES_NEW)
public class StudentService {
	@Autowired
	private StudentDAO studentDAO;
	
	//private SessionFactory sf=HibernateUtil.getSessionFactory();

	public StudentService() {
		//studentDAO = new StudentDAO();
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW)
	public void add(Student student){
		//Transaction tx=sf.getCurrentSession().beginTransaction();
		
		studentDAO.save(student);
		//studentDAO.create(student);
	//	tx.commit();
	}

	@Transactional(readOnly = true)
	public Student getStudent(long studentid) {
		//Transaction tx=sf.getCurrentSession().beginTransaction();
		System.out.println("student id"+ studentid);
		System.out.println(studentDAO);
		Student st= studentDAO.findOne(studentid);
	//	Hibernate.initialize(st.getCourselist());
		//tx.commit();
		return st;
	}

	public void setStudentDAO(StudentDAO studentDAO){
		this.studentDAO = studentDAO;
	}
}
