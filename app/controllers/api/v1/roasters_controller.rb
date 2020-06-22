class Api::V1::RoastersController < ApplicationController
  include Response
  include ExceptionHandler

  before_action :set_roaster, only: [:show, :update, :destroy]
  def index
    @roasters = Roaster.includes(:beans, :roaster_contact)
   
    thejson = RoasterSerializer.new(@roasters).serialized_json
    render json: thejson, status: :ok
  end

  def show
    #json_response(@roaster)
    render json: RoasterSerializer.new(@roaster), status: :ok
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