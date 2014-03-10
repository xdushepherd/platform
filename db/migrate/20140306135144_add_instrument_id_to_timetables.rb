class AddInstrumentIdToTimetables < ActiveRecord::Migration
  def change
    add_column :timetables, :instrument_id, :integer
  end
end
