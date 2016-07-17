package com.wcy.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wcy.core.orm.HibernateDao;
import com.wcy.dao.MenuDao;
import com.wcy.entity.Menu;
import com.wcy.entity.User;
import com.wcy.service.MenuService;

@Repository("menuDao")
public class MenuDaoImpl extends HibernateDao<Menu, Integer> implements MenuDao {

	@Override
	public List<Menu> findMenuByLogin(User user) {
		String hql = "select distinct m from User o join o.roles r join r.menus m where o.id=?";
		return find(hql, user.getId());
	}

}
