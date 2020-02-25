class UsersController < ApplicationController
  before_action :set_user_params, only: %i[create]
  before_action :set_user, only: %i[edit update destroy]

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

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

  def edit
  end

  def update
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_user_params
    params.require(:user).permit(:name, :encrypted_password, :name, :age, :address)
  end
end
