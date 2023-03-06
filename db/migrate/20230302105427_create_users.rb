class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :title
      t.text :start
      t.text :end
      t.integer :whole
      t.text :memo

      t.timestamps
    end
  end
end
