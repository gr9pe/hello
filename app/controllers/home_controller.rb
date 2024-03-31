class HomeController < ApplicationController
  def index
    if !logged_in?
      flash[:alert] = 'ログインしてください。'
      redirect_to login_url
    end
    @tasks = PTask.where(p_user_id: session[:p_user_id]).order(created: :asc)
    @corps = PCorp.where(p_user_id: session[:p_user_id])
  end
end
