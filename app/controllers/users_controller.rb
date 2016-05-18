class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :password_update]

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

def password_reset
end

def password_update
  if @user.try(:authenticate, params[:current_password])
    if @user.update_attributes(user_params)
      redirect_to edit_user_path(current_user), notice: 'Your password has been updated'
    else
      flash[:alert] = 'Password not updated'
      render :edit
    end
  else
    flash[:alert] = 'Password not updated'
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
