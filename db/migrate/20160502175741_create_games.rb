class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :home, null: false
      t.string :away, null: false
      t.boolean :active, default: true
      t.integer :total_hits, default: 0
      t.string :sport

      t.timestamps null: false
    end
  end
end
