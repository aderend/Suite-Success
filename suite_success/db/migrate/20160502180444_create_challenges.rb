class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :game_id, null: false
      t.string :type
      t.timestamps null: false
    end
  end
end
