package dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.wcy.dao.MenuDao;
import com.wcy.entity.Menu;
import com.wcy.entity.Role;
import com.wcy.entity.User;

import common.BaseAbstractTest;

public class MenuDaoTest extends BaseAbstractTest {
	@Autowired
	private MenuDao menuDao;
	
	@Test
	public void testFindMenusByLogin() throws Exception {
		User user = new User();
		user.setLoginName("xxx");
		user.setLoginPassword("yyy");
		user.setStatus(0);
		
		Role role = new Role();
		role.setId(1);
		Set<Role> roles = new HashSet<Role>();
		roles.add(role);
		user.setRoles(roles);
		
		List<Menu> menu = menuDao.findMenuByLogin(user);
		System.out.println("------------------");
		System.out.println(menu);
		System.out.println("------------------");
	}
	
}
