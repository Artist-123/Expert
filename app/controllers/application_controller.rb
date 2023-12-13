class ApplicationController < ActionController::Base
include JsonWebToken
before_action :authentication


private
def authentication
    header = request.headers["Authorization"]
    header = header.split(" ").last if header
    decoded = jwt_decode(header)
    @current_user = User.find(decoded[:user_id]) 
end
end
