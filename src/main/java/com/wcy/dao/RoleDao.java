package com.wcy.dao;

import com.wcy.entity.Role;

public interface RoleDao {
	void save(Role role);

	void delete(Integer id);

	Role get(Integer id);
}
