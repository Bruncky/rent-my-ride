class ChangeEndDateToDateTime < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :end_date, :datetime
    change_column :bookings, :start_date, :datetime
  end
end
