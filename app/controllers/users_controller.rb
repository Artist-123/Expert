require_relative '/home/developer/Downloads/Notepad_demo (2)/Notepad/app/services/otp_service.rb'

class UsersController < ApplicationController
  skip_before_action :authentication_request, only: [:create]
  def create
    
    @user = User.new(user_params)
    secret_key = 'base32secret3232'
    otp = OTPService.generate_otp(secret_key)
    if @user.save
      VerificationMailMailer.otp_email(@user,otp).deliver_now
        render json: { user: @user, otp: otp }, status: 201

    else
    render json: {errors: @user.errors.full_messages}, status: 503
    end 
  end
  private
  def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :mobile_no, :password, :password_confirmation)
  end
end
