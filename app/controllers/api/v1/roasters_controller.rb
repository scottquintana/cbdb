class Api::V1::RoastersController < ApplicationController
  def index
    @roasters = Roaster.all
    render json: { "Data": {"RoasterInfo": @roasters, "RoasterInfo": @roasters}}, status: :ok
  end

end