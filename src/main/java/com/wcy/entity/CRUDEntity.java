package com.wcy.entity;

import javax.persistence.*;

/**
 * Created by Frd on 2016/7/21.
 */
@Entity
@Table(name = "crud")
public class CRUDEntity {

    private int id;
    private String f1;
    private String f2;

    public CRUDEntity() {
    }

    public CRUDEntity(String f1, String f2) {
        this.f1 = f1;
        this.f2 = f2;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "f1")
    public String getF1() {
        return f1;
    }

    public void setF1(String f1) {
        this.f1 = f1;
    }

    @Column(name = "f2")
    public String getF2() {
        return f2;
    }

    public void setF2(String f2) {
        this.f2 = f2;
    }
}
