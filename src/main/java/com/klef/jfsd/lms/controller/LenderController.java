package com.klef.jfsd.lms.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.lms.model.Lender;
import com.klef.jfsd.lms.model.Loan;
import com.klef.jfsd.lms.model.Transaction;
import com.klef.jfsd.lms.service.LenderService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LenderController {

	@Autowired
	private LenderService lenderService;

	
	@GetMapping("lenderlogin")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderlogin");
		return mv;
	}
	
	
	@PostMapping("checklenderlogin")
	public ModelAndView checklenderlogin(HttpServletRequest request)
	{	
		ModelAndView mv = new ModelAndView();
	
		String lemail = request.getParameter("lemail");
		String lpwd = request.getParameter("lpwd");
		
		Lender lender = lenderService.checkLenderLogin(lemail, lpwd);
		
		
		
		if(lender!= null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("lender", lender);
			mv.setViewName("lenderhome");
			//long count = borrowerService.customercount();
			//mv.addObject("count",count);
		}
		else 
		{
			mv.setViewName("loginfail");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("lenderlogout")
	public String lenderlogout(HttpServletRequest request) {
	    
	    HttpSession session = request.getSession(false); 

	    if (session != null) {
	        session.removeAttribute("lender");
	    }
	    
	    return "redirect:/lenderlogin"; 
	}
	
	
	
	
	
	@GetMapping("lenderregistration")
	public ModelAndView customerreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderregistration");
		return mv;
	}
	
	
	
	@PostMapping("insertlender")
	public ModelAndView insertlender(HttpServletRequest request)
	{
		String name = request.getParameter("lname");
		String email = request.getParameter("lemail");
		String gender = request.getParameter("lgender");
		String dob = request.getParameter("ldob");
		String address = request.getParameter("laddress");
		String contact = request.getParameter("lcontact");
		String password = request.getParameter("lpwd");
		
		Lender lender = new Lender();
		
		lender.setName(name);
		lender.setGender(gender);
		lender.setDateofbirth(dob);
		lender.setEmail(email);
		lender.setAddress(address);
		lender.setContact(contact);
		lender.setPassword(password);
		
		
		String message = lenderService.lenderRegistration(lender);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderregistration");
		mv.addObject("message",message);
		
		return mv;
	}
	
	
	
	
	
	@GetMapping("viewloanapplications")
	public ModelAndView viewmyloanrequests(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewloanapplications");
		
		List<Loan> loans = lenderService.viewloanapplications();
				
		mv.addObject("loans" ,loans);
		return mv;
	}
	
	
	
	

	
	@GetMapping("approveloan")
	public ModelAndView approveloan( @RequestParam("id") long id,@RequestParam("lenderName") String lenderName) 
	{

	    ModelAndView mv = new ModelAndView();

	    // Process the loan using both `id` and `lenderName`
	    String msg = lenderService.approveLoan(id, lenderName);

	    // Optional: Add the message to display on the redirected page
	    mv.addObject("msg", msg);

	    // Redirect to the desired view
	    mv.setViewName("redirect:/viewloanapplications");  // Ensure this path matches the actual mapping

	    return mv;
	}

	

	
	@GetMapping("lenderactiveloans")
	public ModelAndView lenderactiveloans(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderactiveloans");
		 String lenderName =" ";
			HttpSession session = request.getSession(false);
			Lender lender = (Lender) session.getAttribute("lender");
			
			if (lender != null) {
				lenderName = lender.getName();
	        }
			
			
			List<Loan> loans = lenderService.lenderactiveloans(lenderName, "Approved");
					
			mv.addObject("loans" ,loans) ;
		return mv;
	}
	
	
	
	@GetMapping("lendershowtsnbyloanid")
	public ModelAndView borrowershowtsnbyloanid(HttpServletRequest request)
	{
		String loanid= request.getParameter("lid");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lshowtsnbyloanid");
		
		List<Transaction> transactions = lenderService.gettransactionsbyloanid(loanid);
			
					
			mv.addObject("transactions" ,transactions) ;
		return mv;
	}

	
	
	
	

	@GetMapping("lenderprofile")
	public ModelAndView lenderprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderprofile");
		return mv;
	}

	

@GetMapping("updatelenderprofile")
public ModelAndView updateprofile(HttpServletRequest request)
{
	ModelAndView mv = new ModelAndView("updatelenderprofile");
	return mv;
}


@PostMapping("updatelp")
public ModelAndView update(HttpServletRequest request)
{
	ModelAndView mv = new ModelAndView("updatelenderprofile");
	
	int id =Integer.parseInt(request.getParameter("lid")) ;
	String name = request.getParameter("lname");
	String gender = request.getParameter("lgender");
	String dob = request.getParameter("ldob");
	String address = request.getParameter("laddress");
	String contact = request.getParameter("lcontact");
	String password = request.getParameter("lpwd");
	
	
	Lender lender = new Lender();
	lender.setId(id);
	lender.setName(name);
	lender.setGender(gender);
	lender.setDateofbirth(dob);
	lender.setAddress(address);
	lender.setContact (contact);
	lender.setPassword(password);
	
	lenderService.updateLenderProfile(lender);
	
	Lender l = lenderService.getLender(id);

	HttpSession session = request.getSession();
	session.setAttribute("lender", l);
	
	return mv;
}

	
	
	
	
	
	
}




