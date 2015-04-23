class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location_name
      t.integer :longitude
      t.integer :latitude

      t.timestamps null: false
    end
  end
end
