package com.wcy.dao.impl;

import org.springframework.stereotype.Repository;

import com.wcy.core.orm.HibernateDao;
import com.wcy.dao.UserBasicInfoDao;
import com.wcy.entity.UserBasicInfo;

@Repository
public class UserBasicInfoDaoImpl extends HibernateDao<UserBasicInfo, Integer> implements UserBasicInfoDao {


}
