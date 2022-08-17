class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :Gender, :gender
    rename_column :users, :Birthday, :birthday
  end
end
