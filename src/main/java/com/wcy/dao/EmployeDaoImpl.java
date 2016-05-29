package com.wcy.dao;

import com.wcy.core.orm.HibernateDao;
import com.wcy.entity.Employe;
import org.springframework.stereotype.Repository;

/**
 * Created by frd on 2016/5/29.
 */
@Repository("employeDao")
public class EmployeDaoImpl extends HibernateDao<Employe, Long> implements EmployeDao {

    @Override
    public void add(Employe employe) {
        save(employe);
    }
}
