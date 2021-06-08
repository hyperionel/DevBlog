class Api::V1::PostsController < Api::V1::BaseController
  def index
    render json: Post.all
  end

  def show; end

  def edit; end

  def update
    @post.update_attributes(post_params)

    render json: presented_post
  end

  def create
    @post = Post.create(post_params)

    render json: presented_post
  end

  def destroy
    if @post.destroy
      render json: true
    else
      raise 'Fail'
    end
  end

  private

    def presented_post
      PostPresenter.new(@post).present
    end
  
    def post_params
      params.require(:post)
        .permit(:title, :slug, :excerpt, :content, :read_time)
    end
end