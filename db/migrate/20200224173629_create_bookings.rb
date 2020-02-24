class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :car, foreign_key: true
      t.boolean :confirmed, default: true

      t.timestamps
    end
  end
end
