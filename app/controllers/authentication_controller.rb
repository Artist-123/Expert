class AuthenticationController < ApplicationController
	skip_before_action :authentication_request
	def login
		byebug
		@user = User.find_by(email: params[:email])
		if @user&& @user.authenticate(params[:password])
			token = jwt_encode(user_id: @user.id)
			render json: { token: token }, status: :ok
		else
			render json: { error: "unauthorised" }, status: :unauthorised
		end
	end
end
