<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.nf.bean.SignUpBean"%>
<!DOCTYPE html>
<html>
<head>
	<title>Payment Details</title>
	<style>
		form {
			width: 500px;
			margin: 0 auto;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0,0,0,0.3);
			font-family: Arial, sans-serif;
		}

		label {
		     margin-top:8px;
			display: block;
			margin-bottom: 5px;
			font-weight: bold;
		}

		.expiry-date,input[type="number"], select {
			padding: 10px;
			margin-bottom: 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
			width: 90%;
			box-sizing: border-box;
			font-size: 16px;
		}

		.payment-option {
		     margin-top:12px;
			margin-bottom: 20px;
			
			display: flex;
			align-items: center;
			justify-content: space-between;
		}

		.payment-option label {
			margin-right: 10px;
			
		}

		.payment-option input[type="radio"] {
			margin-right: 5px;
		}

		.card-icons {
			display: flex;
			align-items: center;
			margin-bottom: 20px;
		}

		.card-icons img {
			width: 40px;
			margin-right: 10px;
		}

		.btn {
			padding: 10px 20px;
			background-color: #007bff;
			color: #fff;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			font-size: 16px;
			margin-right: 10px;
		}

		.btn.cancel {
			background-color: #ccc;
			color: #333;
		}
		
		form{
		margin-left:500px;
		
		}
	</style>
</head>
<body>

	<%
	if (session != null) {
SignUpBean sb = (SignUpBean) session.getAttribute("usersignup");
	%>
	
               
		
	<!-- ------------------------------------------------------------------------------------------------------ -->		
			
			 <div style="width:380px;border:2px solid black;font-family:verdana;font-size:22px;margin-top:20px;margin-bottom:32px;padding:12px;margin-left:540px;">
        <span style="padding:8px; color:#cc0000;"> Amount to be
            Debited <i><%
        out.println(request.getParameter("plan"));
        %></i>INR
        </span> 
        <br> <span style="padding:8px;margin-top:20px;color:green;">Email id: <%
out.print(request.getParameter("mail"));
%></span><br>
        </div>

    <span style="margin-top:22px;margin-bottom:18px;font-size:28px;font-family:verdana;margin-left:535px;">Enter Your Credit Card 
Details</span>

	<form action="payment" method="post">
        <input type=hidden name="mail"
        value="<%=request.getParameter("mail")%>"> <input
        type="hidden" name="plan" value="<%=request.getParameter("plan")%>">
     
        <div class="payment-option">

			<label>Select Your Bank:</label>
			<input required type="radio" name="bank_name" value=statebankofindia id="sbi">
			<label for="sbi">State Bank of India</label>
			<input required type="radio" name="bank_name" value=hdfcbank id="hdfc">
			<label for="hdfc">HDFC Bank</label>
		</div>
		
		<%
	if (request.getAttribute("msg") != null) {
	%>
	<span style="color:red;font-family:verdana;font-size:18px;float:right;margin-right:32px;;"><%out.print(request.getAttribute("msg")); %></span>
	<%
	}
	%>
		
		
		<label>Credit Card Number:</label>
		<input required type="number" name="credit_c_no" maxlength="12">
		<label>CVV:</label>
		<input required type="number" name="cvv"maxlength="3">
		<label>Expiry Date:</label>
		<input  type="month" name="expiry-date" class="expiry-date"required >
		<div class="card-icons">
			<img src="https://cdn-icons-png.flaticon.com/512/179/179457.png" alt="Visa">
			<img src="https://img.icons8.com/color/256/mastercard-logo.png" alt="Mastercard">
		</div>
		<button type="submit" class="btn">Submit</button>
		<button type="reset" class="btn cancel">Cancel</button>
	</form>



<!-- ------------------------------------------------------------------------------------------------------------ -->

	
	
	<%
	} else {
	session.invalidate();
	response.sendRedirect("SessionExpired.jsp");
	%>
	
	<%
	}
	%>
	 
</body>
</html>