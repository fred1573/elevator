package com.wcy.service.impl;

import com.wcy.dao.EmployeDao;
import com.wcy.entity.Employe;
import com.wcy.service.EmployeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * Created by frd on 2016/5/29.
 */
@Service("employeService")
@Transactional
public class EmployeServiceImpl implements EmployeService {

    @Autowired
    private EmployeDao employeDao;

    @Override
    public void register(Employe employe) {
        employeDao.add(employe);
    }
}
