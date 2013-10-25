class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :purchased
      t.string :zip
      t.timestamps
    end
  end
end
