class AddAttrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :certification, :string
    add_column :users, :tel, :string
  end
end
