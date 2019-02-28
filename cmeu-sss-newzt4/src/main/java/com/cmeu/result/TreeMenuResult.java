package com.cmeu.result;

import java.util.ArrayList;
import java.util.List;

import com.cmeu.pojo.Permission;

public class TreeMenuResult {
	private Permission menu;
	private List<TreeMenuResult> nodes;
	
	public Permission getMenu() {
		return menu;
	}
	public void setMenu(Permission menu) {
		this.menu = menu;
	}
	public List<TreeMenuResult> getNodes() {
		if(this.nodes==null) {
			this.nodes = new ArrayList<TreeMenuResult>();
		}
		return this.nodes;
	}
	public void setNodes(List<TreeMenuResult> nodes) {
		this.nodes = nodes;
	}
	@Override
	public String toString() {
		return "TreeMenuResult {menu=" + menu + ", nodes=" + nodes + "}";
	}
}
