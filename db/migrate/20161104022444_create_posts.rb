class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :location
      t.string :author
      t.string :tags
      t.timestamps null: false
    end
  end
end
