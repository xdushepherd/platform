class AddExpertToUsers < ActiveRecord::Migration
  def change
    add_column :users, :expert, :integer,default: 0
  end
end
