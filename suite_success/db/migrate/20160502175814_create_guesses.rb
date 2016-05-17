class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :player_name
      t.boolean :correct, default: false
      t.integer :user_id
      t.integer :question_id
      t.integer :hit_challenge_id

      t.timestamps null: false
    end
  end
end
