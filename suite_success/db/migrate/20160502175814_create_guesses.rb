class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :user_id
      t.integer :challenge_id

      t.timestamps null: false
    end
  end
end
