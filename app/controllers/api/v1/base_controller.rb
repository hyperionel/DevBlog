class Api::V1::BaseController < ActionController::API
  
  respond_to :json

  before_action :users_only

  def users_only
    unless true
    # unless current_admin
      head :unauthorized
    end
  end
  
end
