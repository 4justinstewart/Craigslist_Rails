class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def authenticate #VIEW FOR SIGNUP / LOGIN

  end

  def login
    user = User.authenticate(params[:user][:email], params[:user][:password])

    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to users_authenticate_path
    end
  end

  def signup
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to users_authenticate_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def user_params
    params.required(:user).permit(:email, :password)
  end

end
