package com.wcy.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="ele_resource")
public class Resource {
	@Id
	@GeneratedValue
	private Long id;

	private String name;
	
	private String url;
	public Resource(String name, String url) {
		this.name = name;
		this.url = url;
	}
	
	@OneToOne(mappedBy="resource",cascade = CascadeType.ALL,orphanRemoval=true)
	private Permission permission;
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Permission getPermission() {
		return permission;
	}

	public void setPermission(Permission permission) {
		this.permission = permission;
	}

	@Override
	public String toString() {
		return "Resource [id=" + id + ", name=" + name + ", url=" + url + "]";
	}
	
}
