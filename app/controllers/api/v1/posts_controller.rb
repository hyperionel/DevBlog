class Api::V1::PostsController < ActionController::API
  def index
    fake_data = [
      {
        img: 'src',
        title: 'Blog title',
        published_date: 'today',
        read_time: '5 min',
        comments: '10',
        excerpt: 'Lorem ipsum blah blah blah'
      },
      {
        img: 'src',
        title: 'Blog title 2',
        published_date: 'today',
        read_time: '5 min',
        comments: '10',
        excerpt: 'Lorem ipsum blah blah blah'
      },
      {
        img: 'src',
        title: 'Blog title 3',
        published_date: 'today',
        read_time: '5 min',
        comments: '10',
        excerpt: 'Lorem ipsum blah blah blah'
      },
      {
        img: 'src',
        title: 'Blog title 4',
        published_date: 'today',
        read_time: '5 min',
        comments: '10',
        excerpt: 'Lorem ipsum blah blah blah'
      }
    ]
    
    render json: fake_data
  end
end