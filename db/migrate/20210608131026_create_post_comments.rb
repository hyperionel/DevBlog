class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.integer  :post_id
      t.datetime :published_at
      t.text     :content

      t.timestamps
    end
  end
end
