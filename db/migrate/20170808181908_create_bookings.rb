class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      #t.integer :num_booking
      t.references :flight, foreign_key: true
      t.float :total

      t.timestamps
    end
  end
end
