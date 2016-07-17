package com.wcy.dao.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.wcy.core.orm.HibernateDao;
import com.wcy.dao.RoleDao;
import com.wcy.entity.Role;

@Repository("roleDao")
@Transactional
public class RoleDaoImpl extends HibernateDao<Role, Integer> implements RoleDao {
	@Override
	public void save(Role entity) {
		super.save(entity);
	}
	
	@Override
	public void delete(Integer id) {
		super.delete(id);
	}
	
	@Override
	public void delete(Role entity) {
		super.delete(entity);
	}
}
