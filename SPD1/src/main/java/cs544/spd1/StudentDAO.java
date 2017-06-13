package cs544.spd1;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Adonai on 6/12/2017.
 */
public interface StudentDAO extends JpaRepository<Student, Long>
{

}
