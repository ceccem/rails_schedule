class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.text :name
      t.string :age
      t.text :title
      t.text :comment

      t.timestamps
    end
  end
end
