package com.parkingsystem.models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;

import javax.persistence.OneToMany;
                                        
@Entity
public class UserDetails {

	
//	@GeneratedValue(strategy = GenerationType.AUTO)
//	private int id;
	@Id
	private String UserName;
	private String Password;
	private String Uname;
	private String Ucity;
	private String Ustate;
	private int Pincode;
	private String Uaddr;
	private String Uemail;
	private long  Umob;
	private String Utype;
	private boolean status;
	
	@OneToMany
	private Set<LocationDet> det;
	@OneToMany
	private Set<BookingDet> bdet;
	@OneToMany
	private Set<VehicleDet> vdet;
	
	
	public Set<BookingDet> getBdet() {
		return bdet;
	}
	public void setBdet(Set<BookingDet> bdet) {
		this.bdet = bdet;
	}
	public Set<LocationDet> getDet() {
		return det;
	}
	public void setDet(Set<LocationDet> det) {
		this.det = det;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
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
	
	public int getPincode() {
		return Pincode;
	}
	public void setPincode(int pincode) {
		Pincode = pincode;
	}
	public String getUaddr() {
		return Uaddr;
	}
	public void setUaddr(String uaddr) {
		Uaddr = uaddr;
	}
	public String getUemail() {
		return Uemail;
	}
	public void setUemail(String uemail) {
		Uemail = uemail;
	}
	public long getUmob() {
		return Umob;
	}
	public void setUmob(long umob) {
		Umob = umob;
	}

	public String getUtype() {
		return Utype;
	}
	public void setUtype(String utype) {
		Utype = utype;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Set<VehicleDet> getVdet() {
		return vdet;
	}
	public void setVdet(Set<VehicleDet> vdet) {
		this.vdet = vdet;
	}
	@Override
	public String toString() {
		return "UserDetails [UserName=" + UserName + ", Password=" + Password + ", Uname=" + Uname + ", Ucity=" + Ucity
				+ ", Ustate=" + Ustate + ", Pincode=" + Pincode + ", Uaddr=" + Uaddr + ", Uemail=" + Uemail + ", Umob="
				+ Umob + ", Utype=" + Utype + ", status=" + status + ", det=" + det + "]";
	}
	
}
