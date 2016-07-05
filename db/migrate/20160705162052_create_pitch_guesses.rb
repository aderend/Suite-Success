class CreatePitchGuesses < ActiveRecord::Migration
  def change
    create_table :pitch_guesses do |t|
      t.integer :pitch_speed_id
      t.integer :user_id
      t.string :guess

      t.timestamps null: false
    end
  end
end
