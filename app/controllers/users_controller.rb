class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @post_images = @user.post_images
  end
  
  def index
    @books =Book.all
  end

  def edit
  end
end
