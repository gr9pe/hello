class PCorpsController < ApplicationController
  def index
    @corps = PCorp.find_by(p_user_id: current_user.p_user_id)
  end

  def new
    @corp = PCorp.new
  end

  def create
    corp = PCorp.new(corp_params.merge(p_user_id: current_user.p_user_id))
    if corp.save
      redirect_to root_path
    else
      flash[:alert] = "保存できませんでした。"
      redirect_to p_corp_new_path
    end
  end

  def edit
    @corp = PCorp.find(params[:p_corp_id])
    @tasks = PTask.where(p_user_id: current_user.p_user_id).where(p_corp_id: @corp.p_corp_id)
    if @corp.nil?
      flash[:alert] = '見つかりませんでした。'
      redirect_to root_path
    end
  end

  def update
    corp = PCorp.find_by(p_corp_id: params[:p_corp_id])
    if corp.nil?
      flash[:alert] = '更新できませんでした。'
      redirect_to root_path
    elsif corp.update(corp_params)
      redirect_to action: :edit
    end
  end

  def destroy
    corp = PCorp.find_by(p_corp_id: params[:p_corp_id])
    if PTask.where(p_corp_id: params[:p_corp_id]).empty?
      corp.destroy
      redirect_to root_path
    else
      flash[:alert] = '削除できませんでした。企業に関連付けられたタスクがあります。'
      redirect_to action: :edit
    end
  end

  def corp_params
    logger.debug params
    params.require(:p_corp).permit(:name, :detail, :url, :about, :description, :p_corp_id, :address)
  end
end
