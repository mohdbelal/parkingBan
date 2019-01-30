package com.parkingsystem.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;


import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.parkingsystem.dao.UserDao;
import com.parkingsystem.models.BookingDet;
import com.parkingsystem.models.LocationDet;
import com.parkingsystem.models.LoginDetail;

import com.parkingsystem.models.UploadFile;
import com.parkingsystem.models.UserDetails;
import com.parkingsystem.models.VehicleDet;


@Controller
public class ParkingController {

	@Autowired
	UserDao dao;
	
	@Autowired
	private JavaMailSender sender;
	
	public static String uploaddir="C:\\Users\\labadmin\\Desktop\\Ravi\\Parking\\src\\main\\resources\\static\\docs";
	
	//commented and updated for admin viewallusers
			@RequestMapping(method=RequestMethod.POST,value="/viewallusers")
			public String Viewalluserdetails(HttpServletRequest request,ModelMap map)
			{
				System.out.println("in admin viewall users Parkingcontroller");
				//UserDetails details = new UserDetails();
			
				List<UserDetails> det = dao.findallUsers();
				System.out.println(det);
				map.put("listLoc", det);
				return "viewallusersDet";
			}
			//updated for admin viewallowners
			@RequestMapping(method=RequestMethod.POST,value="/viewallowners")
			public String Viewallownerdetails(HttpServletRequest request,ModelMap map)
			{
				System.out.println("in admin viewall owners Parkingcontroller");
				//UserDetails details = new UserDetails();
			
				List<UserDetails> det = dao.findallOwners();
				System.out.println(det);
				map.put("listLoc", det);
				return "viewallownerDet";
			}
					//commented and updated for admin viewallusersbookings
					@RequestMapping(method=RequestMethod.POST,value="/viewallusersbooking")
					public String Viewalluserbookingdetails(@RequestParam("username") String username,HttpServletRequest request,ModelMap map)
					{
						System.out.println("in admin viewall users Parkingcontroller");
						System.out.println(username);
					
						List<BookingDet> bookingdet = dao.findallUsersBooking(username);
						System.out.println(bookingdet);
						map.put("bookdet", bookingdet);
						
						return "viewallusersBookingDet";
					}
					//commented and updated for admin viewallownersbookings
					@RequestMapping(method=RequestMethod.POST,value="/viewallownersbooking")
					public String Viewallownerbookingdetails(@RequestParam("username") String username,HttpServletRequest request,ModelMap map)
					{
						System.out.println("in admin viewall users Parkingcontroller");
						System.out.println(username);
					
						List<LocationDet> locdet = dao.findallOwnersBooking(username);
						System.out.println(locdet);
						map.put("locdet", locdet);
						
						return "viewallownersBookingDet";
					}
		
