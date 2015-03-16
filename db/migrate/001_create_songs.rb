class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id, :genre_id
    end
  end
end
