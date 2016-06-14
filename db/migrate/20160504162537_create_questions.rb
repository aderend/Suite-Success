class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.string :choice1, null: false
      t.string :choice2, null: false
      t.integer :prop_bet_id

      t.timestamps null: false
    end
  end
end
