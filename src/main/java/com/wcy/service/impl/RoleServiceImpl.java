package com.wcy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.wcy.dao.RoleDao;
import com.wcy.entity.Role;
import com.wcy.service.RoleService;

public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;

	/**
	 * 添加或保存角色
	 */
	@Override
	public void save(Role role) {
		roleDao.save(role);
	}

	/**
	 * 删除角色
	 */
	@Override
	public void delete(Integer id) {
		roleDao.delete(id);
	}

	/**
	 * 查询角色
	 */
	@Override
	public Role get(Integer id) {
		return roleDao.get(id);
	}
	

}
