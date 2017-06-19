class UsersController < ApplicationController

  def new
  end

  # I set this up, I am aware that it may not be restful. I gave
  # an object of a user to the form and was not able to figure out
  # how to re route it to go to the sessions create action. So I
  # did it this way for the sake of time.
  # I think I should be using a form tag so I can customize the route 
  def create
    @user = User.find_by(username: user_params[:username])
    if @user
     if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to new_episode_guest_path
     else
      render :new
     end
    else
      @user = User.create(user_params)
      session[:user_id] = @user.id
      redirect_to new_episode_guest_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
