class PTasksController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]

  def new
    @task = PTask.new
  end

  def create
    @task = PTask.new(task_params.merge(p_user_id: current_user.p_user_id))
    if @task.save
      redirect_to root_path
    else
      flash[:alert] = "保存できませんでした。"
      redirect_to p_tasks_new_path
    end
  end

  def edit
    @task = PTask.find(params[:p_task_id])
    
    if @task.nil?
      flash[:alert] = '編集できませんでした。'
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def update
    @task = PTask.find_by(p_task_id: params[:p_task_id])
    if @task.nil?
      flash[:alert] = '更新できませんでした。'
      redirect_to root_path
    elsif @task.update(task_params)
      redirect_to action: :edit
    else
      flash[:alert] = '保存できませんでした。'
      render :edit
    end
  end

  def destroy
    task = PTask.find(params[:p_task_id])
    task.destroy
    redirect_to root_url
  end


  def task_params
    logger.debug params
    params.require(:p_task).permit(:title, :detail, :deadline, :url, :p_task_id, :isdone, :p_corp_id, :address)
  end
end
