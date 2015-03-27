class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nick_name
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps null: false
    end
  end
end
