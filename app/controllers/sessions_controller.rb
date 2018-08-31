class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name] if params[:name]
  end

  def destroy
  end
end
