package com.parkingsystem.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class VehicleDet {

	@Id
	private int Vid;
	private String Rnum;
	private String Vtype;
	
	@ManyToOne
	@JoinColumn(name="UserName")
	private UserDetails det;
	
	
	public UserDetails getDetails() {
		return det;
	}

	public void setDetails(UserDetails details) {
		this.det = details;
	}

	public int getVid() {
		return Vid;
	}

	public void setVid(int vid) {
		Vid = vid;
	}


	public String getRnum() {
		return Rnum;
	}

	public void setRnum(String rnum) {
		Rnum = rnum;
	}

	public UserDetails getDet() {
		return det;
	}

	public void setDet(UserDetails det) {
		this.det = det;
	}

	public String getVtype() {
		return Vtype;
	}

	public void setVtype(String vtype) {
		Vtype = vtype;
	}

	@Override
	public String toString() {
		return "VehicleDet [Vid=" + Vid + ", Rnum=" + Rnum + ", Vtype=" + Vtype + ", det=" + det + "]";
	}

	
	
}
