class CreateSends < ActiveRecord::Migration[6.1]
  def change
    create_table :sends do |t|
      t.text :title

      t.timestamps
    end
  end
end
