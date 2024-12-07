
<%@page import="com.klef.jfsd.lms.model.Borrower"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Borrower b= (Borrower)session.getAttribute("borrower");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<%@include file="borrowernavbar.jsp" %>
<br/>

<br/><br/><br/><br/>


	<div class="container" style="margin-top: 90px">
		<div class="row">
			<div
				class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h3 class="text-center" style="margin-top: 20px">Borrower Profile Update</h3>
					 
					
						
				<div class="card-body">
					<form th:action="@{/loan/{id} (id=${loan.id})}" th:object="${loan}"
						method="post" action="updatebp" >
						
						
						 
					
					<div class="form-group">
							<label> ID </label>
							 <input type="number" name="bid" value=<%=b.getId()%>
								th:field="dob" class="form-control"
								placeholder="ID" />
						</div>
						
						
						<div class="form-group">
							<label>  Name </label> <input type="text" name="bname" value=<%=b.getName()%>
								th:field="*{firstName}" class="form-control"
								placeholder="Enter Name" />
						</div>
						
						
						<div class="form-group">
						<labeL> Select Gender </labeL>
						
						 <select name="bgender" class="form-control" placeholder="Select Gender">
						    <option value=<%=b.getGender()%>>Select</option>
						    <option value="Male">Male</option>
						    <option value="FeMale">Female</option>
						    <option value="Others">Others</option>
						  </select>
 						 </div>
 						 
 						 
 						 <div class="form-group">
							<label> Date-of-Birth </label> <input type="date" name="bdob" value=<%=b.getDateofbirth() %>
								th:field="dob" class="form-control"
								placeholder="Enter Date-of-Birth" />
						</div>
						
					

						
						<div class="form-group">
							<label> Email </label> <input type="text" name="bemail" value=<%=b.getEmail()%>
								th:field="*{email}" class="form-control"
								placeholder="Enter Email" />
						</div>
						
						
						
						
						
						<div class="form-group">
							<label> Address </label> <input type="text" name="baddress" value=<%=b.getAddress()%> 
								th:field="address" class="form-control"
								placeholder="Enter Address" />
						</div>
						
						
						<div class="form-group">
							<label> Employement Status </label> 
							<select name="bempstatus" class="form-control" class="form-control" placeholder="Select Employement Status"  value=<%=b.getEmpstatus()%>  >
							<option value=<%=b.getEmpstatus()%> >select</option>
						    <option value="Employed">Employed</option>
						    <option value="Self Employed">Self Employed</option>
						    <option value="UnEmployed">UnEmployed</option>
						    <option value="Retired">Retired</option>
						  </select>
						</div>
						
						
						
						<div class="form-group">
							<label> Annual Income </label> 
							<input type="number" name="bannual_income" value=<%=b.getAnnual_income() %>
								th:field="address" class="form-control"
								placeholder="Enter Annual Income" />
						</div>
						
						
						
						<div class="form-group">
							<label> Contact </label> <input type="text" name="bcontact"  value=<%=b.getContact() %>
								th:field="*{term}" class="form-control" placeholder="Enter Contact no" />
						</div>
						
						
						<div class="form-group">
							<label> Password </label> <input type="password" name="bpwd"  value=<%=b.getPassword()%> 
								th:field="*{term}" class="form-control" placeholder="Password" />
						</div>


						<div class="box-footer" align="center">
							<button  type="submit" class="btn btn-primary">
								Update</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>


</body>




</html>