class ChangeColumnName2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :artists, :blo, :bio 
  end
end
