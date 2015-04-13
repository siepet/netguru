class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews.last(5)
    if !@user
      flash[:error] = "This is not the user you are looking for!"
      redirect_to root_path
    end
  end

end
