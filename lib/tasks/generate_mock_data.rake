namespace :generate_mock_data do
  desc 'Setup some initial posts'
  task :create_fake_posts => :environment do
    Post.create(
      title:     'Blog post title 1',
      slug:      'blog-post-slug-1',
      excerpt:   'Lorem ipsum blah blah blah',
      content:   'Lorem ipsum blah blah blah Lorem ipsum blah blah blah Lorem ipsum blah blah blah',
      read_time: '5 minutes'
    )
    Post.create(
      title:     'Blog post title 2',
      slug:      'blog-post-slug-2',
      excerpt:   'Lorem ipsum blah blah blah',
      content:   'Lorem ipsum blah blah blah Lorem ipsum blah blah blah Lorem ipsum blah blah blah',
      read_time: '5 minutes' 
    )
    Post.create(
      title:     'Blog post title 2',
      slug:      'blog-post-slug-2',
      excerpt:   'Lorem ipsum blah blah blah',
      content:   'Lorem ipsum blah blah blah Lorem ipsum blah blah blah Lorem ipsum blah blah blah',
      read_time: '5 minutes', 
    )
    Post.create(
      title:     'Blog post title 2',
      slug:      'blog-post-slug-2',
      excerpt:   'Lorem ipsum blah blah blah',
      content:   'Lorem ipsum blah blah blah Lorem ipsum blah blah blah Lorem ipsum blah blah blah',
      read_time: '5 minutes'
    )
  end
end