class ChangeDataFinishToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :finish, :date
  end
end
