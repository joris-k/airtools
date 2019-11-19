class AddDateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :dates, :string
    remove_column :bookings, :end_date, :date
    remove_column :bookings, :start_date, :date
  end
end
