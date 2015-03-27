class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :article
      t.integer :user_id
      t.string :flags

      t.timestamps null: false
    end
  end
end
