class UserController < ApplicationController
  before_action :set_user_params, only: %i[create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user_path
    else
      render :new
    end
  end

  private

  def set_user_params
    params.require(:user).permit(:name, :encrypted_password, :name, :age, :address)
  end

  def index; end
end
