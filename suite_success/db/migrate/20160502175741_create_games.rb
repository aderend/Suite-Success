class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :over, default: false
      t.string :sport

      t.timestamps null: false
    end
  end
end
