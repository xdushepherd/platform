class AddReservationIdToTimetables < ActiveRecord::Migration
  def change
    add_column :timetables, :reservation_id, :integer
  end
end
