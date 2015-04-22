class CreateScrambles < ActiveRecord::Migration
  def change
    create_table :scrambles do |t|
      t.string :word
      t.string :word_scrambled

      t.timestamps
    end
  end
end
