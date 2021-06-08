class PostPresenter < BasePresenter
  def initialize(post)
    @post = post
  end

  def img
    'stub'
  end

  def comments
    '10 comments'
  end

  def published_date
    Time.now.to_formatted_s(:short)
  end

  private
    def present
      {
        title:          @post.title
        slug:           @post.slug
        excerpt:        @post.excerpt
        content:        @post.content
        img:            self.img
        comments:       @post.comments
        read_time:      @post.read_time
        published_date: self.published_date
      }
    end
end