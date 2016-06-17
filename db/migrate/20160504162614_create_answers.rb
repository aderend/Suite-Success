class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :choice
      t.integer :user_id
      t.integer :question_id
      t.integer :prop_bet_id

      t.timestamps null: false
    end
  end


end
