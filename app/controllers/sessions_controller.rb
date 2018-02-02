class SessionsController < ApplicationController
  skip_before_action :authorize
  
  def new
  end

  def create
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_index_url, notice: "Logged out"
  end
end
