class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.integer :track_number, null: false
      t.integer :duration, null: false
      t.string :album_id, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.timestamps
    end
    add_index :songs, :title
    add_index :songs, :album_id
    add_index :songs, :track_number
  end
end
