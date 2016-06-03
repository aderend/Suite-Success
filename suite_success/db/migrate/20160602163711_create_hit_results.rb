class CreateHitResults < ActiveRecord::Migration
  def change
    create_table :hit_results do |t|

      t.timestamps null: false
    end
  end
end
