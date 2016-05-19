class CreateHitGuesses < ActiveRecord::Migration
  def change
    create_table :hit_guesses do |t|
      t.string :pos_c
      t.string :pos_1b
      t.string :pos_2b
      t.string :pos_3b
      t.string :pos_ss
      t.string :pos_of1
      t.string :pos_of2
      t.string :pos_of3
      t.string :pos_dh
      t.string :total_hits

      t.timestamps null: false
    end
  end
end
