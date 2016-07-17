package com.wcy.service;

import com.wcy.entity.Role;

public interface RoleService {
	void save(Role role);
	void delete(Integer id);
	Role get(Integer id);
}
