class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.time :start_time
      t.time :end_time
      t.integer :markable_id

      t.timestamps
    end
  end
end
