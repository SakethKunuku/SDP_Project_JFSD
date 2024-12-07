package com.klef.jfsd.lms.service;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.lms.model.Admin;
import com.klef.jfsd.lms.model.Borrower;
import com.klef.jfsd.lms.repository.AdminRepository;
import com.klef.jfsd.lms.repository.BorrowerRepository;
@Service
public class AdminServiceImpl implements AdminService
{
	
//	@Autowired
//	private CustomerRepository customerRepository;
//	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private BorrowerRepository borrowerRepository;
	
	

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
	}
	


	
	@Override
	public List<Borrower> viewAllBorrowers() 
	{
		return borrowerRepository.findAll();
	}
	
	
	@Override
	public long borrowercount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
