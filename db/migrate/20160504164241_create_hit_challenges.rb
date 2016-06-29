class CreateHitChallenges < ActiveRecord::Migration
  def change
    create_table :hit_challenges do |t|
      t.integer :game_id, null: false
      t.integer :suite_id, null: false
      t.string :title
      t.boolean :over, default: false

      t.timestamps null: false
    end
  end
end
