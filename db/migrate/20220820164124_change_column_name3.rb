class ChangeColumnName3 < ActiveRecord::Migration[5.2]
  def change
    rename_column :songs, :track_number, :track_num
  end
end
