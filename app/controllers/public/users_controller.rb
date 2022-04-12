class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def post_all
    @user = User.find(params[:id])
    #@posts = @user.posts.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to public_user_path(@user.id)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image, :email, :password)
  end

end
