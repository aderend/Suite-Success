class CreateHitChallenges < ActiveRecord::Migration
  def change
    create_table :hit_challenges do |t|
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
