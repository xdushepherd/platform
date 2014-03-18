class AddColumnToTimetables < ActiveRecord::Migration
  def change
  	add_column :timetables, :day, :datetime
  	add_column :timetables, :t11, :integer
  	add_column :timetables, :t12, :integer
  	add_column :timetables, :t13, :integer
  	add_column :timetables, :t14, :integer
  	add_column :timetables, :t15, :integer
  	add_column :timetables, :t16, :integer
  	add_column :timetables, :t17, :integer
  	add_column :timetables, :t18, :integer
  	add_column :timetables, :t19, :integer
  	add_column :timetables, :t20, :integer
  	add_column :timetables, :t21, :integer
  	add_column :timetables, :t22, :integer
   	add_column :timetables, :t23, :integer
  	add_column :timetables, :t24, :integer
  end
end
