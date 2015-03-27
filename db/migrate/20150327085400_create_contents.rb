class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :path
      t.string :file_type
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