		@RequestMapping(method=RequestMethod.POST,value="/addUserDet")
		public String add(UserDetails userDet,HttpServletRequest request, Model model) {
			System.out.println(userDet);
			if(userDet.getUtype().equals("owner"))
				userDet.setStatus(false);
			else
				userDet.setStatus(true);
			dao.add(userDet);	
			String a = userDet.getUtype();
			
			HttpSession session= request.getSession();
			session.setAttribute("userDet", userDet);
			model.addAttribute("userName", userDet.getUserName());
			
			if(a.equals("user"))
			{
			return "Vehicle";
			}
			else
			{
					return "LocationDet";
			}
		
		}
		
		
		@RequestMapping(value="/userLogin",method=RequestMethod.POST)
		public String validateUser(Model model,ModelMap map,LoginDetail loginDetail,HttpServletRequest request,HttpServletResponse response) throws IOException
		{
			String a =dao.validateUser(loginDetail);
			
			UserDetails details = dao.find(loginDetail);
			
			HttpSession session= request.getSession();
			session.setAttribute("users", loginDetail);
			session.setAttribute("ldet", details);
			model.addAttribute("userName", loginDetail.getUserName());
			
			
			if(a.equals("user"))
			{
				System.out.println("cookie user");
			return "UserHome";
			}
			else if(a.equals("owner")&& details.isStatus())
			{
				
				List<LocationDet> detaillist =(List<LocationDet>)dao.findOwner(loginDetail);;
				for(LocationDet locdetail:detaillist) {
					System.out.println(locdetail);
				}
				map.put("listLoc", detaillist);
				model.addAttribute("abc", loginDetail.getUserName());
				return "OwnerHome";
			}
			else
			{
				if(a.equals("admin")) {
					return "AdminHome";
				}
				else 
					return "UserLogin";
			}
		}
	
	
		
		
	@RequestMapping(value="/LocationDetails",method=RequestMethod.POST)
	public String addLocation(LocationDet locationDet,HttpServletRequest request) {
		HttpSession session= request.getSession();
		UserDetails detail = (UserDetails)session.getAttribute("userDet");
		//UserDetails user = dao.find(detail);
		locationDet.setDetails(detail);
		System.out.println(locationDet);
		dao.addLocation(locationDet);
		
		return "fileupload";
	}
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public String uploadfiles(Model model,@RequestParam("files") MultipartFile[] files,HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		UserDetails details = (UserDetails)session.getAttribute("userDet");
		System.out.println(details);
		
		UploadFile ufile = new UploadFile();
		
		StringBuilder filename=new StringBuilder();
		for(MultipartFile file:files) {
		Path filenamendpath=Paths.get(uploaddir,file.getOriginalFilename());
		filename.append("docs/"+file.getOriginalFilename());
		System.out.println(filename);
		try {
			Files.write(filenamendpath, file.getBytes());
			ufile.setPath(filename.toString());
			ufile.setDetails(details);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}
		model.addAttribute("msg", "upload success"+filename.toString());
		
		dao.uploadFile(ufile);
		return "HomePage";
	}
	

	
	
	@RequestMapping(method=RequestMethod.POST,value="/search")
	public String SearchPark(@RequestParam("searchPark")int pin,ModelMap map)
	{
		int Tspace,Uspace;
		System.out.println(pin);
		
		ArrayList<Integer> b = new ArrayList<Integer>();
		
	List<LocationDet> a =(List<LocationDet>)dao.FindParking(pin);
	
	for(LocationDet locdetail:a) {
		System.out.println(locdetail);
		
		Uspace = dao.findAllBooking(locdetail);
		
		System.out.println("Uspace : "+Uspace);
		
		Tspace = locdetail.getSpace() - Uspace;
		System.out.println(Tspace);
		b.add(Tspace);
		
	}
	
	map.put("listLoc", a);
	map.put("val", b);
	return "UserHome";
	}
	
	@RequestMapping(value="/mail")
	 public String sendMail(@RequestParam("email")String email,@RequestParam("comment")String cmmnt,@RequestParam("fname")String name) {
		    MimeMessage message = sender.createMimeMessage();
		    MimeMessageHelper helper = new MimeMessageHelper(message);
		    try 
		    {
		        helper.setTo("rmourya912@gmail.com");
		        helper.setText(name+" commented :- \""+cmmnt+"\" email :- "+email);
		        helper.setSubject("Comment!");
		    } catch (MessagingException e) 
		    {
		        e.printStackTrace();
		         return "unsucc";
		    }
		    sender.send(message);
		return "success!";
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/BookSlot")
	public String bookSlot(@RequestParam("landRegNo")int landRegNo,HttpServletRequest request,Model model)
	{
		HttpSession session = request.getSession();
		session.setAttribute("RegNo", landRegNo);
		System.out.println("In controller"+landRegNo);
		model.addAttribute("Reg",landRegNo);
		
		return "BookingDet";
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/addBookingDet")
	public String AddBookingDetails(BookingDet bookDet,@RequestParam("CheckinDate")String date,@RequestParam("CheckinTime") String d,@RequestParam("LeaveTime")int lT,HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Integer no = (Integer)session.getAttribute("RegNo");
		LoginDetail ldet = (LoginDetail)session.getAttribute("users");
		
		UserDetails Udetails = dao.find(ldet);
	
		
		bookDet.setCheckinDate(date);
		
		LocationDet det = dao.findLoc(no);
		
		UserDetails udet = det.getDetails();
		
		bookDet.setLocationDet(det);
		
		bookDet.setBdet(Udetails);
		
		bookDet.setCheckinTime(d);
		bookDet.setTime(lT);
		bookDet.setLotno(0);
		bookDet.setPayStatus(false);
		bookDet.setStatus(false);
		System.out.println(bookDet);
		
		dao.addBookDetail(bookDet);
		
		MimeMessage message = sender.createMimeMessage();
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	    try 
	    {
	        helper.setTo(udet.getUemail());
	        helper.setText("Hello"+udet.getUname()+", You have new booking at your location pincode : "+det.getPincode()+", Area : "+det.getArea()+", plot no. : "+det.getPlotNo()+" with checkin Time : "+bookDet.getCheckinTime()+", and Date : "+bookDet.getCheckinDate()+" for :"+bookDet.getTime()+"\n Thank You!!");
	        helper.setSubject("New Booking!");
	    } catch (MessagingException e) 
	    {
	        e.printStackTrace();
	         return "unsucc";
	    }
	    sender.send(message);
	    
	    model.addAttribute("msg", "Booking request Sent Successfully!!");
		return "UserHome";
	
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/ShowBookedParking")
	public String BookedParking(@RequestParam("landRegNo")int regno,HttpServletRequest request,ModelMap map)
	{
		System.out.println("InShowBookedParkingcontroller");
		
//		HttpSession session = request.getSession();
//		Integer no = (Integer)session.getAttribute("RegNo");
		
		System.out.println(regno);
		//LocationDet locdet = new LocationDet();
	
		List<BookingDet> det = dao.findBooking(regno);
		System.out.println(det);
		map.put("listLoc", det);
		return "ShowBookedDet";
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/verifyowners")
	public String showOwnersforImage(HttpServletRequest request,ModelMap map)
	{
		System.out.println("InShowImagecontroller");
		List<UserDetails> det = dao.showownersForImages();
		System.out.println(" abc "+det);
		map.put("listLoc", det);
		return "DisplayOwnerDocImage";
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/showImagesDocument")
	public String showImagesOfOwner(@RequestParam("userName") String username,HttpServletRequest request,ModelMap map)
	{
		System.out.println("InShowImagecontroller");
		List<UploadFile> det = dao.showImages(username);
		System.out.println(" abc "+det);
		map.put("listLoc", det);
		return "ShowImages";
	}
	
	@RequestMapping("/logout")
	public String logOut(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session=request.getSession();
		session.getAttribute("users");
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("username"))
				{
					System.out.println("a");
					cookie.setMaxAge(0);
				
				}
				if(cookie.getName().equals("password"))
				{
					System.out.println("b");
					cookie.setMaxAge(0);
				}
				 response.addCookie(cookie);
			}
		}
		session.invalidate();
		System.err.println("logout");
		return "UserLogin";
	}
	
	@RequestMapping("/addVehicle")
	public String addVehicle(VehicleDet det,HttpServletRequest request) 
	{
		HttpSession session = request.getSession();
		UserDetails details= (UserDetails)session.getAttribute("userDet");
		det.setDet(details);
		dao.addVehicleDb(det);
		return "HomePage";
	}
	
	@RequestMapping("/BookingComplete")
	public String bookingComplete(HttpServletRequest request) 
	{
		HttpSession session = request.getSession();
		BookingDet bookingDet = (BookingDet)session.getAttribute("bdet");
		
		LocationDet det = bookingDet.getLocationDet();
		System.out.println(det.getLandRegNo()+"  land");
	//	List<BookingDet> Lbooking = dao.getAllBookings(det.getLandRegNo());
		return "";
	}
	
	@RequestMapping("/AcceptPage")
	public String acceptPage(@RequestParam("bookingid") int bid,@RequestParam("landrgno")int lrno,@RequestParam("username")String uname,Model model,HttpServletRequest request)
	{
		UserDetails details = dao.findByUname(uname);
		LocationDet det = dao.findLoc(lrno);
		BookingDet bookingDet = dao.findBookingbyId(bid);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("udet", details);
		session.setAttribute("ldet", det);
		session.setAttribute("bookd", bookingDet);
		
		model.addAttribute("udetails", details);
		model.addAttribute("ldet", det);
		model.addAttribute("bookd", bookingDet);
		
		return "AcceptBook";
	}
	@RequestMapping(method=RequestMethod.POST,value="/AcceptOwner")
	public String acceptOwner(@RequestParam("UserName") String username,HttpServletRequest request,ModelMap map)
	{
		UserDetails udetail=dao.findUser(username);
		udetail.setStatus(true);
		dao.updateStatus(udetail);
		return "AdminHome";
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/RejectOwner")
	public String rejectOwner(@RequestParam("UserName") String username,HttpServletRequest request,ModelMap map)
	{
		UserDetails udetail=dao.findUser(username);
		udetail.setStatus(false);
		dao.updateStatus(udetail);
		return "AdminHome";
	}
	@RequestMapping("/AcceptBooking")
	public String acceptBooking(@RequestParam("lotno")int lotno,HttpServletRequest request,Model model)
	{
			HttpSession session = request.getSession();
			
			UserDetails details = (UserDetails) session.getAttribute("udet");
			LocationDet det = (LocationDet) session.getAttribute("ldet");
			BookingDet bookingDet = (BookingDet) session.getAttribute("bookd");
			
			bookingDet.setLotno(lotno);
			
			dao.updateBooking(bookingDet);
			
			MimeMessage message = sender.createMimeMessage();
		    MimeMessageHelper helper = new MimeMessageHelper(message);
		    try 
		    {
		        helper.setTo(details.getUemail());
		        helper.setText("Your Request is confirmed. You have been assigned parking lot no. :"+lotno+" At adress : "+det.getPlotNo()+","+det.getArea()+","+det.getUcity()+","+det.getLandMark()+" Pincode : "+det.getPincode());
		        helper.setSubject("Booking Details!");
		    } catch (MessagingException e) 
		    {
		        e.printStackTrace();
		         return "unsucc";
		    }
		    sender.send(message);
		    
		    model.addAttribute("msg", "Changes Saved Successfully!!");
		    
		return "SessLog";
		
	}
	
	@RequestMapping("/DenyBooking")
	public String denyBooking(@RequestParam("bookingid") int bid,@RequestParam("landrgno")int lrno,@RequestParam("username")String uname,Model model)
	{
		UserDetails details = dao.findByUname(uname);
		LocationDet det = dao.findLoc(lrno);
		//BookingDet bookingDet = dao.findBookingbyId(bid);
		
		dao.removeBooking(bid);
		
		MimeMessage message = sender.createMimeMessage();
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	    try 
	    {
	        helper.setTo(details.getUemail());
	        helper.setText("Your Booking has been declined for location : "+det.getPlotNo()+","+det.getArea()+","+det.getUcity()+""+det.getLandMark()+"Pincode : "+det.getPincode());
	        helper.setSubject("Booking Declined!");
	    } catch (MessagingException e) 
	    {
	        e.printStackTrace();
	         return "unsucc";
	    }
	    sender.send(message);
	    
	    model.addAttribute("msg", "Changes Saved Successfully!!");
	    
		return "SessLog";
	}
	
	@RequestMapping("/exitUser")
	public String exitUserSt(@RequestParam("id")int id,ModelMap map,HttpServletRequest request)
	{
		BookingDet bookingDet = dao.findBookingById(id);
		bookingDet.setStatus(true);
		
		dao.updateBooking(bookingDet);
		
		HttpSession session = request.getSession();
		LoginDetail loginDetail = (LoginDetail) session.getAttribute("users");
		UserDetails details = (UserDetails) session.getAttribute("ldet");
		
		List<LocationDet> detaillist =(List<LocationDet>)dao.findOwner(loginDetail);;
		for(LocationDet locdetail:detaillist) {
			System.out.println(locdetail);
		}
		map.put("listLoc", detaillist);
		
		return "OwnerHome";	
	}
	
	@RequestMapping("/showOldBooking")
	public String oldUserBooking(ModelMap map)
	{
		List<BookingDet> bookingDet = dao.showOldBook();
		map.put("bookdet",bookingDet);
		return "oldUser";
	}


	
	@RequestMapping("/changePayS")
	public String changePayment(@RequestParam("id")int id,ModelMap map,HttpServletRequest request)
	{
		BookingDet bookingDet = dao.findBookingbyId(id);
		bookingDet.setPayStatus(true);
		
		dao.updateBooking(bookingDet);
		
		map.put("bookdet",bookingDet);
		
		HttpSession session = request.getSession();
		LoginDetail loginDetail = (LoginDetail) session.getAttribute("users");
		UserDetails details = (UserDetails) session.getAttribute("ldet");
		
		List<LocationDet> detaillist =(List<LocationDet>)dao.findOwner(loginDetail);;
		for(LocationDet locdetail:detaillist) {
			System.out.println(locdetail);
		}
		map.put("listLoc", detaillist);
		
		return "OwnerHome";
	}
	
	@RequestMapping(value="/someExit")
	public String someExitPar(@RequestParam("landRegNo")int regno,HttpServletRequest request,ModelMap map)
	{
		System.out.println("InShowBookedParkingcontroller");
		
//		HttpSession session = request.getSession();
//		Integer no = (Integer)session.getAttribute("RegNo");
		
		System.out.println(regno);
		//LocationDet locdet = new LocationDet();
	
		List<BookingDet> det = dao.findBooking(regno);
		System.out.println(det);
		map.put("listLoc", det);
		return "UpdateStatus";
	}
	
	@RequestMapping("/SessLog")
	public String someLog(ModelMap map,HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		LoginDetail loginDetail = (LoginDetail) session.getAttribute("users");
		UserDetails details = (UserDetails) session.getAttribute("ldet");
		
		List<LocationDet> detaillist =(List<LocationDet>)dao.findOwner(loginDetail);;
		for(LocationDet locdetail:detaillist) {
			System.out.println(locdetail);
		}
		map.put("listLoc", detaillist);
		
		return "OwnerHome";
	}
	

	@RequestMapping("/addMoreLoc")
	public String addMore(@RequestParam("loc")String loc,HttpServletRequest request)
	{
		UserDetails details = dao.findUser(loc);
		System.out.println(details);
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("userDet", details);
		return "LocationDet";
		
	}
	
}



