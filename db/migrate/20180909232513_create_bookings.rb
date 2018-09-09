class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :service
      t.references :client
      t.timestamps
    end
    add_index :bookings, [:service_id, :client_id]
  end
end
