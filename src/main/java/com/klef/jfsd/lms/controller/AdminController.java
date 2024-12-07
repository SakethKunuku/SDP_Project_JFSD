package com.klef.jfsd.lms.controller;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.lms.model.Admin;
import com.klef.jfsd.lms.model.Borrower;
import com.klef.jfsd.lms.model.Loan;
import com.klef.jfsd.lms.model.Transaction;
import com.klef.jfsd.lms.service.AdminService;
import com.klef.jfsd.lms.service.BorrowerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private BorrowerService borrowerService;

	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	 @PostMapping("checkadminlogin")
	    public ModelAndView checkadminlogin(HttpServletRequest request)
	    {
	        ModelAndView mv = new ModelAndView();

	        String auname = request.getParameter("ausername");
	        String apwd = request.getParameter("apwd");

	        // Validate if username or password is empty
	        if(auname.isEmpty() || apwd.isEmpty()) {
	            mv.setViewName("adminlogin");
	            if (auname.isEmpty()) {
	                mv.addObject("message", "Username cannot be empty.");
	            } else if (apwd.isEmpty()) {
	                mv.addObject("message", "Password cannot be empty.");
	            }
	            return mv;
	        }

	        // Check credentials
	        Admin admin = adminService.checkAdminLogin(auname, apwd);

	        if(admin != null) {
	            HttpSession session = request.getSession();
	            session.setAttribute("admin", admin);

	            mv.setViewName("adminhome");
	            long count = adminService.borrowercount();
	            mv.addObject("count", count);
	        } else {
	            mv.setViewName("adminlogin");
	            mv.addObject("message", "Invalid login credentials.");
	        }
	        return mv;
	    }
	
	
	@GetMapping("adminlogout")
	public String adminlogout(HttpServletRequest request) {
	    
	    HttpSession session = request.getSession(false); 

	    if (session != null) {
	        session.removeAttribute("admin");
	    }
	    
	    return "redirect:/"; 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		
		long count = adminService.borrowercount();
		mv.addObject("count",count);
		return mv;
	}
	
	
	
	
	
	
	
	
	
	@GetMapping("viewallborrowers")
	public ModelAndView viewallborrowers()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewborrowers");
		
		long count = adminService.borrowercount();
		mv.addObject("count",count);
		
		List<Borrower> borrowers = adminService.viewAllBorrowers();
		mv.addObject("borrowerslist" ,borrowers) ;
		return mv;
	}
	
	
	
	
	
	@GetMapping("viewborrowerprofile")
	public ModelAndView viewaborrowerprofile(HttpServletRequest request)
	{
		String borrowerid= request.getParameter("bid");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewborrowerprofile");
		
		Borrower b = borrowerService.getBorrower(Integer.parseInt(borrowerid));
		
		mv.addObject("borrower" ,b) ;
		return mv;
	}
	
	
	


@GetMapping("adminupdatebrprofile")
public ModelAndView adminupdatebrprofile(HttpServletRequest request)
{
	String borrowerid= request.getParameter("bid");
	Borrower b = borrowerService.getBorrower(Integer.parseInt(borrowerid));
	ModelAndView mv = new ModelAndView("adminupdatebrprofile");
	mv.addObject("borrower" ,b) ;
	return mv;
}



@PostMapping("adminupdatebp")
public ModelAndView update(HttpServletRequest request)
{
	
	
	int id =Integer.parseInt(request.getParameter("bid")) ;
	String name = request.getParameter("bname");
	String gender = request.getParameter("bgender");
	String dob = request.getParameter("bdob");
	String address = request.getParameter("baddress");
	String empstatus = request.getParameter("bempstatus");
	String annual_income = request.getParameter("bannual_income");
	String contact = request.getParameter("bcontact");
	String password = request.getParameter("bpwd");
	
	
	Borrower borrower =new Borrower();
	borrower.setId(id);
	borrower.setName(name);

	borrower.setGender(gender);
	borrower.setDateofbirth(dob);
	borrower.setAddress(address);
	borrower.setEmpstatus(empstatus);
	borrower.setAnnual_income(annual_income);
	borrower.setContact (contact);
	borrower.setPassword(password);
	
	borrowerService.updateBorrowerProfile(borrower);
	
	ModelAndView mv = new ModelAndView("viewborrowerprofile");
	
	 return new ModelAndView("redirect:/viewborrowerprofile?bid=" + id);
	 
	 
}






@GetMapping("viewborrowerloans")
public ModelAndView viewmyloanrequests(HttpServletRequest request)
{
	String borrowername= request.getParameter("bname");
	
	ModelAndView mv = new ModelAndView();
	mv.setViewName("viewborrowerloans");
	 String borrowerName =" ";
	 List<Loan> loans = borrowerService.viewmyloanrequests(borrowername);
	mv.addObject("loans" ,loans) ;
	return mv;
}




@GetMapping("viewborrowertransactions")
public ModelAndView viewborrowertransactions(HttpServletRequest request)
{
	String borrowername= request.getParameter("bname");
	
	ModelAndView mv = new ModelAndView();
	mv.setViewName("viewborrowertransactions");
	 List<Transaction> transactions = borrowerService.showmytransactions(borrowername);
	 System.out.print(transactions);
	 mv.addObject("transactions" ,transactions) ;
	 return mv;
}






	

	


}
