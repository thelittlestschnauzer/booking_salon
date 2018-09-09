class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :from_stylist_id
      t.datetime :datetime
      t.integer :duration
      t.string :title

      t.timestamps
    end
      add_index :services, [:from_stylist_id]
  end
end
