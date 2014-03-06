class AddAtrrToInstruments < ActiveRecord::Migration
  def change
    add_column :instruments, :unit_belongs_to, :string
    add_column :instruments, :date_producted, :datetime
    add_column :instruments, :date_purchased, :datetime
    add_column :instruments, :brand, :string
    add_column :instruments, :type_belongs_to, :string
    add_column :instruments, :price_once, :integer    
  end
end
