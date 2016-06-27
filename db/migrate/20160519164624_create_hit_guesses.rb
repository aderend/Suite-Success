class CreateHitGuesses < ActiveRecord::Migration
  def change
    create_table :hit_guesses do |t|
      t.string :pos_c
      t.string :pos_1b
      t.string :pos_2b
      t.string :pos_3b
      t.string :pos_ss
      t.string :pos_lf
      t.string :pos_rf
      t.string :pos_cf
      t.string :pos_dh
      t.integer :total_hits
      t.integer :hit_challenge_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
