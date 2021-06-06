class PostsController < ActionController::API
  def index
    fake_data = {
      test: ''
    }
    
    render json: fake_data
  end
end