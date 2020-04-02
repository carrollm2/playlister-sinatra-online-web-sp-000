class CreateGenres < ActiveRecord::Migration[5.2]
  def up
    create_table :genres do |t|
      t.string :name     
      t.integer :song_id
      t.integer :artist_id
    end
  end

  def down
    drop_table :genres
  end
end
