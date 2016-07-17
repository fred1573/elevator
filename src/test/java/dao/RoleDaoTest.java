package dao;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.annotation.Rollback;

import com.wcy.dao.RoleDao;
import com.wcy.entity.Role;

import common.BaseAbstractTest;

public class RoleDaoTest extends BaseAbstractTest {
	@Autowired
	private RoleDao roleDao;

	private Role role;

	/**
	 * 方法描述:初始化数据
	 */
//	@Before
	public void init() {
//		role = new Role();
//		 role.setId(1);
//		role.setName("超级管xxx理员");
	}

	@Test
	// @Rollback(true)
	public void testInsert() throws Exception {
//		roleDao.save(role);
//		Role role2 = roleDao.get(1);
//		Role role = new Role();
//		role.setId(1);
//		roleDao.delete(role);
		roleDao.delete(1);
	}

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"/spring/applicationContext.xml");
		RoleDao roleDao = (RoleDao) ctx.getBean("roleDao");
//		Role role =	roleDao.get(1);
//		role.setId(1);
		Role r1 = new Role();
		r1.setId(1);
		r1.setName("超1");
		roleDao.save(r1);
	}
}
