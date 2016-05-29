import com.wcy.entity.Employe;
import com.wcy.service.EmployeService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * test
 * Created by frd on 2016/5/29.
 */
public class UserServiceTest {

    public static void main(String[] args) {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("/spring/applicationContext.xml");
        EmployeService employeService = (EmployeService)ctx.getBean("employeService");
        employeService.register(new Employe("zsl", "glove1573@gmail.com"));
    }
}
