package com.wcy.web;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wcy.dao.UserDao;
import com.wcy.entity.Role;
import com.wcy.entity.User;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("")
	public String index(){
		return "index/index";
	}
	
	@RequestMapping("/getMenu")
	public String getMenu(){
		System.out.println("====================");
		User user = new User();
		user.setId(1);
		user.setLoginName("aaaaa");
		user.setLoginPassword("aaaa");
		user.setLastLoginTime("2016-7-16");
		user.setStatus(0);
		userDao.save(user);
		return null;
	}
}
