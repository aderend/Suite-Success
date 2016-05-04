class CreateHitChallenges < ActiveRecord::Migration
  def change
    create_table :hit_challenges do |t|
      t.string :position_C
      t.string :position_1B
      t.string :position_2B
      t.string :position_3B
      t.string :position_SS
      t.string :position_OF
      t.string :position_OF
      t.string :position_OF
      t.string :position_DHP

      t.timestamps null: false
    end
  end
end
