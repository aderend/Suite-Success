class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :company, null: false
      t.string :title
      t.integer :suite_num, null: false
      t.boolean :admin, default: false

      t.timestamps null: false
    end
  end
end
