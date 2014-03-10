class AddInstrumentIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :instrument_id, :integer
  end
end
