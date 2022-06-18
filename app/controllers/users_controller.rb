class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book_new = Book.new
    @books = @user.books
  end

  def index
    @users = User.all
    @user = current_user
    @book_new = Book.new
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction)
  end

end
