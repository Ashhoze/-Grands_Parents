class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.text :review
      t.datetime :date_start
      t.datetime :date_end
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :grand_parent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
