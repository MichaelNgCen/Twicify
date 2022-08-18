class Playlist < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :description
      t.boolean :private, null: false, default: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
    add_index :playlists, :name
    add_index :playlists, :user_id
  end
end
