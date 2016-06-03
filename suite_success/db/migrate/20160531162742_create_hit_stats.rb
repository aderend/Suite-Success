class CreateHitStats < ActiveRecord::Migration
  def change
    create_table :hit_stats do |t|
      t.string :c_max_bat, null: false
      t.string :b1_max_bat, null: false
      t.string :b2_max_bat, null: false
      t.string :b3_max_bat, null: false
      t.string :ss_max_bat, null: false
      t.string :of_max_bat, null: false
      t.string :dh_max_bat, null: false
      t.string :total_hits, null: false

      t.timestamps null: false
    end
  end
end
