class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :category_id
      t.string :img_url

      t.timestamps
    end
  end
end
