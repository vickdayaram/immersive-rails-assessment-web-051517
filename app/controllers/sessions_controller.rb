class SessionsController < ApplicationController

  def new
    @user = User.new
  end


  #This code is not being used I think.
  # def create
  #   @user = User.find_or_create_by(name: user_params[:name])
  #   if @user && @user.authenticate(user_params[:password])
  #     session[:user_id] = @user.id
  #     redirect_to new_episode_guest_path
  #   else
  #     render :new
  #   end
  # end

  def destroy
    session[:user_id] = nil
    redirect_to sessions_path
  end

end
