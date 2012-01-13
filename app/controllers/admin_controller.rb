class AdminController < ApplicationController
  
  def login
    if request.post?
      logger.info(params[:email])
      user = User.authenticate(params[:email], params[:password])
      if user
        session[:user_id] = user.id
        uri = session[:original_uri]
        session[:original_uri] = nil
        redirect_to(uri || { :action => "index" })
      else
        redirect_to(uri || { :action => "index" })
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login" )
  end

  def index
    @total_users = User.count
  end

end

