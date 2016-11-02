class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :post_url
      t.string :location
      t.string :tags

      t.timestamps
    end
  end
end
