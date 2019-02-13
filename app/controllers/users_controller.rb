class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
      session[:user_id] = @user.id
    else
      flash[:errors] = @user.errors.full_messages
      render :'users/new'
    end
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    
    if @user.valid?
      redirect_to @user
    else
      # flash[:errors] = @user.errors.full_messages
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthdate, :email, :username, :password)
  end

end
