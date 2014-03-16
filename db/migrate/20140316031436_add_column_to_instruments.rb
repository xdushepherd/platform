class AddColumnToInstruments < ActiveRecord::Migration
  def change
    add_column :instruments, :producted_factory, :string
    add_column :instruments, :purchased_price,:string
    add_column :instruments, :adddress, :string
  end
end
