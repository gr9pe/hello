class PUsersController < ApplicationController
  def show
  end

  def new
    @user = PUser.new
  end

  def create
    @user = PUser.new(user_params)
    if @user.save
      log_in @user
      redirect_to root_url
    else
      flash[:alert] = '登録済みのメールアドレスです。'
      redirect_to '/p_users/new'
    end
  end

  def edit
    if logged_in?
      @user = current_user
    else
      flash[:alert] = 'ログインしてください。'
      redirect_to login_path
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path
    else
      flash.now[:alert] = "保存できませんでした。"
      render action: :edit
    end
  end

  def user_params
    logger.debug params
    params.require(:p_user).permit(:firstname, :lastname, :userid, :password, :mail)
  end
end
