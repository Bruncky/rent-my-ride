class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :location
      t.integer :price
      t.text :description
      t.integer :horsepower

      t.timestamps
    end
  end
end
