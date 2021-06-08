class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer   :author_id
      t.string    :title
      t.string    :slug
      t.string    :excerpt
      t.timestamp :published_at
      t.text      :content
      t.string    :read_time

      t.timestamps
    end
  end
end
