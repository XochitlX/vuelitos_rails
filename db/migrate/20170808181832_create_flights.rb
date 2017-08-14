class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      #t.references :booking, foreign_key: true
      t.integer :num_flight
      t.datetime :date
      #t.datetime :depart
      t.string :from
      t.string :to
      t.string :duration
      t.float :cost
      t.integer :passenger

      t.timestamps
    end
  end
end
