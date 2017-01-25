class CreateLandings < ActiveRecord::Migration[5.0]
  def change
    create_table :landings do |t|

      t.timestamps
    end
  end
end
