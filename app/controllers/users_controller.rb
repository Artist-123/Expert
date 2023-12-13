class UsersController < ApplicationController
    skip_before_action :authentication, only: [:create]
    def create 
        @user =User.new(user_params)
        if @user.save
            render json: @user, status: 201
        else
        render json: {errors: @user.errors.full_messages}, status: 503
      
    end
    private
    def user_params
        params.permit(:Email, :First_name, :Last_name, :mobile_number, :password, :confirm_password)
    end
end
