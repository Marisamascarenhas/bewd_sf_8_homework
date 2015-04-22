class AddArtistidToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :artistid, :integer
  end
end
