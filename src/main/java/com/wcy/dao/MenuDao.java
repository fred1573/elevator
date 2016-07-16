package com.wcy.dao;

import java.util.List;

import com.wcy.entity.Menu;
import com.wcy.entity.User;

public interface MenuDao {
	List<Menu> findMenuByLogin(User user);
}
