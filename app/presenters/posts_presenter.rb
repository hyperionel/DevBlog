class PostsPresenter < BasePresenter
  def initialize(posts)
    @posts = posts
  end

  private
    def present
      @posts.map{ |post| PostPresenter.new(post).present }
    end
end