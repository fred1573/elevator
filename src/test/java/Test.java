import com.wcy.dao.CRUDDao;
import com.wcy.entity.CRUDEntity;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Frd on 2016/7/21.
 */
public class Test {

    public static void main(String[] args) {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("/spring/applicationContext.xml");
        CRUDDao crudDao = (CRUDDao) ctx.getBean("crudDao");


        CRUDEntity entity = crudDao.get(2);
        entity.setF1("c");
        crudDao.update(entity);
//        System.out.println(entity.getF1());
    }
}
