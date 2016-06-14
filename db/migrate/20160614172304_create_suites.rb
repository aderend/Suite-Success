class CreateSuites < ActiveRecord::Migration
  def change
    create_table :suites do |t|
      t.integer :suite_number, null: false
      t.integer :game_id, null: false

      t.timestamps null: false
    end
  end
end
