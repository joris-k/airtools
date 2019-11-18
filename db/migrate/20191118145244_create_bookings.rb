class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.boolean :confirmation
      t.text :comment
      t.date :start_date
      t.date :end_date
      t.time :pickup_time
      t.references :user, foreign_key: true
      t.references :tool, foreign_key: true

      t.timestamps
    end
  end
end
