class CreatePropBets < ActiveRecord::Migration
  def change
    create_table :prop_bets do |t|
      t.integer :game_id, null: false
      t.integer :suite_id, null: false

      t.timestamps null: false
    end
  end
end
