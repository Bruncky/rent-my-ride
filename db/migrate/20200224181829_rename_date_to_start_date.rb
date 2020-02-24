class RenameDateToStartDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :date, :start_date
  end
end
