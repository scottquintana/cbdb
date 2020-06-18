class Api::V1::BeansController < ApplicationController
  include Response
  include ExceptionHandler
  
  before_action :set_bean, only: [:show, :update, :destroy]

  def index
    @beans = Bean.all
    json_response(@beans)
  end

  def create
    @bean = Bean.create(bean_params)
    json_response(@bean, :created)
  end

  def show
    json_response(@bean)
  end

  def update
    @bean.update(bean_params)
    head :no_content
  end

  def destroy
    @bean.destroy
    head :no_content
  end


  private

  def bean_params
    params.permit(:name, :roaster_id, :active)
  end

  def set_bean
    @bean = Bean.find(params[:id])
  end
end