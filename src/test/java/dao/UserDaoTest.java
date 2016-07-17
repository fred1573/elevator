package dao;

import java.util.HashSet;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;

import com.wcy.dao.UserBasicInfoDao;
import com.wcy.dao.UserDao;
import com.wcy.entity.Role;
import com.wcy.entity.User;
import com.wcy.entity.UserBasicInfo;
import common.BaseAbstractTest;

public class UserDaoTest extends BaseAbstractTest {
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private UserBasicInfoDao userBasicInfoDao;
	
	private User user;
	
	private UserBasicInfo userBasicInfo;
	
	@Before
	public void init(){
		user = new User();
		user.setLoginName("admin");
		user.setLoginPassword("123456");
		user.setStatus(1);
		user.setLastLoginTime("2016-7-12");
		
		Role role = new Role();
		role.setId(1);
		Set<Role> roles = new HashSet<Role>();
		roles.add(role);
		user.setRoles(roles);
		
		userBasicInfo = new UserBasicInfo();
		userBasicInfo.setName("张三");
		userBasicInfo.setAge(25);
		userBasicInfo.setEmail("zhangsan@163.com");
		userBasicInfo.setStatus(1);
		
		user.setUserBasicInfo(userBasicInfo);
	}
	
	@Test
	@Rollback(true)
	public void testSave() throws Exception {
		userBasicInfoDao.save(userBasicInfo);
		userDao.save(user);
	}
	
}
