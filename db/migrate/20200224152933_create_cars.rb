class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :location
      t.string :attached_pics
      t.integer :price
      t.text :description
      t.integer :horsepower

      t.timestamps
    end
  end
end
