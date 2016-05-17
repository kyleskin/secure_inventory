class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    session[:id] = @user.id
    redirect_to items_path,
      notice: "Thank you for signing up #{@user.first_name.titlecase}"
  else
    render :new
  end
end

def show
end

def edit
end

def update
  if @user.update(user_params)
    redirect_to edit_user_path(current_user), notice: 'Account Updated'
  else
    render :edit
  end
end

private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
