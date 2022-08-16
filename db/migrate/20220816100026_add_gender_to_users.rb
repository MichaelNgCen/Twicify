class AddGenderToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Gender, :string,  null: false
    add_column :users, :Birthday, :date, null: false
  end
end
