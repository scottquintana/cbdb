class Api::V1::RoastersController < ApplicationController
  include Response
  include ExceptionHandler

  before_action :set_roaster, only: [:show, :update, :destroy]
  def index
    @roasters = Roaster.all
    @roasters_beans = Bean.all
    render json: { "Data": {"RoasterInfo": @roasters, "BeansInfo": @beans}}, status: :ok
  end

  def show
    json_response(@roaster.beans)
  end

  def create
    @roaster = Roaster.new(roaster_params)
    @roaster.save
  end



  private

  def set_roaster
    @roaster = Roaster.find(params[:id])
  end

  def roaster_params
    params.require(:roaster).permit(:email, :roaster_name)
  end
end