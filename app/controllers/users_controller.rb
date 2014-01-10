class UsersController < ApplicationController
  def show
    id = params[:id]
    @user = User.find(id)
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)
  if @user.save
    session[:current_user_id] = @user.id
    flash[:notice] = "You have successfully created a new user and logged in!"
    redirect_to @user
  else
    render 'new'
  end
  end


  def edit
    @user = current_user 
  end
  
  def update
    @user = current_user 
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end

  def my_books
  @user = current_user.id   
  
  end  

  private

  def user_params
    params.require(:user).permit(:description)
  end
end