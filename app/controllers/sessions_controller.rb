class SessionsController < ApplicationController
  def new
  end

  def create
    user = PUser.find_by(mail: params[:session][:mail].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url, notice: 'ログインしました。'
    else
      flash.now[:alert] = 'メールアドレスまたはパスワードが正しくありません。'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_url
  end
end
