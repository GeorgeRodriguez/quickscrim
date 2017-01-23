class CreateScrims < ActiveRecord::Migration[5.0]
  def change
    create_table :scrims do |t|

      t.timestamps
    end
  end
end
