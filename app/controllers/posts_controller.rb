class PostsController < ApplicationController

  def index
    @registers = Register.all
  end
 
  def new
    @register = Register.new
  end
 
  def create
    @register = Register.new(params.require(:register).permit(:title, :start, :finish, :whole, :memo))
    if @register.save
      flash[:notice] = "登録しました"
      redirect_to :posts
    else
      flash[:notice] = "登録に失敗しました"
      render "new"
    end
  end
 
  def show
    @register = Register.find(params[:id])
  end
 
  def edit
    @register = Register.find_by(id: params[:id])
  end
 
  def update
    @register = Register.find_by(id: params[:id])
    if
      @register.update(params.require(:register).permit(:title, :start, :finish, :whole, :memo))
      flash[:notice] = "更新しました"
      redirect_to :posts
    else
      flash[:notice] = "更新に失敗しました"
      render "edit"
    end
  end
 
  def destroy
    @register = Register.find(params[:id])
    @register.destroy
    flash[:notice] = "削除しました"
    redirect_to :posts
  end

end
