package com.parkingsystem.models;



import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


@Entity
public class LocationDet {

	@Id
	private int LandRegNo;
	private String PlotNo;
	private String Area;
	private String Ucity;
	private String Ustate;
	private String LandMark;
	private float LandSize;
	private int ParkingFee;
	private int Pincode;
	
	private int space;

	
	
	@ManyToOne
	@JoinColumn(name="UserName")
	private UserDetails details;
	
	@OneToMany
	private Set<BookingDet> set;
	
	@OneToMany
	private Set<LotDetails> ldet;
	
	public Set<BookingDet> getSet() {
		return set;
	}
	public void setSet(Set<BookingDet> set) {
		this.set = set;
	}
	public int getLandRegNo() {
		return LandRegNo;
	}
	public void setLandRegNo(int landRegNo) {
		LandRegNo = landRegNo;
	}
	public float getLandSize() {
		return LandSize;
	}
	public void setLandSize(float landSize) {
		LandSize = landSize;
	}
	public String getPlotNo() {
		return PlotNo;
	}
	public void setPlotNo(String plotNo) {
		PlotNo = plotNo;
	}
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		Area = area;
	}
	public String getUcity() {
		return Ucity;
	}
	public void setUcity(String ucity) {
		Ucity = ucity;
	}
	public String getUstate() {
		return Ustate;
	}
	public void setUstate(String ustate) {
		Ustate = ustate;
	}
	public String getLandMark() {
		return LandMark;
	}
	public void setLandMark(String landMark) {
		LandMark = landMark;
	}
	public int getPincode() {
		return Pincode;
	}
	public void setPincode(int pincode) {
		Pincode = pincode;
	}	
	public UserDetails getDetails() {
		return details;
	}
	public void setDetails(UserDetails details) {
		this.details = details;
	}
	public int getParkingFee() {
		return ParkingFee;
	}
	public void setParkingFee(int parkingFee) {
		ParkingFee = parkingFee;
	}
	public int getSpace() {
		return space;
	}
	public void setSpace(int space) {
		this.space = space;
	}
	public Set<LotDetails> getLdet() {
		return ldet;
	}
	public void setLdet(Set<LotDetails> ldet) {
		this.ldet = ldet;
	}
	@Override
	public String toString() {
		return "LocationDet [LandRegNo=" + LandRegNo + ", PlotNo=" + PlotNo + ", Area=" + Area + ", Ucity=" + Ucity
				+ ", Ustate=" + Ustate + ", LandMark=" + LandMark + ", LandSize=" + LandSize + ", ParkingFee="
				+ ParkingFee + ", Pincode=" + Pincode + ", space=" + space + ", details=" + details + ", set=" + set
				+ ", ldet=" + ldet + "]";
	}

}
