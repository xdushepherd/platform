class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :schedule_id

      t.timestamps
    end
  end
end
