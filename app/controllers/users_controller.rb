class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book_new = Book.new
    @books = @user.books
    #@book = Book.find(params[:id])
  end

  def index
    @users = User.all
    #@user_find = User.find(params[:id])
    @user = current_user
    @book_new = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction)
  end

end
