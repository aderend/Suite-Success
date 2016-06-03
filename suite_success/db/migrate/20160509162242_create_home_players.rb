class CreateHomePlayers < ActiveRecord::Migration
  def change
    create_table :home_players do |t|
      t.string :name, null: false
      t.string :position, null: false
      t.string :batting_avg, null: false
      t.integer :at_bat, default: 0
      t.integer :game_id, null: false

      t.timestamps null: false
    end
  end
end
