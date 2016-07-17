package common;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

@ContextConfiguration(locations = {"classpath*:spring/applicationContext.xml"})
@TransactionConfiguration(defaultRollback = true)
@Transactional
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)  
//@ActiveProfiles("test")  
public abstract class BaseAbstractTest extends AbstractTransactionalJUnit4SpringContextTests  {

}
