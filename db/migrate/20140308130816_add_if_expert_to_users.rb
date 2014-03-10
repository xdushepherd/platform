class AddIfExpertToUsers < ActiveRecord::Migration
  def change
    add_column :users, :if_expert, :integer,default: 0
  end
end
