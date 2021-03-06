#encoding: utf-8
class ApplicationController < ActionController::Base
  include Pundit
  #protect_from_forgery

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

 private
 def user_not_authorized
	 flash[:notice] = "Você não tem permissão para fazer esta ação."
	 redirect_to(request.referrer || root_path)
	 end
end
