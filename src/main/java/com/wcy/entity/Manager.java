package com.wcy.entity;

import javax.persistence.*;

/**
 * 经理
 * Created by frd on 2016/5/29.
 */
@Entity
@Table(name = "manager")
public class Manager {

    private long id;
    private String name;
    //    private Role role;
//    private String phone;
    private String email;
    private boolean valid = true;

    public Manager(String name, String email) {
        this.name = name;
        this.email = email;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }
}
