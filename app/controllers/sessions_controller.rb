class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name] if params[:name]

    if current_user.nil?
      redirect_to '/'
    else
      
    end
  end

  def destroy
  end
end
