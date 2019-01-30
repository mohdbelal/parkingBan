package com.parkingsystem.models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class LotDetails {

	@Id
	private int id;
	
	private int fourv;
	private int twov;
	private int lotNo;
	
	@ManyToOne
	@JoinColumn(name="LandRegNo")
	private LocationDet det;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getFourv() {
		return fourv;
	}

	public void setFourv(int fourv) {
		this.fourv = fourv;
	}

	public int getTwov() {
		return twov;
	}

	public void setTwov(int twov) {
		this.twov = twov;
	}

	public LocationDet getDet() {
		return det;
	}

	public void setDet(LocationDet det) {
		this.det = det;
	}

	public int getLotNo() {
		return lotNo;
	}

	public void setLotNo(int lotNo) {
		this.lotNo = lotNo;
	}

	@Override
	public String toString() {
		return "LotDetails [id=" + id + ", fourv=" + fourv + ", twov=" + twov + ", lotNo=" + lotNo + ", det=" + det
				+ "]";
	}

	
	
	
}
