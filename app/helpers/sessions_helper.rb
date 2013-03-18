module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token]
    self.current_user = user   
  end

  def signed_in?
    !current_user.nil?
  end

  # create new instance variable for used in controller and view
  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def current_user?(user) 
    user == current_user
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to) 
  end

  def store_location
    session[:return_to] = request.fullpath
  end

  private
#  def user_from_remember_token 
#    User.authenticate_with_salt(*remember_token) 
#  end 
#
#  def remember_token 
#    cookies.signed[:remember_token] || [nil, nil] 
#  end 


end
