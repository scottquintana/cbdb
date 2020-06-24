class ApplicationController < ActionController::Base
  before_action :authenticate_roaster!
  skip_forgery_protection
end
