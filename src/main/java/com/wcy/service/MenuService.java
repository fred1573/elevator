package com.wcy.service;

import java.util.List;

import com.wcy.entity.Menu;
import com.wcy.entity.User;

public interface MenuService {
	List<Menu> findMenuByLogin(User user);
}
