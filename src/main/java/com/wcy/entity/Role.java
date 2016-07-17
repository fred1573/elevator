package com.wcy.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ele_role")
public class Role {
	@Id
	@GeneratedValue
	private Integer id;

	private String name;
	
	@ManyToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "ele_role_permission", joinColumns = {@JoinColumn(name = "role_id", referencedColumnName = "id") }, 
		inverseJoinColumns = { @JoinColumn(name = "permission_id", referencedColumnName = "id") })
	private Set<Permission> permissions = new HashSet<Permission>();
	
	@ManyToMany(cascade = CascadeType.PERSIST)
	@JoinTable(name = "ele_role_menu", joinColumns = {@JoinColumn(name = "role_id", referencedColumnName = "id") }, 
		inverseJoinColumns = { @JoinColumn(name = "menu_id", referencedColumnName = "id") })
	private Set<Menu> menus = new HashSet<Menu>();
	
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

	public Set<Permission> getPermissions() {
		return permissions;
	}

	public void setPermissions(Set<Permission> permissions) {
		this.permissions = permissions;
	}

	public Set<Menu> getMenus() {
		return menus;
	}

	public void setMenus(Set<Menu> menus) {
		this.menus = menus;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", name=" + name + "]";
	}
	
}
