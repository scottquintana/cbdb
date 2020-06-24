class BeansController < ApplicationController
  
  before_action :set_bean, only: [:show, :edit, :update, :destroy]

  def index
    @roaster = current_roaster
  end

  def new
    @bean = Bean.new 
    @bean.build_bean_profile
    @bean.roaster_id = current_roaster.id
  end

  def create
    
    @bean = Bean.new(bean_params)
    @bean.roaster_id = current_roaster.id
    if @bean.save
      flash[:notice] = "Bean was created successfully"
      redirect_to @bean
    else
      render 'new'
    end
  end

  def show
    @bean = Bean.find(params[:id])
  end

  def edit
    @bean = Bean.find(params[:id])
  end

  def update
    if @bean.update(bean_params)
      redirect_to @bean
    end
  end

  private

  def set_bean
    @bean = Bean.find(params[:id])
  end
  def bean_params
    params.require(:bean).permit(:id, :name, :roaster_id, :status, 
                                  bean_profile_attributes: 
                                  [:id, :bean_id, :description, :region, :processing, :notes, :altitude, :roast_level, :single_origin])
  end
end