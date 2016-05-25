class CreateHitChallenges < ActiveRecord::Migration
  def change
    create_table :hit_challenges do |t|
      t.integer :game_id
      t.integer :inning
      t.boolean :over, default: false

      t.timestamps null: false
    end
  end
end
