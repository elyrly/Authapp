class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :purchased
      t.integer :zip
      t.timestamps
    end
  end
end
