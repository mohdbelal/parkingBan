package com.parkingsystem.dao;

import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.parkingsystem.models.BookingDet;
import com.parkingsystem.models.LocationDet;
import com.parkingsystem.models.LoginDetail;
import com.parkingsystem.models.LotDetails;
import com.parkingsystem.models.UploadFile;
import com.parkingsystem.models.UserDetails;
import com.parkingsystem.models.VehicleDet;


@Component
public class UserDao {

	@PersistenceContext
	private EntityManager em;
	
	
	//updated code for view all users
		public List<UserDetails> findallUsers()
		{
			System.out.println("InviewallusersDao");

			Query qr=em.createQuery("select vu from  UserDetails vu where vu.Utype =:utype");
			qr.setParameter("utype","user");
			List<UserDetails> udetails=(List<UserDetails>)qr.getResultList();
			
			return udetails;
			
		}
		public List<UserDetails> findallOwners() {
			// TODO Auto-generated method stub
			System.out.println("InviewallownersDao");

			Query qr=em.createQuery("select vu from  UserDetails vu where vu.Utype =:utype and vu.status =:a");
			qr.setParameter("utype","owner");
			qr.setParameter("a", true);
			List<UserDetails> udetails=(List<UserDetails>)qr.getResultList();
			
			return udetails;
			
		}
		//updated code for view all users
			public List<BookingDet> findallUsersBooking(String username)
			{
				System.out.println("InviewallusersBookingDao");
				System.out.println("In find user dao"+username);
				Query qr=em.createQuery("select bd from  BookingDet bd where bd.bdet.UserName =:uname and bd.status =:ss");
				qr.setParameter("uname",username);
				qr.setParameter("ss", false);
				List<BookingDet> bdetails=(List<BookingDet>)qr.getResultList();
				
				return bdetails;
				
			}
			//updated code for view all owers
			public List<LocationDet> findallOwnersBooking(String username) {
				// TODO Auto-generated method stub
				System.out.println("InviewallownersBookingDao");
				System.out.println("In find owner dao"+username);
				Query qr=em.createQuery("select ld from  LocationDet ld where ld.details.UserName =:uname");
				qr.setParameter("uname",username);
				List<LocationDet> ldetails=(List<LocationDet>)qr.getResultList();
				
				return ldetails;
			}
			
			public UserDetails findByUname(String Uname) {
				
				UserDetails udet= em.find(UserDetails.class, Uname);
				
				return udet;
			}
			
	@Transactional
	public void add(UserDetails userDet) {	
		em.persist(userDet);
	}

	@Transactional
	public void addLocation(LocationDet locationDet) {
		em.persist(locationDet);
	}
	
	public UserDetails find(LoginDetail detail)
	{
		UserDetails user=em.find(UserDetails.class,detail.getUserName());
		return user;
	}
	
	public LocationDet findLoc(int no)
	{
		LocationDet det = em.find(LocationDet.class, no);
		return det;
	}
	
	public UserDetails findUser(UserDetails detail)
	{
		UserDetails user=em.find(UserDetails.class,detail.getUserName());
		return user;
	}
	
	public String validateUser(LoginDetail loginDetail)
	{  
		
		UserDetails ld=em.find(UserDetails.class,loginDetail.getUserName());
		//ld.gettype -- owner / user
		System.out.println(loginDetail.getUserName()+" "+loginDetail.getPassword());

		if(loginDetail.getUserName().equals(ld.getUserName()) && loginDetail.getPassword().equals(ld.getPassword()))
		{
			System.out.println(ld.getUserName()+" "+ld.getPassword());
			System.out.println("Login succesfull");
			return ld.getUtype();
		}
		else
		{
			System.out.println(ld.getUserName()+" "+ld.getPassword());

			System.out.println("unsuccesfull");
			return "false";
		}
	}
	
	@Transactional
	public List<LocationDet> FindParking(int pinc) {
		//System.out.println("InDao");
	//	Set<LocationDet> location=(Set<LocationDet>)
		System.out.println(pinc);
				Query qr = em.createQuery("select ld from LocationDet ld where ld.Pincode=:pin ");
				qr.setParameter("pin",pinc);
				List<LocationDet> location=(List<LocationDet>)qr.getResultList();
				System.out.println("array"+location);
		return location;
		
	}

	@Transactional
	public void uploadFile(UploadFile file) {
		em.persist(file);
	}

