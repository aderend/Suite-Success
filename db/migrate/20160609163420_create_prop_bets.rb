class CreatePropBets < ActiveRecord::Migration
  def change
    create_table :prop_bets do |t|
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
