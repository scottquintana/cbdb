class RoastersController < ApplicationController
  before_action :authenticate_roaster!
  before_action :set_roaster
  
  def index
    
  end

  def show
   
  end

  

  private

  def set_roaster
    @roaster = current_roaster
  end
end