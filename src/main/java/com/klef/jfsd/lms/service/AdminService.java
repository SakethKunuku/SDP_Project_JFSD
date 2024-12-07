package com.klef.jfsd.lms.service;

import java.util.List;



import com.klef.jfsd.lms.model.Admin;
import com.klef.jfsd.lms.model.Borrower;

public interface AdminService
{
	public List<Borrower> viewAllBorrowers();
	public Admin checkAdminLogin (String uname,String pwd);
	long borrowercount();

}
