class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name] if params[:name]

    if current_user.nil?
      binding.pry
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end

  def destroy
    if !current_user.nil?
      session[:name].clear
    end
  end
end
