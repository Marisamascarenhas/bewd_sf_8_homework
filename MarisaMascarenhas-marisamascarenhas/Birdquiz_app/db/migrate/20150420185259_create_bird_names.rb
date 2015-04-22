class CreateBirdNames < ActiveRecord::Migration
  def change
    create_table :bird_names do |t|
      t.text :bird_photo
      t.string :bird_name
      t.string :name1_error
      t.string :name2_error
      t.string :name3_error

      t.timestamps null: false
    end
  end
end
