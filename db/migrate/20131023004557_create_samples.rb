class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.integer :year
      t.float :price
      t.timestamps
    end
  end
end
