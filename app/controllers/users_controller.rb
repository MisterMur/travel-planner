class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :delete]
  def new
  end

  def create
  end

  def show

  end

  def edit
  end

  def update
  end

  

  private

  def find_user
    @user = User.find(params[:id])
  end

end
