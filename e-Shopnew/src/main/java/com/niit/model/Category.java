package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Category {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	public String catid;
	
	@Column
	public String catname;
	
	@Column
	public String catdes;

	public String getCatid() {
		return catid;
	}

	public void setCatid(String catid) {
		this.catid = catid;
	}

	public String getCatname() {
		return catname;
	}

	public void setCatname(String catname) {
		this.catname = catname;
	}

	public String getCatdes() {
		return catdes;
	}

	public void setCatdes(String catdes) {
		this.catdes = catdes;
	}

    
}
