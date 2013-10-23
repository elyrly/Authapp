class UsersController < ApplicationController
# skip_before_filter :authorize, only: [:new, :create]

def index
end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user= User.create(params[:user])
    if @user.errors.empty?
    redirect_to user_path(@user.id)
  else
    flash[:errors] = @user.errors.full_messages
    render :new
  end
end

  def edit

  end

  def update

  end

  def destroy

  end

  def admin
@user = User.all
  end



end
