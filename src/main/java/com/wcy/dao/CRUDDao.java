package com.wcy.dao;

import com.wcy.entity.CRUDEntity;

public interface CRUDDao {
    void save(CRUDEntity entity);

    CRUDEntity get(int id);

    void update(CRUDEntity entity);
}
