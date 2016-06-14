class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :choice
      t.integer :prop_bet_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
