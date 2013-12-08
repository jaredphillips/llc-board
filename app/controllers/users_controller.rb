class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Sign up Success! Let's post a job"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private

  def user_params 
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
