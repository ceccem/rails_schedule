class CreateRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :registers do |t|
      t.text :title
      t.date :start
      t.date :finish
      t.boolean :whole
      t.text :memo

      t.timestamps
    end
  end
end
