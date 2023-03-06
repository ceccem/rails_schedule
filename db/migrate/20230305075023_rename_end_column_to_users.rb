class RenameEndColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :end, :finish
  end
end
