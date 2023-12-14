class VerificationMailMailer < ApplicationMailer
	
	
     def otp_email(user,otp)
     byebug
     @user = user
     @otp  = otp
     mail(to: @user.email, subject: 'Your One-Time Password (OTP)')
     end
		
	
end