	@Transactional
	public void addBookDetail(BookingDet bookDet) {
		// TODO Auto-generated method stub
		em.persist(bookDet);		
	}
	
	public List<LocationDet> findOwner(LoginDetail detail)
	{
		System.out.println("InFindOwnerDao");
	//	UserDetails udet=em.find(UserDetails.class,detail.getUserName());
		Query qr=em.createQuery("select ld from  LocationDet ld where ld.details.UserName =:name");
		qr.setParameter("name",detail.getUserName());
		List<LocationDet> location=(List<LocationDet>)qr.getResultList();
		return location;
		
	}

	public List<BookingDet> findBooking(int no) {
		// TODO Auto-generated method stub
	//	System.out.println("In findBooking"+no);
		Query qr=em.createQuery("select ld from  BookingDet ld where ld.locationDet.LandRegNo =:regno and ld.status=:c");
		qr.setParameter("regno",no);
		qr.setParameter("c",false);
		List<BookingDet> bkdet=(List<BookingDet>)qr.getResultList();
		return bkdet;
		
	}
	
	public BookingDet findBookingById(int no)
	{
		BookingDet bookingDet = em.find(BookingDet.class, no);
		return bookingDet;
	}
	
	public UserDetails findUser(String udetail)
	{
		UserDetails user=em.find(UserDetails.class,udetail);
		return user;
	}
	
	@Transactional
	public void updateStatus(UserDetails udetail) {
		
		udetail.setStatus(true);
		em.merge(udetail);
		
		
	}
	@Transactional
	public void addVehicleDb(VehicleDet det) {
		
		em.persist(det);
		// TODO Auto-generated method stub
		
	}

	public List<BookingDet> getAllBookings(int landRegNo) {
		
		Query qr=em.createQuery("select ld from  BookingDet ld where ld.locationDet.LandRegNo =:regno");
		qr.setParameter("regno",landRegNo);
		
		List<BookingDet> bkdet=(List<BookingDet>)qr.getResultList();
		return bkdet;
	}

	public List<VehicleDet> findVehicle(String userName) {
		// TODO Auto-generated method stub
		Query qr=em.createQuery("select ld from  VehicleDet ld where ld.det.UserName =:regno");
		qr.setParameter("regno",userName);
		List<VehicleDet> det = (List<VehicleDet>)qr.getResultList();
		return det;
	}

	@Transactional
	public void addLotDet(LotDetails details) {
		// TODO Auto-generated method stub
		em.persist(details);
	}
	public BookingDet findBookingbyId(int bid) {
		// TODO Auto-generated method stub
		BookingDet det = em.find(BookingDet.class, bid);
		return det;
	}
	@Transactional
	public void removeBooking(int bid) {
		// TODO Auto-generated method stub
		BookingDet bdet = em.find(BookingDet.class, bid);
		em.remove(bdet);
	}

	public List<UploadFile> showImages(String username) {
		
		
		Query qr=em.createQuery("select uf from  UploadFile uf where uf.details.UserName =:un");
		qr.setParameter("un",username);
		List<UploadFile>ab =(List<UploadFile>) qr.getResultList();
		System.out.println("ab"+ab);
	
	
	//List<BookingDet> bkdet=(List<BookingDet>)qr.getResultList();
	return ab;
}
public List<UserDetails> showownersForImages() {
	// TODO Auto-generated method stub
	Query qr= em.createQuery("select ud from UserDetails ud where ud.status=:sts ");
	qr.setParameter("sts",false);
	List<UserDetails> ownerdetails=(List<UserDetails>)qr.getResultList();
	System.out.println("array"+ownerdetails);
	return ownerdetails;

	
}

@Transactional
public void updateBooking(BookingDet bookingDet) {
	// TODO Auto-generated method stub
	em.merge(bookingDet);
	
}
public int findAllBooking(LocationDet locdetail) {
	
	Query qr= em.createQuery("select bd from BookingDet bd where bd.locationDet.LandRegNo=:lrno and bd.status=:c ");
	qr.setParameter("lrno",locdetail.getLandRegNo());
	qr.setParameter("c",false);
	
	List<BookingDet> bookingDets = qr.getResultList();
	return bookingDets.size();
}
public List<BookingDet> showOldBook() {
	// TODO Auto-generated method stub
	
	Query qr= em.createQuery("select bd from BookingDet bd where bd.status =:a ");
	qr.setParameter("a",true);
	
	List<BookingDet> bookingDets = qr.getResultList();
	
	return bookingDets;
}

}
