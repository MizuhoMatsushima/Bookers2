class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

  end

  def index
    @users = User.all
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    @user.save
    redirect_to book_path
    @book = @user.book
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction)
  end

end
