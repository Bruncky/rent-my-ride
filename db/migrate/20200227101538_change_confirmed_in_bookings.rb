class ChangeConfirmedInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :confirmed, :boolean, default: false
  end
end
