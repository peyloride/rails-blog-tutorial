class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :title
      t.integer :author_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
