class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find params[:id]
    if @user.update(user_params) 
      render :show
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    
    if @user.destroy
      flash[:notice] = "Usuário removido"
    else
      flash[:notice] = "Falha na remoção"
    end

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :age, :gender)
  end

end