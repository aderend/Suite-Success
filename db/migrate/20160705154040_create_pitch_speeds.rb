class CreatePitchSpeeds < ActiveRecord::Migration
  def change
    create_table :pitch_speeds do |t|
      t.integer :game_id
      t.integer :suite_id
      t.string :title, null: false
      t.string :min_speed, null: false
      t.string :max_speed, null: false

      t.timestamps null: false
    end
  end
end
