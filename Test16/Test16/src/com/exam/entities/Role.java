package com.exam.entities;

import java.util.HashSet;
import java.util.Set;

/**
 * 角色
 */
public class Role {
	
	private int rid; //编号
	private String roleName;//角色名字
	
	private Set<Module> modules;
	
	private boolean checked;
	

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Set<Module> getModules() {
		if(modules==null){
			modules=new HashSet<Module>();
		}
		return modules;
	}

	public void setModules(Set<Module> modules) {
		this.modules = modules;
	}

	public boolean getChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	
	
}
