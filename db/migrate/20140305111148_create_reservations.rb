class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :ser_number
      t.float :price
      t.integer :user_id
      t.integer :status,default: 0

      t.timestamps
    end
  end
end
