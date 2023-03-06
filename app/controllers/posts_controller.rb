class PostsController < ApplicationController

  def index
    @users = User.all
  end
 
  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params.require(:user).permit(:title, :start, :finish, :whole, :memo))
    if @user.save
      flash[:notice] = "登録しました"
      redirect_to :posts
    else
      flash[:notice] = "登録に失敗しました"
      render "new"
    end
  end
 
  def show
    @user = User.find(params[:id])
  end
 
  def edit
    @user = User.find_by(id: params[:id])
  end
 
  def update
    @user = User.find_by(id: params[:id])
    if
      @user.update(params.require(:user).permit(:title, :start, :finish, :whole, :memo))
      flash[:notice] = "更新しました"
      redirect_to :posts
    else
      flash[:notice] = "更新に失敗しました"
      render "edit"
    end
  end
 
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "削除しました"
    redirect_to :posts
  end

end
