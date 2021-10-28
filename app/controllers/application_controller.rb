class ApplicationController < ActionController::Base
  def authenticate_admin
    unless current_user && current_user.admin
      render json: {}, status: :unathorized
  end 

end
