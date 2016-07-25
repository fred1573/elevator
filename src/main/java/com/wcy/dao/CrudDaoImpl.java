package com.wcy.dao;

import com.wcy.core.orm.HibernateDao;
import com.wcy.entity.CRUDEntity;
import com.wcy.entity.User;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

@Repository("crudDao")
public class CrudDaoImpl extends HibernateDao<User, Integer> implements CRUDDao {


    @Override
    public void save(CRUDEntity entity) {
        getSessionFactory().openSession().save(entity);
    }

    @Override
    public CRUDEntity get(int id) {
        return (CRUDEntity) getSessionFactory().openSession().get(CRUDEntity.class, id);
    }

    @Override
    public void update(CRUDEntity entity) {
        Session session = getSessionFactory().openSession();
        session.update(entity);
        session.flush();
    }
}
