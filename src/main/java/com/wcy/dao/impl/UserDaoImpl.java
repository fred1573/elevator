package com.wcy.dao.impl;

import org.springframework.stereotype.Repository;

import com.wcy.core.orm.HibernateDao;
import com.wcy.dao.UserDao;
import com.wcy.entity.User;

@Repository("userDao")
public class UserDaoImpl extends HibernateDao<User, Integer> implements UserDao {

}
