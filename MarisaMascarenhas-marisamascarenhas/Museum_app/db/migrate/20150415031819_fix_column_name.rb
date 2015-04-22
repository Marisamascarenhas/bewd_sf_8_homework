class FixColumnName < ActiveRecord::Migration
  def change
  	change_table :paintings do |t|
  		t.rename :artistid, :artist_id
  	end
  end
end
