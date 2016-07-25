package com.wcy.service;

import com.wcy.dao.CRUDDao;
import com.wcy.entity.CRUDEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
 * Created by Frd on 2016/7/21.
 */
@Service
@Transactional
public class CrudServiceImpl implements CrudService {

    @Autowired
    private CRUDDao crudDao;

    @Override
    public void save(CRUDEntity entity) {
        crudDao.save(entity);
    }
}
