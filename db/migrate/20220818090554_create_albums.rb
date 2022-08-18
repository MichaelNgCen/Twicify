class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.integer :year, null: false
      t.string :artist_id, null: false
      t.boolean :single, null: false
      t.string :genre, null: false
      t.integer :duration, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false

      t.timestamps
    end
    add_index :albums, :title
    add_index :albums, :artist_id
  end
end
