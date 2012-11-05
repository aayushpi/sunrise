class SessionsController < ApplicationController
  def create
    #Instagram.configure do |config|
    #  config.client_id = "52c7b24172374238bad39988a69e07e8"
    #  config.client_secret = "9a1272aa68f645a9802d37d3df907b9f"
    #end
    #raise env["omniauth.auth"].to_yaml #returns hash with details about user being authd
    #user = User.from_omniauth(env["omniauth.auth"])
    #redirect_to root_url, notice: "Signed in!"

    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    redirect_to root_url
    client = Instagram.client(:access_token => session[:access_token])
    session[:user_id] = client.user.username
  end

  def destroy
    session[:user_id] = nil
    reset_session
    redirect_to :controller => 'index', :action => 'index'
  end
end
