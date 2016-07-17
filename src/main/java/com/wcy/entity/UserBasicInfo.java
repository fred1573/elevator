package com.wcy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 用户基本信息
 */
@Entity
@Table(name = "ele_user_basic_info")
public class UserBasicInfo {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private Integer age;
	private String email;

	@ManyToOne()
	@JoinColumn(name = "department_id")
	private Department department;

	private Integer status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "UserBasicInfo [id=" + id + ", name=" + name + ", age=" + age
				+ ", email=" + email + ", department=" + department
				+ ", status=" + status + "]";
	}

}
