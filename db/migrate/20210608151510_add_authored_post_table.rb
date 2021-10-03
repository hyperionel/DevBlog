class AddAuthoredPostTable < ActiveRecord::Migration[6.1]
  def change
    create_table :authored_posts do |t|
      t.references :post
      t.references :author
    end
  end
end
