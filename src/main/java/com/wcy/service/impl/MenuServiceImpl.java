package com.wcy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wcy.dao.MenuDao;
import com.wcy.entity.Menu;
import com.wcy.entity.User;
import com.wcy.service.MenuService;
/**
 * 菜单服务类
 */
@Service
@Transactional
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menuDao;
	
	/**
	 * 通过登陆人查询菜单
	 */
	@Override
	public List<Menu> findMenuByLogin(User user) {
		return menuDao.findMenuByLogin(user);
	}

}
