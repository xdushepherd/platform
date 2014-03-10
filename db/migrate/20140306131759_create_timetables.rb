class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.integer :t1
      t.integer :t2
      t.integer :t3
      t.integer :t4
      t.integer :t5
      t.integer :t6
      t.integer :t7
      t.integer :t8
      t.integer :t9
      t.integer :t10

      t.timestamps
    end
  end
end
