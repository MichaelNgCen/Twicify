class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.text :blo 
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.timestamps
    end
    add_index :artists, :name
  end
end
