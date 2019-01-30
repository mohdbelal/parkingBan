package com.parkingsystem.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class BookingDet {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int BookingId;
	
	private String CheckinTime;
	private String CheckinDate;
	private int Time;
	private boolean PayStatus;
	private boolean status;
	private int lotno;


	@ManyToOne
	@JoinColumn(name="LandRegNo")
	private LocationDet locationDet;
	
	@ManyToOne
	@JoinColumn(name="UserName")
	private UserDetails bdet;
	
	public UserDetails getBdet() {
		return bdet;
	}

	public void setBdet(UserDetails bdet) {
		this.bdet = bdet;
	}

	public int getBookingId() {
		return BookingId;
	}

	public void setBookingId(int bookingId) {
		BookingId = bookingId;
	}


	public String getCheckinTime() {
		return CheckinTime;
	}

	public void setCheckinTime(String checkinTime) {
		CheckinTime = checkinTime;
	}

	public String getCheckinDate() {
		return CheckinDate;
	}

	public void setCheckinDate(String checkinDate) {
		CheckinDate = checkinDate;
	}

	public int getTime() {
		return Time;
	}

	public void setTime(int time) {
		Time = time;
	}

	public boolean isPayStatus() {
		return PayStatus;
	}

	public void setPayStatus(boolean payStatus) {
		PayStatus = payStatus;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	

	public LocationDet getLocationDet() {
		return locationDet;
	}

	public void setLocationDet(LocationDet locationDet) {
		this.locationDet = locationDet;
	}

	
	
	public int getLotno() {
		return lotno;
	}

	public void setLotno(int lotno) {
		this.lotno = lotno;
	}
	@Override
	public String toString() {
		return "BookingDet [BookingId=" + BookingId + ", CheckinTime=" + CheckinTime + ", CheckinDate=" + CheckinDate
				+ ", Time=" + Time + ", PayStatus=" + PayStatus + ", status=" + status + ", locationDet=" + locationDet
				+ ", bdet=" + bdet + "]";
	}

	


}
