class ChangeDataWholeToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :whole, :boolean
  end
end
