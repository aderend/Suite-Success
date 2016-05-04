class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.integer :hit_challenge_id

      t.timestamps null: false
    end
  end
end
