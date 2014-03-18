class AddMarkbaleTypeToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :markable_type, :string
  end
end
