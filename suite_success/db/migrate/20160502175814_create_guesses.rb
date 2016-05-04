class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :body, null: false
      t.string :correct, default: false
      t.integer :user_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
