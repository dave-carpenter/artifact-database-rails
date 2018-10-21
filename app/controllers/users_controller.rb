class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #debugger should work here but doesnt
  end

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "User Registered Successfully"
        redirect_to @user
      else
        render 'new'
      end
    end

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
