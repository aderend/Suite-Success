class CreateAwayPlayers < ActiveRecord::Migration
  def change
    create_table :away_players do |t|
      t.string :name, null: false
      t.string :position, null: false
      t.integer :batting_avg
      t.integer :game_id, null: false

      t.timestamps null: false
    end
  end
end
